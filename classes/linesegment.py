from sympy import Plane, Line3D, Point3D

from utils import povray_array


class Linesegment:

    def __init__(self, vertices):

        self.vertices = sorted(vertices)

    def __str__(self):
        return "L_" + str(self.vertices)

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

    def __hash__(self):
        return hash(str(self.__dict__))

    def normal_point(self):
        """intersection of the perpendicular line through the origin with the edge
        (cases where the normal point is not within the edge are not considered)"""
        origin = Point3D(0, 0, 0)
        vertices = list(self.vertices)
        p1 = Point3D(vertices[0].coordinate_tuple)
        p2 = Point3D(vertices[1].coordinate_tuple)
        edge_line = Line3D(p1, p2)
        normal_line = edge_line.perpendicular_line(Point3D(0, 0, 0))
        sect = edge_line.intersection(normal_line)[0]
        return tuple(sect)

    def contains_vertex(self, point):
        for vertex in self.vertices:
            if vertex == point:
                return True
        return False
    
    def povray_cylinder(self):
        [i, j] = [point.index() for point in self.vertices]
        return "cylinder{{P[{i}],P[{j}],RadEdge}}".format(i=i, j=j)

    def povray_array_of_vertices(self):
        [i, j] = [point.index() for point in self.vertices]
        return povray_array([i, j])
