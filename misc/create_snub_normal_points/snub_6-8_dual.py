import sys
sys.path.append("../..")

from classes import Polyhedron, Polygon, Point


c0 = 0.218796643000480441021525033712
c1 = 0.740183741369857222808508165943
c2 = 1.02365617811269018236347687527
c3 = 1.36141015192644253450100912043


coordinate_tuples = [
    (0, 0, -c3),
    (0, 0,  c3),
    (-c3, 0, 0),
    (c3, 0, 0),
    (0, -c3, 0),
    (0,  c3, 0),
    (-c1,  c0, -c2),
    (-c1, -c0,  c2),
    (c1, -c0, -c2),
    (c1,  c0,  c2),
    (-c2,  c1, -c0),
    (-c2, -c1,  c0),
    (c2, -c1, -c0),
    (c2,  c1,  c0),
    (-c0,  c2, -c1),
    (-c0, -c2,  c1),
    (c0, -c2, -c1),
    (c0,  c2,  c1),
    (-c0, -c1, -c2),
    (-c0,  c1,  c2),
    (c0,  c1, -c2),
    (c0, -c1,  c2),
    (-c2, -c0, -c1),
    (-c2,  c0,  c1),
    (c2,  c0, -c1),
    (c2, -c0,  c1),
    (-c1, -c2, -c0),
    (-c1,  c2,  c0),
    (c1,  c2, -c0),
    (c1, -c2,  c0),
    (-c1, -c1, -c1),
    (-c1, -c1,  c1),
    (-c1,  c1, -c1),
    (-c1,  c1,  c1),
    (c1, -c1, -c1),
    (c1, -c1,  c1),
    (c1,  c1, -c1),
    (c1,  c1,  c1)
]


faces_raw = [
    (0, 18, 30, 22,  6),
    (0,  8, 34, 16, 18),
    (0, 20, 36, 24,  8),
    (0,  6, 32, 14, 20),
    (1, 19, 33, 23,  7),
    (1,  9, 37, 17, 19),
    (1, 21, 35, 25,  9),
    (1,  7, 31, 15, 21),
    (2, 23, 33, 27, 10),
    (2, 11, 31,  7, 23),
    (2, 22, 30, 26, 11),
    (2, 10, 32,  6, 22),
    (3, 25, 35, 29, 12),
    (3, 13, 37,  9, 25),
    (3, 24, 36, 28, 13),
    (3, 12, 34,  8, 24),
    (4, 29, 35, 21, 15),
    (4, 16, 34, 12, 29),
    (4, 26, 30, 18, 16),
    (4, 15, 31, 11, 26),
    (5, 28, 36, 20, 14),
    (5, 17, 37, 13, 28),
    (5, 27, 33, 19, 17),
    (5, 14, 32, 10, 27)
]

vertices = []
for coordinate_tuple in coordinate_tuples:
    vertex = Point(coordinate_tuples, coordinate_tuple)
    vertices.append(vertex)

faces = []
for face_raw in faces_raw:
    vertices_in_correct_order = []
    for vertex_index in face_raw:
        vertex = Point(coordinate_tuples, coordinate_tuples[vertex_index])
        vertices_in_correct_order.append(vertex)
        face = Polygon(vertices_in_correct_order=vertices_in_correct_order)
    faces.append(face)

vertices_and_faces = {
    'coordinate_tuples': coordinate_tuples,
    'vertices': vertices,
    'faces': faces
}

polyhedron = Polyhedron(vertices_and_faces=vertices_and_faces)

print(polyhedron.povray_arrays())

print('###########################################################')

normal_points_dict = polyhedron._face_normal_points()
normal_points = [tuple(normal_points_dict[face]) for face in polyhedron.faces]

print(normal_points)

