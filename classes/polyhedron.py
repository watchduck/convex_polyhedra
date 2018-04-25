from .polygon import Polygon
from .linesegment import Linesegment
from .point import Point

from utils import pairs_to_sequences, sign, povray_array, vectors_have_same_direction
import string  # to get `.capitalize()`

from scipy.spatial import ConvexHull
from sympy import Point3D, Plane


class Polyhedron:
    """
    Standard instantiation for a convex polyhedron is simply with the list of vertex coordinates:
        Polyhedron(coordinate_tuples=[(-1, -1, -1), (-1, 1, 1), (1, -1, 1), (1, 1, -1)])

    When the desired polyhedron can not be trusted to be simply the convex hull of its vertices,
    the class can be instantiated with `vertices_and_faces`, a dictionary containing prepared faces.

    `_coordinate_tuples` is the list of tuples usually used to instantiate the class.
    It is in the same order as `vertices`, so the index of a vertex can be used for both lists.
    It is passed to every instance of Point (otherwise instantiated with the coordinate triple),
    so Point can return the index number of the vertex.

    `vertices` is a list of Point objects.
    `edges` is a list of Linesegment objects.
    `faces` is a list of Polygon objects.

    `_abs_values` is an ordered list of the absolute values in the coordinates.
    In the Povray functions this is used to get efficient definitions of the points,
    referencing a Povray list of absolute values. So potentially complicated formulas appear only
    once in the Povray code - and have to be manually corrected only once, where Povray syntax
    differs from Python syntax (mainly `x**2` vs `pow(x, 2)`).

    Whether and how the polyhedron is degenerate (i.e. a single face or edge) is expressed in
    `degeneracy` as a string. `sympy.ConvexHull` can not handle collinear points, so a random
    dummy point is added and later removed. This does not always work.

    `characteristics()` gives the number of faces, edges and vertices.
    """

    def __init__(self, **kwargs):

        self.degeneracy = 'none'

        if 'coordinate_tuples' in kwargs:

            # is in same order as `self.vertices`
            self._coordinate_tuples = sorted(kwargs['coordinate_tuples'])

            # DEGENERATE?

            if len(self._coordinate_tuples) > 3:
                if Point3D.are_coplanar(*self._coordinate_tuples):
                    dummy_val = 5  # did not always work with some other values (e.g. 4)
                    dummy_tuple = (dummy_val, -dummy_val, dummy_val)
                    vertices_and_dummy = self._coordinate_tuples[:] + [dummy_tuple]
                    self._coordinate_tuples = sorted(vertices_and_dummy)
                    dummy_point = Point(self._coordinate_tuples, dummy_tuple)
                    self.degeneracy = 'solid thanks to added dummy point'
            elif len(self._coordinate_tuples) == 3:
                self.degeneracy = 'triangle'
            else:
                self.degeneracy = 'edge only'

            # ABSOLUTE VALUES

            self._calculate_abs_values()

            # VERTICES

            vertices = []  # is in same order as `self._coordinate_tuples`
            for coordinate_tuple in self._coordinate_tuples:
                vertices.append(Point(self._coordinate_tuples, coordinate_tuple))
            self.vertices = vertices

            # FACES

            if self.degeneracy == 'triangle':

                face = Polygon(vertices_in_correct_order=self.vertices)
                self.faces = [face]

            elif self.degeneracy == 'edge only':

                self.faces = []

            else:

                hull = ConvexHull(self._coordinate_tuples)
                triangles = []  # triangular faces of the convex hull as Face objects
                for triple_of_vertex_indices in hull.simplices:
                    triple_of_vertices = []
                    for vertex_index in triple_of_vertex_indices:
                        triple_of_vertices.append(self.vertices[vertex_index])
                    triangles.append(
                        Polygon(
                            vertices_in_correct_order=triple_of_vertices
                        )
                    )

                # find pairs of adjacent coplanar triangles (act),
                # i.e. pairs of triangles that share an edge and belong to the same polyhedron face

                faces = []
                pairs_of_act = set()  # frozensets containing two indices of `triangles`

                for index1, triangle1 in enumerate(triangles):
                    coplanar_triangles_found = False
                    for index2, triangle2 in enumerate(triangles):
                        # if the triangles are not the same one
                        if index2 != index1:
                            # if the triangles have an edge in common
                            if len(set.intersection(triangle1.edges, triangle2.edges)) == 1:
                                vertices_of_both_triangles = list(set.union(
                                    triangle1.vertices,
                                    triangle2.vertices
                                ))
                                triangles_are_coplanar = Point3D.are_coplanar(
                                    vertices_of_both_triangles[0].coordinate_tuple,
                                    vertices_of_both_triangles[1].coordinate_tuple,
                                    vertices_of_both_triangles[2].coordinate_tuple,
                                    vertices_of_both_triangles[3].coordinate_tuple
                                )
                                if triangles_are_coplanar:
                                    coplanar_triangles_found = True
                                    pairs_of_act.add(
                                        frozenset([index1, index2])
                                    )
                    if not coplanar_triangles_found:
                        faces.append(triangle1)  # the triangle is a complete face of the polyhedron

                # create separate lists
                # of triangles that belong to the same face
                # in order of adjacency

                # lists of indices of `triangles`
                sequences_of_act = pairs_to_sequences(pairs_of_act)

                # merge coplanar triangles and add the resulting Face objects of `faces`

                for sequence_of_act in sequences_of_act:
                    face = Polygon()
                    for triangle_index in sequence_of_act:
                        triangle = triangles[triangle_index]
                        face = Polygon(old1=face, old2=triangle)
                    faces.append(face)

                self.faces = faces

        elif 'vertices_and_faces' in kwargs:

            vertices_and_faces = kwargs['vertices_and_faces']

            self._coordinate_tuples = vertices_and_faces['coordinate_tuples']
            self.vertices           = vertices_and_faces['vertices']
            self.faces              = vertices_and_faces['faces']

            self._calculate_abs_values()

        # EDGES

        if not self.degeneracy == 'edge only':

            edges = set()
            for face in self.faces:
                edges = set.union(edges, face.edges)
            self.edges = list(edges)

        else:

            self.edges = [Linesegment(self.vertices)]

        # REMOVE DUMMY POINT if necessary

        if self.degeneracy == 'solid thanks to added dummy point':

            new_vertices = []
            for vertex in self.vertices:
                if not vertex == dummy_point:
                    new_vertices.append(vertex)
            self.vertices = new_vertices

            new_edges = []
            for edge in self.edges:
                if not edge.contains_vertex(dummy_point):
                    new_edges.append(edge)
            self.edges = new_edges

            new_faces = []
            for face in self.faces:
                if not face.contains_vertex(dummy_point):
                    new_faces.append(face)
            self.faces = new_faces

            self._abs_values.remove(dummy_val)
            self._coordinate_tuples.remove(dummy_tuple)

        # ASSIGN COLORS TO ELEMENTS

        if 'direction_colors' in kwargs:

            edge_normal_points = {}
            for edge in self.edges:
                edge_normal_points[str(edge)] = edge.normal_point()

            face_normal_points = {}
            for face in self.faces:
                face_normal_points[str(face)] = face.normal_point()

            direction_colors = kwargs['direction_colors']

            for (color, test_coordinate_tuples) in direction_colors.items():

                for test_coordinate_tuple in test_coordinate_tuples:

                    for vertex in self.vertices:
                        if vectors_have_same_direction(vertex.coordinate_tuple, test_coordinate_tuple):
                            vertex.color = color
                    for edge in self.edges:
                        if vectors_have_same_direction(edge_normal_points[str(edge)], test_coordinate_tuple):
                            edge.color = color
                    for face in self.faces:
                        if vectors_have_same_direction(face_normal_points[str(face)], test_coordinate_tuple):
                            face.color = color

        self.vertex_colors = set()
        for vertex in self.vertices:
            if hasattr(vertex, 'color'):
                self.vertex_colors.add(vertex.color.capitalize())
            else:
                vertex.color = None
                self.vertex_colors.add('Uncolored')

        self.edge_colors = set()
        for edge in self.edges:
            if hasattr(edge, 'color'):
                self.edge_colors.add(edge.color.capitalize())
            else:
                edge.color = None
                self.edge_colors.add('Uncolored')

        self.face_colors = set()
        for face in self.faces:
            if hasattr(face, 'color'):
                self.face_colors.add(face.color.capitalize())
            else:
                face.color = None
                self.face_colors.add('Uncolored')

        # END OF INIT

    def _calculate_abs_values(self):
        abs_values = set()
        for (x, y, z) in self._coordinate_tuples:
            abs_values.add(abs(x))
            abs_values.add(abs(y))
            abs_values.add(abs(z))
        self._abs_values = sorted(abs_values)

    def _face_normal_points(self):
        face_normal_points = {}
        for face in self.faces:
            face_normal_points[face] = face.normal_point()
        return face_normal_points

    def _face_apices(self):
        """intersection point of the planes perpendicular to the vertices around the face,
        here called the apex of the face"""
        face_apices = {}
        for face in self.faces:
            vertices_of_face = []
            for vertex in self.vertices:
                if face.contains_vertex(vertex):
                    vertices_of_face.append(vertex)
            planes = []
            for vertex in vertices_of_face:
                planes.append(
                    Plane(vertex.coordinate_tuple, normal_vector=vertex.coordinate_tuple)
                )
            sect = planes[0]  # `sect` should be a Point3D object in the end
            for i in range(1, len(planes)):
                plane = planes[i]
                list_containing_sect = sect.intersection(plane)
                if len(list_containing_sect) != 1:
                    print('Error: Intersection not unique: ' + str(list_containing_sect))
                sect = list_containing_sect[0]
            apex = list(sect)
            face_apices[face] = apex
        return face_apices

    def pseudo_dual(self, mode):

        if mode == 'normal':
            dual_coordinate_dict = self._face_normal_points()
        elif mode == 'apex':
            dual_coordinate_dict = self._face_apices()

        dual_coordinate_tuples = [v for v in dual_coordinate_dict.values()]

        dual_vertices = []
        for dual_coordinate_tuple in dual_coordinate_tuples:
            dual_vertices.append(Point(dual_coordinate_tuples, dual_coordinate_tuple))

        dual_faces = []
        for vertex in self.vertices:
            edges_around_vertex = []
            for edge in self.edges:
                if edge.contains_vertex(vertex):
                    edges_around_vertex.append(edge)
            pairs_of_adjacent_faces_around_vertex = []
            for edge in edges_around_vertex:
                pair_of_adjacent_faces = []
                for face in self.faces:
                    if face.contains_edge(edge):
                        pair_of_adjacent_faces.append(face)
                pairs_of_adjacent_faces_around_vertex.append(pair_of_adjacent_faces)
            sequence_of_faces_around_vertex \
                = pairs_to_sequences(pairs_of_adjacent_faces_around_vertex)[0]
            sequence_of_dual_face_vertices = []
            for face in sequence_of_faces_around_vertex:
                sequence_of_dual_face_vertices.append(
                    Point(dual_coordinate_tuples, dual_coordinate_dict[face])
                )
            dual_face = Polygon(vertices_in_correct_order=sequence_of_dual_face_vertices)
            dual_faces.append(dual_face)

        vertices_and_faces = {
            'coordinate_tuples': dual_coordinate_tuples,
            'vertices': dual_vertices,
            'faces': dual_faces
        }

        return Polyhedron(vertices_and_faces=vertices_and_faces)

    def characteristics(self):
        s = 'Faces: ' + str(len(self.faces)) + '\n'
        s += 'Edges: ' + str(len(self.edges)) + '\n'
        s += 'Vertices: ' + str(len(self.vertices)) + '\n'
        return s

    def povray_array_abs(self):
        s = "#declare Abs = array[{n}]{{ ".format(n=len(self._abs_values))
        for abs_value in self._abs_values:
            s += "({a})*Factor, ".format(a=str(abs_value))
        s = s[:-1]  # remove trailing comma
        s += " }\n"
        return s

    def povray_array_P(self):
        s = "#declare P = array[{n}]{{ ".format(n=len(self._coordinate_tuples))
        for coordinate_tuple in self._coordinate_tuples:
            ts = "<"
            for c in coordinate_tuple:
                c_abs_index = self._abs_values.index(abs(c))
                if sign(c) == -1:
                    ts += "-"
                ts += "Abs[{i}],".format(i=c_abs_index)
            ts = ts[:-1] + ">, "
            s += ts
        s = s[:-1] + " }\n\n"
        return s

    def povray_array_vertices(self, color=None):
        povray_arrays = []
        for vertex in self.vertices:
            if vertex.color == color:
                povray_arrays.append(vertex.index())
        povray_color_name = color.capitalize() if color else 'Uncolored'
        s = '#declare {color}Vertices = '.format(color=povray_color_name)
        s += povray_array(povray_arrays) + ';\n\n'
        if len(povray_arrays) > 0:
            return s
        else:
            return ''

    def povray_array_edges(self, color=None):
        povray_arrays = []
        for edge in self.edges:
            if edge.color == color:
                povray_arrays.append(edge.povray_array_of_vertices())
        povray_color_name = color.capitalize() if color else 'Uncolored'
        s = '#declare {color}Edges = '.format(color=povray_color_name)
        s += povray_array(povray_arrays) + ';\n\n'
        if len(povray_arrays) > 0:
            return s
        else:
            return ''

    def povray_array_faces(self, color=None):
        povray_arrays = []
        for face in self.faces:
            if face.color == color:
                povray_arrays.append(face.povray_array_of_vertices())
        povray_color_name = color.capitalize() if color else 'Uncolored'
        s = '#declare {color}Faces = '.format(color=povray_color_name)
        s += povray_array(povray_arrays) + ';\n\n'
        if len(povray_arrays) > 0:
            return s
        else:
            return ''

    def povray_arrays(self, factor=1):
        s = '#declare Factor = {v};\n'.format(v=factor)
        s += self.povray_array_abs()
        s += self.povray_array_P()
        s += self.povray_array_vertices('red')
        s += self.povray_array_vertices('yellow')
        s += self.povray_array_vertices('blue')
        s += self.povray_array_vertices('lightbrown')
        s += self.povray_array_vertices('darkbrown')
        s += self.povray_array_vertices()
        s += self.povray_array_edges('red')
        s += self.povray_array_edges('yellow')
        s += self.povray_array_edges('blue')
        s += self.povray_array_edges()
        s += self.povray_array_faces('red')
        s += self.povray_array_faces('yellow')
        s += self.povray_array_faces('blue')
        s += self.povray_array_faces('lightbrown')
        s += self.povray_array_faces('darkbrown')
        s += self.povray_array_faces()
        return s

    def povray_davinci(self, face_offset, edge_offset):
        face_normal_points_dict = self._face_normal_points()
        face_normal_points = [face_normal_points_dict[face] for face in self.faces]
        povray_face_normal_points = povray_array(
            ['<{x}, {y}, {z}>*Factor'.format(x=x, y=y, z=z) for (x, y, z) in face_normal_points]
        )
        s = '#declare FaceOffset = {v};\n'.format(v=face_offset)
        s += '#declare EdgeOffset = {v};\n'.format(v=edge_offset)
        s += '#declare PrismThickness = FaceOffset*2 + .1;\n'
        s += '#declare FaceNormalPoints = {v};\n'.format(v=povray_face_normal_points)
        s += '#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)\n'
        s += '#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)\n'
        s += '#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }\n'
        list_of_povray_face_arrays = [face.povray_array_of_vertices_P() for face in self.faces]
        povray_array_of_face_arrays = povray_array(list_of_povray_face_arrays)
        s += '#declare Faces = ' + povray_array_of_face_arrays + ';\n'
        s += '#declare PrismUnion = union{\n'
        s += '    #for(Index, 0, dimension_size(Faces, 1)-1)\n'
        s += '        SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)\n'
        s += '    #end\n'
        s += '}\n'
        s += '#declare Davinci = difference{ object{Hollow} object{PrismUnion} }\n'
        return s

    def povray_solid(self):
        face_normal_points = [v for v in self._face_normal_points().values()]
        povray_face_normal_points = povray_array(
            ['<{x}, {y}, {z}>*Factor'.format(x=x, y=y, z=z) for (x, y, z) in face_normal_points]
        )
        s = '#declare FaceNormalPoints = {v};\n'.format(v=povray_face_normal_points)
        s += '#declare Solid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)\n'
        return s
