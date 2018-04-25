from sympy import Plane, Line3D, Point3D

from .linesegment import Linesegment

from utils import pairs_to_sequences, povray_array


class Polygon:

    """
    Standard instanciation is with kwarg `vertices_in_correct_order`,
    a list of set containing Point objects.

    A different way is with kwargs `old1` and `old2`, both Polygon objects with one shared edge,
    giving the merged polygon (with the shared edge removed).

    `Point()` is a way to make a dummy object,
    which can be used as initial object in a series of face merges (usually in a for loop).

    `vertices` is a set of Point objects.
    `edges` is a set of Linesegment objects.

    `_vertices_in_correct_order` does not exist in a Polygon created by merging.
    The method `vertices_in_correct_order()` should be used instead.
    """

    def __init__(self, **kwargs):

        self._vertices_in_correct_order = None

        if 'vertices_in_correct_order' in kwargs:

            self._vertices_in_correct_order = kwargs['vertices_in_correct_order']

            self.vertices = set(self._vertices_in_correct_order)

            edges = []
            for i, vertex in enumerate(self._vertices_in_correct_order):
                if i < len(self.vertices) - 1:
                    next_vertex = self._vertices_in_correct_order[i + 1]
                else:
                    next_vertex = self._vertices_in_correct_order[0]
                edge = Linesegment([vertex, next_vertex])
                edges.append(edge)
            self.edges = set(edges)

        elif 'old1' in kwargs and 'old2' in kwargs:

            old1 = kwargs['old1']
            old2 = kwargs['old2']

            dummy1 = not old1.vertices
            dummy2 = not old2.vertices
            if dummy1 or dummy2:
                if dummy1 and dummy2:
                    self.vertices = set()
                    self.edges = set()
                elif dummy1 and not dummy2:
                    self.vertices = old2.vertices
                    self.edges = old2.edges
                elif not dummy1 and dummy2:
                    self.vertices = old1.vertices
                    self.edges = old1.edges
            else:

                self.vertices = set.union(old1.vertices, old2.vertices)

                set_of_shared_edges = set.intersection(old1.edges, old2.edges)
                if len(set_of_shared_edges) != 1:
                    print('Error: Shared edge is not unique. `set_of_shared_edges` is: '
                          + str(set_of_shared_edges))
                else:
                    self.edges = set.union(old1.edges, old2.edges).difference(set_of_shared_edges)

        else:  # dummy

            self.vertices = set()
            self.edges = set()

    def __str__(self):
        return "Polygon" + str(sorted(self.vertices))

    def __repr__(self):
        return self.__str__()

    def __eq__(self, other):
        self_dict = dict(self.__dict__)
        if 'color' in self_dict.keys():
            del self_dict['color']
        other_dict = dict(other.__dict__)
        if 'color' in other_dict.keys():
            del other_dict['color']
        return self_dict == other_dict

    def __lt__(self, other):
        list_of_sorted_lists = [
            sorted(self.vertices),
            sorted(other.vertices)
        ]
        return list_of_sorted_lists == sorted(list_of_sorted_lists)

    def __hash__(self):
        return hash(str(self.__dict__))

    def contains_edge(self, linesegment):
        for edge in self.edges:
            if edge == linesegment:
                return True
        return False

    def contains_vertex(self, point):
        for vertex in self.vertices:
            if vertex == point:
                return True
        return False

    def vertices_in_correct_order(self):
        if self._vertices_in_correct_order:
            return self._vertices_in_correct_order
        list_in_list = pairs_to_sequences(
            [edge.vertices for edge in self.edges]
        )
        return list_in_list[0]

    def normal_point(self):
        """intersection of the normal vector with the plane"""
        origin = Point3D(0, 0, 0)
        vertices = list(self.vertices)
        p0 = vertices[0].coordinate_tuple
        p1 = vertices[1].coordinate_tuple
        p2 = vertices[2].coordinate_tuple
        plane = Plane(p0, p1, p2)
        normal_line = Line3D(origin, plane.normal_vector)
        return plane.intersection(normal_line)[0]

    def povray_polygon(self):
        """
        for `vertex_indices` [2, 13, 0, 2]
        this returns a povray polygon, e.g. the following triangle
        polygon { 4,
            P[2], P[13], P[0], P[2]
        }
        """
        vertex_indices = [vertex.index() for vertex in self.vertices_in_correct_order()]
        vertex_indices.append(vertex_indices[0])  # close the circle
        n = len(vertex_indices)
        s = 'polygon{' + '{n}, '.format(n=n)
        for i in vertex_indices:
            s += 'P[{i}],'.format(i=i)
        s = s[:-1]  # remove trailing comma
        s += '}'
        return s

    def povray_array_of_vertices(self):  # array containing numbers
        vertex_indices = [vertex.index() for vertex in self.vertices_in_correct_order()]
        vertex_indices.append(vertex_indices[0])  # close the circle
        return povray_array(vertex_indices)

    def povray_array_of_vertices_P(self):  # array containing points ('P[123]')
        vertex_indices = ['P[{i}]'.format(i=vertex.index()) for vertex in self.vertices_in_correct_order()]
        vertex_indices.append(vertex_indices[0])  # close the circle
        return povray_array(vertex_indices)

    def povray_prism(self):
        vertex_indices = [vertex.index() for vertex in self.vertices_in_correct_order()]
        vertex_indices.append(vertex_indices[0])  # close the circle
        array_str = povray_array(['P[{i}]'.format(i=i) for i in vertex_indices])
        s = 'SolidPrismFromVerticesOfPolygon({points}, EdgeOffset, PrismThickness)' \
            .format(points=array_str)
        return s
