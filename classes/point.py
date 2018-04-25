class Point:

    def __init__(self, coordinate_tuples, coordinate_tuple):

        self._coordinate_tuples = coordinate_tuples
        self.coordinate_tuple = coordinate_tuple

    def __str__(self):
        return "P_" + str(self._coordinate_tuples.index(self.coordinate_tuple))

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
        return tuple(self.coordinate_tuple) < tuple(other.coordinate_tuple)

    def __hash__(self):
        return hash(str(self.__dict__))

    def index(self):
        return self._coordinate_tuples.index(self.coordinate_tuple)

    def povray_sphere(self):
        return "sphere{{P[{i}],RadVert}}".format(i=self.index())

