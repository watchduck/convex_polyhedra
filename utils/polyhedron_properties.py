from itertools import permutations, product
from sympy import sqrt
from utils import rotate_90z


def perm_constraint(coordinates, neutral_triple, constraint):
    """reduce the list of coordinates to even or odd permutations"""
    [a, b, c] = neutral_triple
    if constraint in ['even', 'circular']:  # circular is the same as even for three elements
        allowed = [[a, b, c], [c, a, b], [b, c, a]]
    elif constraint == 'odd':
        allowed = [[b, a, c], [a, c, b], [c, b, a]]
    new_coordinates = []
    for triple in coordinates:
        test_triple = []
        for val in triple:
            for abc in [a, b, c]:
                if abs(val) == abs(abc):
                    test_triple.append(abc)
        if test_triple in allowed:
            new_coordinates.append(triple)
    return new_coordinates


def with_sign_parity(coordinates, parity):
    """takes the list `coordinates` and returns its elements
    where the number of plus signs has the specified parity (0 for even, 1 for odd)"""
    new_coordinates = []
    for triple in coordinates:
        number_of_plus_signs = 0
        for val in triple:
            if val > 0:
                number_of_plus_signs += 1
        if number_of_plus_signs % 2 == parity:
            new_coordinates.append(triple)
    return new_coordinates


# permutations of the places and variations of signs

def ps_00a(a):  # 6
    coordinate_triples = []
    for coordinate in [a, -a]:
        for i in range(3):
            coordinate_triple = [0, 0]
            coordinate_triple.insert(i, coordinate)
            coordinate_triples.append(coordinate_triple)
    return coordinate_triples


def ps_0aa(a):  # 12
    coordinate_pairs = []
    signs_iter = product([1, -1], repeat=2)
    signs_pairs = [s for s in signs_iter]
    for signs_pair in signs_pairs:
        coordinate_pairs.append(
            [s * a for s in signs_pair]
        )
    coordinate_triples = []
    for coordinate_pair in coordinate_pairs:
        for i in range(3):
            coordinate_triple = coordinate_pair[:]
            coordinate_triple.insert(i, 0)
            coordinate_triples.append(coordinate_triple)
    return coordinate_triples


def ps_0ab(a, b, constraint=''):  # 24 with no constraints
    coordinate_pairs = []
    signs_iter = product([1, -1], repeat=2)
    signs_pairs = [s for s in signs_iter]

    for signs_tuple in signs_pairs:
        for abs_pair in [(a, b), (b, a)]:
            coordinate_pairs.append(
                [s * a for (s, a) in zip(signs_tuple, abs_pair)]
            )

    coordinate_triples = []
    for coordinate_pair in coordinate_pairs:
        for i in range(3):
            coordinate_triple = coordinate_pair[:]
            coordinate_triple.insert(i, 0)
            coordinate_triples.append(coordinate_triple)

    if constraint:
        return perm_constraint(coordinate_triples, (0, a, b), constraint)
    else:
        return coordinate_triples


def ps_aaa(a):  # 8
    coordinate_triples = []
    signs_iter = product([1, -1], repeat=3)
    signs_triples = [s for s in signs_iter]
    for signs_triple in signs_triples:
        coordinate_triples.append(
            [s * a for s in signs_triple]
        )
    return coordinate_triples


def ps_aab(a, b):  # 24
    abs_perms = [(a, a, b), (a, b, a), (b, a, a)]

    signs_iter = product([1, -1], repeat=3)
    signs_triples = [s for s in signs_iter]

    coordinate_triples = []
    for abs_perm in abs_perms:
        for signs_triple in signs_triples:
            coordinate_triples.append(
                [s * a for (s, a) in zip(signs_triple, abs_perm)]
            )
    return coordinate_triples


def ps_abc(a, b, c, constraint=''):  # 48 with no constraints

    abs_perms = permutations([a, b, c])
    signs_iter = product([1, -1], repeat=3)
    signs_triples = [s for s in signs_iter]

    coordinate_triples = []
    for abs_perm in abs_perms:
        for signs_triple in signs_triples:
            coordinate_triples.append(
                [s * a for (s, a) in zip(signs_triple, abs_perm)]
            )
    if constraint:
        return perm_constraint(coordinate_triples, (a, b, c), constraint)
    else:
        return coordinate_triples


def polyhedron_properties(name):
    """
    Platonic, Archimedean and Catalan solids. (And a few special forms.)

    `edgelen` is relative to the given coordinates.
    `inrad`, `midrad` and `circrad` are relative to edge length 1.

    `bluerad` is the radius of the sphere that touches the polyhedron with edge length 1
    in the 6, 12 or 30 points corresponding to the edges of the related Platonic solid.
    It is usually `midrad`, but `circrad` for '6-8' and '12-20',
    and the square center radius for the small and great 'rhombi'.

    The coordinates of the Catalan solids come from this page:
    http://dmccooey.com/polyhedra/Catalan.html
    """

    phi = (1 + sqrt(5)) / 2

    # these variables are not always needed
    [coordinates, edgelen, inrad, midrad, circrad, bluerad, related_platonic, family] = 8*[None]

    # PLATONIC

    if name == '4b':
        coordinates = with_sign_parity(ps_aaa(1), 1)

        edgelen = 2 * sqrt(2)
        inrad = sqrt(6) / 12
        midrad = sqrt(2) / 4
        circrad = sqrt(6)
        bluerad = midrad
        family = 'platonic'
        related_platonic = '4'

    elif name == '4a':
        coordinates = with_sign_parity(ps_aaa(1), 0)

        edgelen = 2 * sqrt(2)
        inrad = sqrt(6) / 12
        midrad = sqrt(2) / 4
        circrad =  sqrt(6) / 4
        bluerad = midrad
        family = 'platonic'
        related_platonic = '4'

    if name == '6':
        coordinates = ps_aaa(1)

        edgelen = 2
        inrad = 1/2
        midrad = sqrt(2) / 2
        circrad = sqrt(3) / 2
        bluerad = midrad
        family = 'platonic'
        related_platonic = '8'

    elif name == '8':
        coordinates = ps_00a(1)

        edgelen = sqrt(2)
        inrad = sqrt(6) / 6
        midrad = 1/2
        circrad = sqrt(2) / 2
        bluerad = midrad
        family = 'platonic'
        related_platonic = '8'

    elif name == '12':
        coordinates = ps_aaa(1) + ps_0ab(phi, 1/phi, 'circular')

        edgelen = sqrt(5) - 1
        inrad = sqrt(250 + 110*sqrt(5)) / 20
        midrad = (3 + sqrt(5)) / 4
        circrad = (sqrt(15) + sqrt(3)) / 4
        bluerad = midrad
        family = 'platonic'
        related_platonic = '20'

    elif name == '20':
        coordinates = ps_0ab(1, phi, 'circular')

        edgelen = 2
        inrad = (3*sqrt(3) + sqrt(15)) / 12
        midrad = (1 + sqrt(5)) / 4
        circrad = sqrt(10 + 2*sqrt(5)) / 4
        bluerad = midrad
        family = 'platonic'
        related_platonic = '20'

    # ARCHIMEDEAN

    elif name == 'truncated 4b':
        coordinates = with_sign_parity(ps_aab(1, 3), 1)

        edgelen = sqrt(8)
        inrad = sqrt(22) * 9 / 44
        midrad = sqrt(2) * 3 / 4
        circrad = sqrt(22) / 4
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'truncated 4a':
        coordinates = with_sign_parity(ps_aab(1, 3), 0)

        edgelen = sqrt(8)
        inrad = sqrt(22) * 9 / 44
        midrad = sqrt(2) * 3 / 4
        circrad = sqrt(22) / 4
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '4'

    elif name == '4-4':
        # same as '8'
        coordinates = ps_00a(1)

        edgelen = sqrt(2)
        inrad = sqrt(6) / 6
        midrad = 1/2
        circrad = sqrt(2) / 2
        bluerad = circrad
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'small rhombi 4-4':
        # same as '6-8'
        coordinates = ps_0aa(1)

        edgelen = sqrt(2)
        inrad = 3/4
        midrad = sqrt(3) / 2
        circrad = 1
        bluerad = sqrt(2) / 2
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'great rhombi 4-4':
        # same as 'truncated 8'
        coordinates = ps_0ab(1, 2)

        edgelen = sqrt(2)
        inrad = sqrt(10) * 9 / 20
        midrad = 3 / 2
        circrad = sqrt(10) / 2
        bluerad = sqrt(2)
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'great rhombi 4-4 subsolid snub right':
        coordinates = ps_0ab(1, 2, 'odd')

        edgelen = sqrt(2)
        inrad = sqrt(10) * 9 / 20
        midrad = 3 / 2
        circrad = sqrt(10) / 2
        bluerad = sqrt(2)
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'great rhombi 4-4 subsolid snub left':
        coordinates = ps_0ab(1, 2, 'even')

        edgelen = sqrt(2)
        inrad = sqrt(10) * 9 / 20
        midrad = 3 / 2
        circrad = sqrt(10) / 2
        bluerad = sqrt(2)
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'snub 4-4':
        # same as '20'
        coordinates = ps_0ab(1, phi, 'circular')

        edgelen = 2
        inrad = (3*sqrt(3) + sqrt(15)) / 12
        midrad = (1 + sqrt(5)) / 4
        circrad = sqrt(10 + 2*sqrt(5)) / 4
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '4'

    elif name == 'truncated 6':
        coordinates = ps_aab(1, sqrt(2)-1)

        edgelen = 2 * (sqrt(2)-1)
        inrad = (5 + 2*sqrt(2)) * sqrt(7 + 4*sqrt(2)) / 17
        midrad = (2 + sqrt(2)) / 2
        circrad = sqrt(7 + 4*sqrt(2)) / 2
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'truncated 8':
        coordinates = ps_0ab(1, 2)

        edgelen = sqrt(2)
        inrad = sqrt(10) * 9 / 20
        midrad = 3 / 2
        circrad = sqrt(10) / 2
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '8'

    elif name == '6-8':
        coordinates = ps_0aa(1)

        edgelen = sqrt(2)
        inrad = 3/4
        midrad = sqrt(3) / 2
        circrad = 1
        bluerad = circrad
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'small rhombi 6-8':
        coordinates = ps_aab(1, 1 + sqrt(2))

        edgelen = 2
        inrad = (6 + sqrt(2)) * sqrt(5 + 2*sqrt(2)) / 17
        midrad = sqrt(4 + 2*sqrt(2)) / 2
        circrad = sqrt(5 + 2*sqrt(2)) / 2
        bluerad = (1 + sqrt(2)) / 2
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'great rhombi 6-8':
        coordinates = ps_abc(1, 1 + sqrt(2), 1 + 2*sqrt(2))

        edgelen = 2
        inrad = (14 + sqrt(2)) * sqrt(13 + 6*sqrt(2)) * 3 / 97
        midrad = sqrt(12 + 6*sqrt(2)) / 2
        circrad = sqrt(13 + 6*sqrt(2)) / 2
        bluerad = (3 + sqrt(2)) / 2
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'great rhombi 6-8 subsolid snub right':
        coordinates = with_sign_parity(ps_abc(1, 1 + sqrt(2), 1 + 2*sqrt(2), 'even'), 0) \
                      + with_sign_parity(ps_abc(1, 1 + sqrt(2), 1 + 2*sqrt(2), 'odd'), 1)

        edgelen = 2  # actually 2*sqrt(2)
        midrad = sqrt(12 + 6 * sqrt(2)) / 2  # same as supsolid, actual value does not matter
        bluerad = (3 + sqrt(2)) / 2
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'great rhombi 6-8 subsolid snub left':
        coordinates = with_sign_parity(ps_abc(1, 1 + sqrt(2), 1 + 2 * sqrt(2), 'even'), 1) \
                      + with_sign_parity(ps_abc(1, 1 + sqrt(2), 1 + 2 * sqrt(2), 'odd'), 0)

        edgelen = 2  # actually 2*sqrt(2)
        midrad = sqrt(12 + 6 * sqrt(2)) / 2  # same as supsolid, actual value does not matter
        bluerad = (3 + sqrt(2)) / 2
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'snub 6-8':  # left in left-handed coordinate system
        c0 = 0.33775397381375235213753224516503
        c1 = 0.621226410556585311692500954490
        c2 = 1.14261350892596209347948408672
        coordinates = with_sign_parity(ps_abc(c1, c0, c2, 'even'), 0) \
                    + with_sign_parity(ps_abc(c1, c0, c2, 'odd'), 1)

        edgelen = 1
        inrad = 1.2133558  # triangle center radius
        midrad = 1.2472231
        circrad = 1.3437133
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '8'

    elif name == 'truncated 12':
        coordinates = ps_0ab(1/phi, 2+phi, 'odd') \
                      + ps_abc(1/phi, phi, 2*phi, 'odd') \
                      + ps_abc(phi, 2, phi+1, 'odd')

        edgelen = 2*phi - 2
        inrad = (17*sqrt(2) + 3*sqrt(10)) * sqrt(37 + 15*sqrt(5)) * 5 / 488
        midrad = (5 + 3*sqrt(5)) / 4
        circrad = sqrt(74 + 30*sqrt(5)) / 4
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'truncated 20':
        coordinates = ps_0ab(1, 3*phi, 'even') \
                      + ps_abc(1, 2+phi, 2*phi, 'even') \
                      + ps_abc(2, 1+2*phi, phi, 'even')

        edgelen = 2
        inrad = (21 + sqrt(5)) * sqrt(58 + 18*sqrt(5)) * 9 / 872
        midrad = (1 + sqrt(5)) * 3 / 4
        circrad = sqrt(58 + 18*sqrt(5)) / 4
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '20'

    elif name == '12-20':
        coordinates = ps_00a(phi) \
                      + ps_abc(1/2, phi/2, phi**2 / 2, 'odd')

        edgelen = 1
        inrad = (5 + 3*sqrt(5)) / 8
        midrad = sqrt(5 + 2*sqrt(5)) / 2
        circrad = (1 + sqrt(5)) / 2
        bluerad = circrad
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'small rhombi 12-20':
        coordinates = ps_0ab(phi**2, 2+phi, 'odd') \
                      + ps_aab(1, phi**3) \
                      + ps_abc(phi**2, phi, 2*phi, 'odd')

        edgelen = 2
        inrad = (15 + 2*sqrt(5)) * sqrt(11 + 4*sqrt(5)) / 41
        midrad = sqrt(10 + 4*sqrt(5)) / 2
        circrad = sqrt(11 + 4*sqrt(5)) / 2
        bluerad = (2 + sqrt(5)) / 2
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'great rhombi 12-20':
        coordinates = ps_aab(1/phi, 3+phi) \
                      + ps_abc(2/phi, phi, 1+2*phi, 'odd') \
                      + ps_abc(1/phi, phi**2, 3*phi-1, 'odd') \
                      + ps_abc(2*phi-1, 2, 2+phi, 'odd') \
                      + ps_abc(phi, 3, 2*phi, 'odd')

        edgelen = 2*phi - 2
        inrad = (105 + 6*sqrt(5)) * sqrt(31 + 12*sqrt(5)) / 241
        midrad = sqrt(30 + 12*sqrt(5)) / 2
        circrad = sqrt(31 + 12*sqrt(5)) / 2
        bluerad = (3 + 2*sqrt(5)) / 2
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'great rhombi 12-20 subsolid snub left':
        coordinates = ps_aab(1/phi, 3+phi) \
                      + ps_abc(2/phi, phi, 1+2*phi, 'odd') \
                      + ps_abc(1/phi, phi**2, 3*phi-1, 'odd') \
                      + ps_abc(2*phi-1, 2, 2+phi, 'odd') \
                      + ps_abc(phi, 3, 2*phi, 'odd')

        coordinates = sorted(coordinates)
        indices = [0, 3, 5, 6, 8, 11, 12, 15, 17, 18, 21, 22, 24, 27, 28, 31, 32, 35, 37, 39, 40, 42, 45, 46, 48, 50, 52, 55, 57, 59, 61, 63, 65, 66, 68, 70, 72, 75, 76, 78, 81, 83, 85, 86, 89, 90, 93, 94, 96, 99, 100, 103, 105, 106, 109, 110, 112, 115, 117, 118]
        coordinates = [coordinates[i] for i in indices]

        edgelen = 2*phi - 2
        inrad = (105 + 6*sqrt(5)) * sqrt(31 + 12*sqrt(5)) / 241
        midrad = sqrt(30 + 12*sqrt(5)) / 2
        circrad = sqrt(31 + 12*sqrt(5)) / 2
        bluerad = (3 + 2*sqrt(5)) / 2
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'great rhombi 12-20 subsolid snub right':
        coordinates = ps_aab(1/phi, 3+phi) \
                      + ps_abc(2/phi, phi, 1+2*phi, 'odd') \
                      + ps_abc(1/phi, phi**2, 3*phi-1, 'odd') \
                      + ps_abc(2*phi-1, 2, 2+phi, 'odd') \
                      + ps_abc(phi, 3, 2*phi, 'odd')

        coordinates = sorted(coordinates)
        indices = [1, 2, 4, 7, 9, 10, 13, 14, 16, 19, 20, 23, 25, 26, 29, 30, 33, 34, 36, 38, 41, 43, 44, 47, 49, 51, 53, 54, 56, 58, 60, 62, 64, 67, 69, 71, 73, 74, 77, 79, 80, 82, 84, 87, 88, 91, 92, 95, 97, 98, 101, 102, 104, 107, 108, 111, 113, 114, 116, 119]

        coordinates = [coordinates[i] for i in indices]

        edgelen = 2*phi - 2
        inrad = (105 + 6*sqrt(5)) * sqrt(31 + 12*sqrt(5)) / 241
        midrad = sqrt(30 + 12*sqrt(5)) / 2
        circrad = sqrt(31 + 12*sqrt(5)) / 2
        bluerad = (3 + 2*sqrt(5)) / 2
        family = 'archimedean'
        related_platonic = '20'

    elif name == 'snub 12-20':  # right in left-handed coordinate system
        c0 = 0.1928937
        c1 = 0.3309210
        c2 = 0.3748216
        c3 = 0.5677153
        c4 = 0.6430296
        c5 = 0.7283351
        c6 = 0.8475500
        c7 = 1.1031568
        c8 = 1.2495037
        c9 = 1.4152654
        c10 = 1.4540242
        c11 = 1.6469179
        c12 = 1.7461864
        c13 = 1.9778389
        c14 = 2.0970538
        coordinates = with_sign_parity(ps_abc(c2, c1, c14, 'even'), 0) \
                      + with_sign_parity(ps_abc(c3, c4, c13, 'even'), 1) \
                      + with_sign_parity(ps_abc(c0, c8, c12, 'even'), 0) \
                      + with_sign_parity(ps_abc(c7, c6, c11, 'even'), 0) \
                      + with_sign_parity(ps_abc(c9, c5, c10, 'even'), 1)

        edgelen = 1
        inrad = 2.0770896  # triangle center radius
        midrad = 2.0970538
        circrad = 2.1558373
        bluerad = midrad
        family = 'archimedean'
        related_platonic = '20'

    # CATALAN

    elif name == 'truncated 4a dual':
        # kis 4
        c0 = 9 * sqrt(2) / 20
        c1 = 3 * sqrt(2) / 4
        coordinates =[
            (c1, c1, c1), (c1, -c1, -c1), (-c1, -c1, c1), (-c1, c1, -c1),
            (c0, -c0, c0), (c0, c0, -c0), (-c0, c0, c0), (-c0, -c0, -c0)
        ]
        midrad = 3 * sqrt(2) / 4
        bluerad = midrad
        family = 'catalan'
        related_platonic = '4'

    elif name == 'truncated 4b dual':
        # kis 4
        c0 = -9 * sqrt(2) / 20
        c1 = -3 * sqrt(2) / 4
        coordinates = [
            (c1, c1, c1), (c1, -c1, -c1), (-c1, -c1, c1), (-c1, c1, -c1),
            (c0, -c0, c0), (c0, c0, -c0), (-c0, c0, c0), (-c0, -c0, -c0)
        ]
        midrad = 3 * sqrt(2) / 4
        bluerad = midrad
        family = 'catalan'
        related_platonic = '4'

    if name == '4-4 dual':
        # same as '6'
        coordinates = ps_aaa(1)
        edgelen = 2
        midrad = sqrt(2) / 2
        bluerad = 1/2
        family = 'platonic'
        related_platonic = '4'

    if name == 'small rhombi 4-4 dual':
        # same as '6-8 dual', i.e. rhombic 12
        c0 = 3 * sqrt(2) / 8
        c1 = 3 * sqrt(2) / 4
        coordinates = [
            (0, 0, c1), (0, 0, -c1),
            (c1, 0, 0), (-c1, 0, 0),
            (0, c1, 0), (0, -c1, 0),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = sqrt(3) / 2
        bluerad = 3*sqrt(2)/4
        family = 'catalan'
        related_platonic = '4'

    if name == 'great rhombi 4-4 dual':
        # same as 'truncated 8 dual', i.e. kis 6
        c0 = 3 * sqrt(2) / 4
        c1 = 9 * sqrt(2) / 8
        coordinates = [
            (0, 0, c1), (0, 0, -c1),
            (c1, 0, 0), (-c1, 0, 0),
            (0, c1, 0), (0, -c1, 0),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = 3 / 2
        bluerad = 9*sqrt(2)/8
        family = 'catalan'
        related_platonic = '4'

    elif name == 'snub 4-4 left dual':
        # same as '12'
        coordinates = ps_aaa(1) + ps_0ab(phi, 1/phi, 'circular')
        edgelen = sqrt(5) - 1
        midrad = (3 + sqrt(5)) / 4
        bluerad = (3 + sqrt(5)) / 4
        family = 'platonic'
        related_platonic = '4'

    elif name == 'truncated 6 dual':
        # kis 8
        c0 = 1 + sqrt(2)
        coordinates = [
            (0, 0, c0), (0, 0, -c0),
            (c0, 0, 0), (-c0, 0, 0),
            (0, c0, 0), (0, -c0, 0),
            (1.0, 1.0, 1.0), (1.0, 1.0, -1.0), (1.0, -1.0, 1.0), (1.0, -1.0, -1.0),
            (-1.0, 1.0, 1.0), (-1.0, 1.0, -1.0), (-1.0, -1.0, 1.0), (-1.0, -1.0, -1.0)
        ]
        midrad = 1+sqrt(2)/2
        bluerad = midrad
        family = 'catalan'
        related_platonic = '8'

    if name == 'truncated 8 dual':
        # kis 6
        c0 = 3 * sqrt(2) / 4
        c1 = 9 * sqrt(2) / 8
        coordinates = [
            (0, 0, c1), (0, 0, -c1),
            (c1, 0, 0), (-c1, 0, 0),
            (0, c1, 0), (0, -c1, 0),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = 3/2
        bluerad = midrad
        family = 'catalan'
        related_platonic = '8'

    if name == '6-8 dual':
        # rhombic 12
        c0 = 3 * sqrt(2) / 8
        c1 = 3 * sqrt(2) / 4
        coordinates = [
            (0, 0, c1), (0, 0, -c1),
            (c1, 0, 0), (-c1, 0, 0),
            (0, c1, 0), (0, -c1, 0),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = sqrt(3)/2
        bluerad = 3/4
        family = 'catalan'
        related_platonic = '8'

    if name == 'small rhombi 6-8 dual':
        # deltoidal 24
        c0 = (4 + sqrt(2)) / 7
        c1 = sqrt(2)
        coordinates = [
            (0, 0, c1), (0, 0, -c1),
            (c1, 0, 0), (-c1, 0, 0),
            (0, c1, 0), (0, -c1, 0),
            (1.0, 0, 1.0), (1.0, 0, -1.0), (-1.0, 0, 1.0), (-1.0, 0, -1.0),
            (1.0, 1.0, 0), (1.0, -1.0, 0), (-1.0, 1.0, 0), (-1.0, -1.0, 0),
            (0, 1.0, 1.0), (0, 1.0, -1.0), (0, -1.0, 1.0), (0, -1.0, -1.0),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = sqrt(2*(2+sqrt(2)))/2
        bluerad = sqrt(2)
        family = 'catalan'
        related_platonic = '8'

    if name == 'great rhombi 6-8 dual':
        # disdyakis 12
        c0 = sqrt(2)
        c1 = (3 + 6 * sqrt(2)) / 7
        c2 = (6 + 9 * sqrt(2)) / 7
        coordinates = [
            (0, 0, c2), (0, 0, -c2),
            (c2, 0, 0), (-c2, 0, 0),
            (0, c2, 0), (0, -c2, 0),
            (c1, 0, c1), (c1, 0, -c1), (-c1, 0, c1), (-c1, 0, -c1),
            (c1, c1, 0), (c1, -c1, 0), (-c1, c1, 0), (-c1, -c1, 0),
            (0, c1, c1), (0, c1, -c1), (0, -c1, c1), (0, -c1, -c1),
            (c0, c0, c0), (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0),
            (-c0, c0, c0), (-c0, c0, -c0), (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = sqrt(6*(2+sqrt(2)))/2
        bluerad = 3*(4+sqrt(2))/7
        family = 'catalan'
        related_platonic = '8'

    elif name == 'snub 6-8 dual':
        # pentagonal 24
        c0 = 0.218796643000480441021525033712
        c1 = 0.740183741369857222808508165943
        c2 = 1.02365617811269018236347687527
        c3 = 1.36141015192644253450100912043
        coordinates = [
            (0, 0, c3), (0, 0, -c3), (c3, 0, 0), (-c3, 0, 0), (0, c3, 0), (0, -c3, 0),
            (c1, -c0, c2), (c1, c0, -c2), (-c1, c0, c2), (-c1, -c0, -c2),
            (c2, -c1, c0), (c2, c1, -c0), (-c2, c1, c0), (-c2, -c1, -c0),
            (c0, -c2, c1), (c0, c2, -c1), (-c0, c2, c1), (-c0, -c2, -c1),
            (c0, c1, c2), (c0, -c1, -c2), (-c0, -c1, c2), (-c0, c1, -c2),
            (c2, c0, c1), (c2, -c0, -c1), (-c2, -c0, c1), (-c2, c0, -c1),
            (c1, c2, c0), (c1, -c2, -c0), (-c1, -c2, c0), (-c1, c2, -c0),
            (c1, c1, c1), (c1, c1, -c1), (c1, -c1, c1), (c1, -c1, -c1),
            (-c1, c1, c1), (-c1, c1, -c1), (-c1, -c1, c1), (-c1, -c1, -c1)
        ]
        midrad = 1.2472231
        bluerad = midrad
        family = 'catalan'
        related_platonic = '8'

    if name == 'truncated 12 dual':
        # kis 20
        c0 = 5 * (7 + sqrt(5)) / 44
        c1 = 5 * (3 + 2 * sqrt(5)) / 22
        c2 = (5 + sqrt(5)) / 4
        c3 = 5 * (13 + 5 * sqrt(5)) / 44
        c4 = (5 + 3 * sqrt(5)) / 4
        coordinates = rotate_90z([
            (c2, 0, c4), (c2, 0, -c4), (-c2, 0, c4), (-c2, 0, -c4),
            (c4, c2, 0), (c4, -c2, 0), (-c4, c2, 0), (-c4, -c2, 0),
            (0, c4, c2), (0, c4, -c2), (0, -c4, c2), (0, -c4, -c2),
            (0, c0, c3), (0, c0, -c3), (0, -c0, c3), (0, -c0, -c3),
            (c3, 0, c0), (c3, 0, -c0), (-c3, 0, c0), (-c3, 0, -c0),
            (c0, c3, 0), (c0, -c3, 0), (-c0, c3, 0), (-c0, -c3, 0),
            (c1, c1, c1), (c1, c1, -c1), (c1, -c1, c1), (c1, -c1, -c1),
            (-c1, c1, c1), (-c1, c1, -c1), (-c1, -c1, c1), (-c1, -c1, -c1)
        ])
        midrad = (5+3*sqrt(5))/4
        bluerad = midrad
        family = 'catalan'
        related_platonic = '20'

    if name == 'truncated 20 dual':
        # kis 12
        c0 = 3 * (sqrt(5) - 1) / 4
        c1 = 9 * (9 + sqrt(5)) / 76
        c2 = 9 * (7 + 5 * sqrt(5)) / 76
        c3 = 3 * (1 + sqrt(5)) / 4
        coordinates = rotate_90z([
            (0, c0, c3), (0, c0, -c3), (0, -c0, c3), (0, -c0, -c3),
            (c3, 0, c0), (c3, 0, -c0), (-c3, 0, c0), (-c3, 0, -c0),
            (c0, c3, 0), (c0, -c3, 0), (-c0, c3, 0), (-c0, -c3, 0),
            (c1, 0, c2), (c1, 0, -c2), (-c1, 0, c2), (-c1, 0, -c2),
            (c2, c1, 0), (c2, -c1, 0), (-c2, c1, 0), (-c2, -c1, 0),
            (0, c2, c1), (0, c2, -c1), (0, -c2, c1), (0, -c2, -c1),
            (1.5, 1.5, 1.5), (1.5, 1.5, -1.5), (1.5, -1.5, 1.5), (1.5, -1.5, -1.5),
            (-1.5, 1.5, 1.5), (-1.5, 1.5, -1.5), (-1.5, -1.5, 1.5), (-1.5, -1.5, -1.5)
        ])
        midrad = 3*(1+sqrt(5))/4
        bluerad = midrad
        family = 'catalan'
        related_platonic = '20'

    if name == '12-20 dual':
        # rhombic 30
        c0 = sqrt(5) / 4
        c1 = (5 + sqrt(5)) / 8
        c2 = (5 + 3 * sqrt(5)) / 8
        coordinates = rotate_90z([
            (c1, 0, c2), (c1, 0, -c2), (-c1, 0, c2), (-c1, 0, -c2),
            (c2, c1, 0), (c2, -c1, 0), (-c2, c1, 0), (-c2, -c1, 0),
            (0, c2, c1), (0, c2, -c1), (0, -c2, c1), (0, -c2, -c1),
            (0, c0, c2), (0, c0, -c2), (0, -c0, c2), (0, -c0, -c2),
            (c2, 0, c0), (c2, 0, -c0), (-c2, 0, c0), (-c2, 0, -c0),
            (c0, c2, 0), (c0, -c2, 0), (-c0, c2, 0), (-c0, -c2, 0),
            (c1, c1, c1), (c1, c1, -c1), (c1, -c1, c1), (c1, -c1, -c1),
            (-c1, c1, c1), (-c1, c1, -c1), (-c1, -c1, c1), (-c1, -c1, -c1)
        ])
        midrad = sqrt(5+2*sqrt(5))/2
        bluerad = (5+3*sqrt(5))/8
        family = 'catalan'
        related_platonic = '20'

    if name == 'small rhombi 12-20 dual':
        # deltoidal 60
        c0 = (5 - sqrt(5)) / 4
        c1 = (15 + sqrt(5)) / 22
        c2 = sqrt(5) / 2
        c3 = (5 + sqrt(5)) / 6
        c4 = (5 + 4 * sqrt(5)) / 11
        c5 = (5 + sqrt(5)) / 4
        c6 = (5 + 3 * sqrt(5)) / 6
        c7 = (25 + 9 * sqrt(5)) / 22
        c8 = sqrt(5)
        coordinates = rotate_90z([
            (0, 0, c8), (0, 0, -c8), (c8, 0, 0), (-c8, 0, 0), (0, c8, 0), (0, -c8, 0),
            (0, c1, c7), (0, c1, -c7), (0, -c1, c7), (0, -c1, -c7), (c7, 0, c1), (c7, 0, -c1),
            (-c7, 0, c1), (-c7, 0, -c1), (c1, c7, 0), (c1, -c7, 0), (-c1, c7, 0), (-c1, -c7, 0),
            (c3, 0, c6), (c3, 0, -c6), (-c3, 0, c6), (-c3, 0, -c6), (c6, c3, 0), (c6, -c3, 0),
            (-c6, c3, 0), (-c6, -c3, 0), (0, c6, c3), (0, c6, -c3), (0, -c6, c3), (0, -c6, -c3),
            (c0, c2, c5), (c0, c2, -c5), (c0, -c2, c5), (c0, -c2, -c5), (-c0, c2, c5), (-c0, c2, -c5),
            (-c0, -c2, c5), (-c0, -c2, -c5), (c5, c0, c2), (c5, c0, -c2), (c5, -c0, c2), (c5, -c0, -c2),
            (-c5, c0, c2), (-c5, c0, -c2), (-c5, -c0, c2), (-c5, -c0, -c2), (c2, c5, c0), (c2, c5, -c0),
            (c2, -c5, c0), (c2, -c5, -c0), (-c2, c5, c0), (-c2, c5, -c0), (-c2, -c5, c0), (-c2, -c5, -c0),
            (c4, c4, c4), (c4, c4, -c4), (c4, -c4, c4), (c4, -c4, -c4),
            (-c4, c4, c4), (-c4, c4, -c4), (-c4, -c4, c4), (-c4, -c4, -c4)
        ])
        midrad = sqrt(2*(5+2*sqrt(5)))/2
        bluerad = sqrt(5)
        family = 'catalan'
        related_platonic = '20'

    if name == 'great rhombi 12-20 dual':
        # disdyakis 30
        c0 = 3 * (15 + sqrt(5)) / 44
        c1 = (5 - sqrt(5)) / 2
        c2 = 3 * (5 + 4 * sqrt(5)) / 22
        c3 = 3 * (5 + sqrt(5)) / 10
        c4 = sqrt(5)
        c5 = (75 + 27 * sqrt(5)) / 44
        c6 = (15 + 9 * sqrt(5)) / 10
        c7 = (5 + sqrt(5)) / 2
        c8 = 3 * (5 + 4 * sqrt(5)) / 11
        coordinates = rotate_90z([
            (0, 0, c8), (0, 0, -c8), (c8, 0, 0), (-c8, 0, 0), (0, c8, 0), (0, -c8, 0),
            (0, c1, c7), (0, c1, -c7), (0, -c1, c7), (0, -c1, -c7), (c7, 0, c1), (c7, 0, -c1),
            (-c7, 0, c1), (-c7, 0, -c1), (c1, c7, 0), (c1, -c7, 0), (-c1, c7, 0), (-c1, -c7, 0),
            (c3, 0, c6), (c3, 0, -c6), (-c3, 0, c6), (-c3, 0, -c6), (c6, c3, 0), (c6, -c3, 0),
            (-c6, c3, 0), (-c6, -c3, 0), (0, c6, c3), (0, c6, -c3), (0, -c6, c3), (0, -c6, -c3),
            (c0, c2, c5), (c0, c2, -c5), (c0, -c2, c5), (c0, -c2, -c5), (-c0, c2, c5), (-c0, c2, -c5),
            (-c0, -c2, c5), (-c0, -c2, -c5), (c5, c0, c2), (c5, c0, -c2), (c5, -c0, c2), (c5, -c0, -c2),
            (-c5, c0, c2), (-c5, c0, -c2), (-c5, -c0, c2), (-c5, -c0, -c2), (c2, c5, c0), (c2, c5, -c0),
            (c2, -c5, c0), (c2, -c5, -c0), (-c2, c5, c0), (-c2, c5, -c0), (-c2, -c5, c0), (-c2, -c5, -c0),
            (c4, c4, c4), (c4, c4, -c4), (c4, -c4, c4), (c4, -c4, -c4),
            (-c4, c4, c4), (-c4, c4, -c4), (-c4, -c4, c4), (-c4, -c4, -c4)
        ])
        midrad = sqrt(6*(5+2*sqrt(5)))/2
        bluerad = 3*(5+4*sqrt(5))/11
        family = 'catalan'
        related_platonic = '20'

    elif name == 'snub 12-20 dual':  # right in left-handed coordinate system
        # pentagonal 60
        c0 = 0.1928937
        c1 = 0.2184833
        c2 = 0.3748216
        c3 = 0.5677153
        c4 = 0.7283351
        c5 = 0.7554672
        c6 = 0.8249575
        c7 = 0.9212288
        c8 = 0.9599877
        c9 = 1.1370661
        c10 = 1.1671234
        c11 = 1.2223717
        c12 = 1.2720962
        c13 = 1.5277030
        c14 = 1.6469179
        c15 = 1.7461864
        c16 = 1.8654013
        c17 = 1.8884453
        c18 = 1.9778389
        c19 = 2.0970538
        coordinates = [
            (-c0, -c1, -c19), (-c0, c1, c19), (c0, c1, -c19), (c0, -c1, c19),
            (-c19, -c0, -c1), (-c19, c0, c1), (c19, c0, -c1), (c19, -c0, c1),
            (-c1, -c19, -c0), (-c1, c19, c0), (c1, c19, -c0), (c1, -c19, c0),
            (0, -c5, -c18), (0, -c5, c18), (0, c5, -c18), (0, c5, c18),
            (-c18, 0, -c5), (-c18, 0, c5), (c18, 0, -c5), (c18, 0, c5),
            (-c5, -c18, 0), (-c5, c18, 0), (c5, -c18, 0), (c5, c18, 0),
            (-c10, 0, -c17), (-c10, 0, c17), (c10, 0, -c17), (c10, 0, c17),
            (-c17, -c10, 0), (-c17, c10, 0), (c17, -c10, 0), (c17, c10, 0),
            (0, -c17, -c10), (0, -c17, c10), (0, c17, -c10), (0, c17, c10),
            (-c3, c6, -c16), (-c3, -c6, c16), (c3, -c6, -c16), (c3, c6, c16),
            (-c16, c3, -c6), (-c16, -c3, c6), (c16, -c3, -c6), (c16, c3, c6),
            (-c6, c16, -c3), (-c6, -c16, c3), (c6, -c16, -c3), (c6, c16, c3),
            (-c2, -c9, -c15), (-c2, c9, c15), (c2, c9, -c15), (c2, -c9, c15),
            (-c15, -c2, -c9), (-c15, c2, c9), (c15, c2, -c9), (c15, -c2, c9),
            (-c9, -c15, -c2), (-c9, c15, c2), (c9, c15, -c2), (c9, -c15, c2),
            (-c7, -c8, -c14), (-c7, c8, c14), (c7, c8, -c14), (c7, -c8, c14),
            (-c14, -c7, -c8), (-c14, c7, c8), (c14, c7, -c8), (c14, -c7, c8),
            (-c8, -c14, -c7), (-c8, c14, c7), (c8, c14, -c7), (c8, -c14, c7),
            (-c4, c12, -c13), (-c4, -c12, c13), (c4, -c12, -c13), (c4, c12, c13),
            (-c13, c4, -c12), (-c13, -c4, c12), (c13, -c4, -c12), (c13, c4, c12),
            (-c12, c13, -c4), (-c12, -c13, c4), (c12, -c13, -c4), (c12, c13, c4),
            (-c11, -c11, -c11), (-c11, -c11, c11), (-c11, c11, -c11), (-c11, c11, c11),
            (c11, -c11, -c11), (c11, -c11, c11), (c11, c11, -c11), (c11, c11, c11)
        ]
        midrad = 2.0970538
        bluerad = midrad
        family = 'catalan'
        related_platonic = '20'

    # CHAMFERED PLATONIC

    if name == 'chamfered 4a':
        c0 = (2 - sqrt(2)) / 2
        c1 = sqrt(2) / 2
        coordinates = [
            (c1, -c1, c1), (c1, c1, -c1), (-c1, c1, c1), (-c1, -c1, -c1), (c1, c0, c1),
            (c1, -c0, -c1), (-c1, -c0, c1), (-c1, c0, -c1), (c1, c1, c0), (c1, -c1, -c0),
            (-c1, -c1, c0), (-c1, c1, -c0), (c0, c1, c1), (c0, -c1, -c1), (-c0, -c1, c1),
            (-c0, c1, -c1)
        ]
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '4'

    if name == 'chamfered 4a edeq':
        c0 = (2 - sqrt(2)) / 4
        c1 = (2 + sqrt(2)) / 4
        coordinates = [
            (c1, -c1, c1), (c1, c1, -c1), (-c1, c1, c1), (-c1, -c1, -c1), (c1, c0, c1),
            (c1, -c0, -c1), (-c1, -c0, c1), (-c1, c0, -c1), (c1, c1, c0), (c1, -c1, -c0),
            (-c1, -c1, c0), (-c1, c1, -c0), (c0, c1, c1), (c0, -c1, -c1), (-c0, -c1, c1),
            (-c0, c1, -c1)
        ]
        midrad = 1
        bluerad = 1  # whatever
        edgelen = sqrt(6)*(sqrt(6)/2 + sqrt(3))/6
        related_platonic = '4'

    if name == 'chamfered 4b':
        result = polyhedron_properties('chamfered 4a')
        coordinates = result['coordinates']
        new_coordinates = [(-a, -b, -c) for (a, b, c) in coordinates]
        result['coordinates'] = new_coordinates
        return result

    if name == 'chamfered 4b edeq':
        result = polyhedron_properties('chamfered 4a edeq')
        coordinates = result['coordinates']
        new_coordinates = [(-a, -b, -c) for (a, b, c) in coordinates]
        result['coordinates'] = new_coordinates
        return result

    if name == 'chamfered 4b edeq':
        result = polyhedron_properties('chamfered 4a')
        coordinates = result['coordinates']
        new_coordinates = [(-a, -b, -c) for (a, b, c) in coordinates]
        result['coordinates'] = new_coordinates
        return result

    if name == 'chamfered 6':
        c0 = (sqrt(6) - sqrt(2)) / 4
        c1 = sqrt(6) / 4
        c2 = (sqrt(2) + sqrt(6)) / 4
        coordinates = [
            (c0, c0, c2), (c0, c0, -c2), (c0, -c0, c2), (c0, -c0, -c2), (-c0, c0, c2),
            (-c0, c0, -c2), (-c0, -c0, c2), (-c0, -c0, -c2), (c2, c0, c0), (c2, c0, -c0),
            (c2, -c0, c0), (c2, -c0, -c0), (-c2, c0, c0), (-c2, c0, -c0), (-c2, -c0, c0),
            (-c2, -c0, -c0), (c0, c2, c0), (c0, c2, -c0), (c0, -c2, c0), (c0, -c2, -c0),
            (-c0, c2, c0), (-c0, c2, -c0), (-c0, -c2, c0), (-c0, -c2, -c0), (c1, c1, c1),
            (c1, c1, -c1), (c1, -c1, c1), (c1, -c1, -c1), (-c1, c1, c1), (-c1, c1, -c1),
            (-c1, -c1, c1), (-c1, -c1, -c1)
        ]
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '8'

    if name == 'chamfered 6 edeq':
        c0 = (3 + 2 * sqrt(3)) / 6
        c1 = (3 + 4 * sqrt(3)) / 6
        coordinates = [
            (0.5, 0.5, c1), (0.5, 0.5, -c1), (0.5, -0.5, c1), (0.5, -0.5, -c1), (-0.5, 0.5, c1),
            (-0.5, 0.5, -c1), (-0.5, -0.5, c1), (-0.5, -0.5, -c1), (c1, 0.5, 0.5), (c1, 0.5, -0.5),
            (c1, -0.5, 0.5), (c1, -0.5, -0.5), (-c1, 0.5, 0.5), (-c1, 0.5, -0.5), (-c1, -0.5, 0.5),
            (-c1, -0.5, -0.5), (0.5, c1, 0.5), (0.5, c1, -0.5), (0.5, -c1, 0.5), (0.5, -c1, -0.5),
            (-0.5, c1, 0.5), (-0.5, c1, -0.5), (-0.5, -c1, 0.5), (-0.5, -c1, -0.5), (c0, c0, c0),
            (c0, c0, -c0), (c0, -c0, c0), (c0, -c0, -c0), (-c0, c0, c0), (-c0, c0, -c0),
            (-c0, -c0, c0), (-c0, -c0, -c0)
        ]
        midrad = 1
        bluerad = 1  # whatever
        edgelen = 2*sqrt(2)*(sqrt(3)/2 + 1)/3
        related_platonic = '8'

    if name == 'chamfered 8':
        c0 = (sqrt(6) - 1) / 2
        c1 = sqrt(6) / 2
        coordinates = [
            (0.0, 0.0, c1), (0.0, 0.0, -c1), (c1, 0.0, 0.0), (-c1, 0.0, 0.0), (0.0, c1, 0.0),
            (0.0, -c1, 0.0), (0.5, 0.5, c0), (0.5, 0.5, -c0), (0.5, -0.5, c0), (0.5, -0.5, -c0),
            (-0.5, 0.5, c0), (-0.5, 0.5, -c0), (-0.5, -0.5, c0), (-0.5, -0.5, -c0), (c0, 0.5, 0.5),
            (c0, 0.5, -0.5), (c0, -0.5, 0.5), (c0, -0.5, -0.5), (-c0, 0.5, 0.5), (-c0, 0.5, -0.5),
            (-c0, -0.5, 0.5), (-c0, -0.5, -0.5), (0.5, c0, 0.5), (0.5, c0, -0.5), (0.5, -c0, 0.5),
            (0.5, -c0, -0.5), (-0.5, c0, 0.5), (-0.5, c0, -0.5), (-0.5, -c0, 0.5), (-0.5, -c0, -0.5)
        ]
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '8'

    if name == 'chamfered 8 edeq':
        c0 = sqrt(3) / 3
        c1 = (3 * sqrt(2) + 2 * sqrt(3)) / 6
        c2 = (3 * sqrt(2) + 4 * sqrt(3)) / 6
        coordinates = [
            (0.0, 0.0, c2), (0.0, 0.0, -c2), (c2, 0.0, 0.0), (-c2, 0.0, 0.0), (0.0, c2, 0.0),
            (0.0, -c2, 0.0), (c0, c0, c1), (c0, c0, -c1), (c0, -c0, c1), (c0, -c0, -c1),
            (-c0, c0, c1), (-c0, c0, -c1), (-c0, -c0, c1), (-c0, -c0, -c1), (c1, c0, c0),
            (c1, c0, -c0), (c1, -c0, c0), (c1, -c0, -c0), (-c1, c0, c0), (-c1, c0, -c0),
            (-c1, -c0, c0), (-c1, -c0, -c0), (c0, c1, c0), (c0, c1, -c0), (c0, -c1, c0),
            (c0, -c1, -c0), (-c0, c1, c0), (-c0, c1, -c0), (-c0, -c1, c0), (-c0, -c1, -c0)
        ]
        midrad = 1
        bluerad = 1  # whatever
        edgelen = sqrt(6)*(sqrt(2)/2 + 2*sqrt(3)/3)/3
        related_platonic = '8'

    if name == 'chamfered 12':
        c0 = 0.172288258377627867050026795923
        c1 = 0.278768257917525705066412537456
        c2 = 0.309016994374947424102293417183
        c3 = 0.363271264002680442947733378740
        c4 = 0.587785252292473129168705954639
        c5 = 0.672288258377627867050026795923
        c6 = 0.760073510670100996218732750562
        c7 = 0.778768257917525705066412537456
        c8 = 0.951056516295153572116439333379
        coordinates = rotate_90z([
            (0.0, c3, c8), (0.0, c3, -c8), (0.0, -c3, c8), (0.0, -c3, -c8), (c8, 0.0, c3),
            (c8, 0.0, -c3), (-c8, 0.0, c3), (-c8, 0.0, -c3), (c3, c8, 0.0), (c3, -c8, 0.0),
            (-c3, c8, 0.0), (-c3, -c8, 0.0), (c2, c0, c8), (c2, c0, -c8), (c2, -c0, c8),
            (c2, -c0, -c8), (-c2, c0, c8), (-c2, c0, -c8), (-c2, -c0, c8), (-c2, -c0, -c8),
            (c8, c2, c0), (c8, c2, -c0), (c8, -c2, c0), (c8, -c2, -c0), (-c8, c2, c0),
            (-c8, c2, -c0), (-c8, -c2, c0), (-c8, -c2, -c0), (c0, c8, c2), (c0, c8, -c2),
            (c0, -c8, c2), (c0, -c8, -c2), (-c0, c8, c2), (-c0, c8, -c2), (-c0, -c8, c2),
            (-c0, -c8, -c2), (c4, c1, c7), (c4, c1, -c7), (c4, -c1, c7), (c4, -c1, -c7),
            (-c4, c1, c7), (-c4, c1, -c7), (-c4, -c1, c7), (-c4, -c1, -c7), (c7, c4, c1),
            (c7, c4, -c1), (c7, -c4, c1), (c7, -c4, -c1), (-c7, c4, c1), (-c7, c4, -c1),
            (-c7, -c4, c1), (-c7, -c4, -c1), (c1, c7, c4), (c1, c7, -c4), (c1, -c7, c4),
            (c1, -c7, -c4), (-c1, c7, c4), (-c1, c7, -c4), (-c1, -c7, c4), (-c1, -c7, -c4),
            (0.0, c5, c6), (0.0, c5, -c6), (0.0, -c5, c6), (0.0, -c5, -c6), (c6, 0.0, c5),
            (c6, 0.0, -c5), (-c6, 0.0, c5), (-c6, 0.0, -c5), (c5, c6, 0.0), (c5, -c6, 0.0),
            (-c5, c6, 0.0), (-c5, -c6, 0.0), (c4, c4, c4), (c4, c4, -c4), (c4, -c4, c4),
            (c4, -c4, -c4), (-c4, c4, c4), (-c4, c4, -c4), (-c4, -c4, c4), (-c4, -c4, -c4)
        ])
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '20'

    if name == 'chamfered 12 edeq':
        c0 = 0.809016994374947424102293417183
        c1 = 0.850650808352039932181540497063
        c2 = 1.025731112119133606025669084848
        c3 = 1.659667802726987356283833914246
        c4 = 1.87638192047117353820720958191
        c5 = 2.159667802726987356283833914246
        c6 = 2.18539891484612096230950299909
        c7 = 2.68539891484612096230950299909
        coordinates = rotate_90z([
            (0.0, c2, c7), (0.0, c2, -c7), (0.0, -c2, c7), (0.0, -c2, -c7), (c7, 0.0, c2),
            (c7, 0.0, -c2), (-c7, 0.0, c2), (-c7, 0.0, -c2), (c2, c7, 0.0), (c2, -c7, 0.0),
            (-c2, c7, 0.0), (-c2, -c7, 0.0), (c1, 0.5, c7), (c1, 0.5, -c7), (c1, -0.5, c7),
            (c1, -0.5, -c7), (-c1, 0.5, c7), (-c1, 0.5, -c7), (-c1, -0.5, c7), (-c1, -0.5, -c7),
            (c7, c1, 0.5), (c7, c1, -0.5), (c7, -c1, 0.5), (c7, -c1, -0.5), (-c7, c1, 0.5),
            (-c7, c1, -0.5), (-c7, -c1, 0.5), (-c7, -c1, -0.5), (0.5, c7, c1), (0.5, c7, -c1),
            (0.5, -c7, c1), (0.5, -c7, -c1), (-0.5, c7, c1), (-0.5, c7, -c1), (-0.5, -c7, c1),
            (-0.5, -c7, -c1), (c3, c0, c6), (c3, c0, -c6), (c3, -c0, c6), (c3, -c0, -c6),
            (-c3, c0, c6), (-c3, c0, -c6), (-c3, -c0, c6), (-c3, -c0, -c6), (c6, c3, c0),
            (c6, c3, -c0), (c6, -c3, c0), (c6, -c3, -c0), (-c6, c3, c0), (-c6, c3, -c0),
            (-c6, -c3, c0), (-c6, -c3, -c0), (c0, c6, c3), (c0, c6, -c3), (c0, -c6, c3),
            (c0, -c6, -c3), (-c0, c6, c3), (-c0, c6, -c3), (-c0, -c6, c3), (-c0, -c6, -c3),
            (0.0, c4, c5), (0.0, c4, -c5), (0.0, -c4, c5), (0.0, -c4, -c5), (c5, 0.0, c4),
            (c5, 0.0, -c4), (-c5, 0.0, c4), (-c5, 0.0, -c4), (c4, c5, 0.0), (c4, -c5, 0.0),
            (-c4, c5, 0.0), (-c4, -c5, 0.0), (c3, c3, c3), (c3, c3, -c3), (c3, -c3, c3),
            (c3, -c3, -c3), (-c3, c3, c3), (-c3, c3, -c3), (-c3, -c3, c3), (-c3, -c3, -c3)
        ])
        midrad = 1
        bluerad = 1  # whatever
        edgelen = 2.8235955159711317
        related_platonic = '20'

    if name == 'chamfered 20':
        c0 = 0.0877852522924731291687059546391
        c1 = 0.309016994374947424102293417183
        c2 = 0.451056516295153572116439333379
        c3 = 0.587785252292473129168705954639
        c4 = 0.642039521920206148014145916197
        c5 = 0.896802246667420553270999371822
        c6 = 0.951056516295153572116439333379
        coordinates = rotate_90z([
            (c3, 0, c6), (c3, 0, -c6), (-c3, 0, c6), (-c3, 0, -c6), (c6, c3, 0), (c6, -c3, 0),
            (-c6, c3, 0), (-c6, -c3, 0), (0, c6, c3), (0, c6, -c3), (0, -c6, c3), (0, -c6, -c3),
            (c0, c1, c6), (c0, c1, -c6), (c0, -c1, c6), (c0, -c1, -c6), (-c0, c1, c6),
            (-c0, c1, -c6), (-c0, -c1, c6), (-c0, -c1, -c6), (c6, c0, c1), (c6, c0, -c1),
            (c6, -c0, c1), (c6, -c0, -c1), (-c6, c0, c1), (-c6, c0, -c1), (-c6, -c0, c1),
            (-c6, -c0, -c1), (c1, c6, c0), (c1, c6, -c0), (c1, -c6, c0), (c1, -c6, -c0),
            (-c1, c6, c0), (-c1, c6, -c0), (-c1, -c6, c0), (-c1, -c6, -c0), (0, c2, c5),
            (0, c2, -c5), (0, -c2, c5), (0, -c2, -c5), (c5, 0, c2), (c5, 0, -c2), (-c5, 0, c2),
            (-c5, 0, -c2), (c2, c5, 0), (c2, -c5, 0), (-c2, c5, 0), (-c2, -c5, 0), (c3, 0.5, c4),
            (c3, 0.5, -c4), (c3, -0.5, c4), (c3, -0.5, -c4), (-c3, 0.5, c4), (-c3, 0.5, -c4),
            (-c3, -0.5, c4), (-c3, -0.5, -c4), (c4, c3, 0.5), (c4, c3, -0.5), (c4, -c3, 0.5),
            (c4, -c3, -0.5), (-c4, c3, 0.5), (-c4, c3, -0.5), (-c4, -c3, 0.5), (-c4, -c3, -0.5),
            (0.5, c4, c3), (0.5, c4, -c3), (0.5, -c4, c3), (0.5, -c4, -c3), (-0.5, c4, c3),
            (-0.5, c4, -c3), (-0.5, -c4, c3), (-0.5, -c4, -c3)
        ])
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '20'

    if name == 'chamfered 20 edeq':
        c0 = 0.525731112119133606025669084848
        c1 = 0.850650808352039932181540497063
        c2 = 1.33474810649408103012796250203
        c3 = 1.35065080835203993218154049706
        c4 = 1.659667802726987356283833914246
        c5 = 1.87638192047117353820720958191
        c6 = 2.18539891484612096230950299909
        coordinates = rotate_90z([
            (c3, 0.0, c6), (c3, 0.0, -c6), (-c3, 0.0, c6), (-c3, 0.0, -c6), (c6, c3, 0.0),
            (c6, -c3, 0.0), (-c6, c3, 0.0), (-c6, -c3, 0.0), (0.0, c6, c3), (0.0, c6, -c3),
            (0.0, -c6, c3), (0.0, -c6, -c3), (0.5, c0, c6), (0.5, c0, -c6), (0.5, -c0, c6),
            (0.5, -c0, -c6), (-0.5, c0, c6), (-0.5, c0, -c6), (-0.5, -c0, c6), (-0.5, -c0, -c6),
            (c6, 0.5, c0), (c6, 0.5, -c0), (c6, -0.5, c0), (c6, -0.5, -c0), (-c6, 0.5, c0),
            (-c6, 0.5, -c0), (-c6, -0.5, c0), (-c6, -0.5, -c0), (c0, c6, 0.5), (c0, c6, -0.5),
            (c0, -c6, 0.5), (c0, -c6, -0.5), (-c0, c6, 0.5), (-c0, c6, -0.5), (-c0, -c6, 0.5),
            (-c0, -c6, -0.5), (0.0, c2, c5), (0.0, c2, -c5), (0.0, -c2, c5), (0.0, -c2, -c5),
            (c5, 0.0, c2), (c5, 0.0, -c2), (-c5, 0.0, c2), (-c5, 0.0, -c2), (c2, c5, 0.0),
            (c2, -c5, 0.0), (-c2, c5, 0.0), (-c2, -c5, 0.0), (c3, c1, c4), (c3, c1, -c4),
            (c3, -c1, c4), (c3, -c1, -c4), (-c3, c1, c4), (-c3, c1, -c4), (-c3, -c1, c4),
            (-c3, -c1, -c4), (c4, c3, c1), (c4, c3, -c1), (c4, -c3, c1), (c4, -c3, -c1),
            (-c4, c3, c1), (-c4, c3, -c1), (-c4, -c3, c1), (-c4, -c3, -c1), (c1, c4, c3),
            (c1, c4, -c3), (c1, -c4, c3), (c1, -c4, -c3), (-c1, c4, c3), (-c1, c4, -c3),
            (-c1, -c4, c3), (-c1, -c4, -c3)
        ])
        midrad = 1
        bluerad = 1  # whatever
        edgelen = 2.2978644038519977

        related_platonic = '20'

    # CHAMFERED PLATONIC DUALS

    if name == 'chamfered 4a dual':
        c0 = 1 + sqrt(2)
        coordinates = [
            (0, 0, c0), (0, 0, -c0),
            (c0, 0, 0), (-c0, 0, 0),
            (0, c0, 0), (0, -c0, 0),
            (1.0, 1.0, 1.0), (1.0, -1.0, -1.0), (-1.0, 1.0, -1.0), (-1.0, -1.0, 1.0)
        ]
        midrad = 1+sqrt(2)/2
        edgelen = 1
        bluerad = midrad
        related_platonic = '4'

    if name == 'chamfered 4b dual':
        c0 = 1 + sqrt(2)
        coordinates = [
            (0, 0, c0), (0, 0, -c0),
            (c0, 0, 0), (-c0, 0, 0),
            (0, c0, 0), (0, -c0, 0),
            (1.0, 1.0, -1.0), (1.0, -1.0, 1.0), (-1.0, 1.0, 1.0), (-1.0, -1.0, -1.0)
        ]
        midrad = 1 + sqrt(2) / 2
        edgelen = 1
        bluerad = midrad
        related_platonic = '4'

    if name == 'chamfered 6 dual':
        # tetrakis 6-8
        c0 = sqrt(6) / 3
        c1 = sqrt(6) - sqrt(2)
        coordinates = [
            (0, 0, c1), (0, 0, -c1), (c1, 0, 0), (-c1, 0, 0), (0, c1, 0), (0, -c1, 0), (c0, 0, c0),
            (c0, 0, -c0), (-c0, 0, c0), (-c0, 0, -c0), (c0, c0, 0), (c0, -c0, 0), (-c0, c0, 0),
            (-c0, -c0, 0), (0, c0, c0), (0, c0, -c0), (0, -c0, c0), (0, -c0, -c0)
        ]
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '8'

    if name == 'chamfered 8 dual':
        # triakis 6-8
        c0 = sqrt(6) / 3
        c1 = 1/(3*(1/6 + sqrt(6)/6))
        coordinates = [
            (c0, 0, c0), (c0, 0, -c0), (-c0, 0, c0), (-c0, 0, -c0), (c0, c0, 0), (c0, -c0, 0),
            (-c0, c0, 0), (-c0, -c0, 0), (0, c0, c0), (0, c0, -c0), (0, -c0, c0), (0, -c0, -c0),
            (c1, c1, c1), (c1, c1, -c1), (c1, -c1, c1), (c1, -c1, -c1),
            (-c1, c1, c1), (-c1, c1, -c1), (-c1, -c1, c1), (-c1, -c1, -c1)
        ]
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '8'

    if name == 'chamfered 12 dual':
        # pentakis 12-20
        c0 = 0.3249196962329063261558714122151
        c1 = 0.525731112119133606025669084848
        c2 = 0.541166900871121200823328817258
        c3 = 0.850650808352039932181540497063
        c4 = 0.875626439195919181581615733217
        c5 = 1.05146222423826721205133816970
        coordinates = rotate_90z([
            (0, 0, c5), (0, 0, -c5), (c5, 0, 0), (-c5, 0, 0), (0, c5, 0), (0, -c5, 0), (c2, 0, c4),
            (c2, 0, -c4), (-c2, 0, c4), (-c2, 0, -c4), (c4, c2, 0), (c4, -c2, 0), (-c4, c2, 0),
            (-c4, -c2, 0), (0, c4, c2), (0, c4, -c2), (0, -c4, c2), (0, -c4, -c2), (c0, c1, c3),
            (c0, c1, -c3), (c0, -c1, c3), (c0, -c1, -c3), (-c0, c1, c3), (-c0, c1, -c3),
            (-c0, -c1, c3), (-c0, -c1, -c3), (c3, c0, c1), (c3, c0, -c1), (c3, -c0, c1),
            (c3, -c0, -c1), (-c3, c0, c1), (-c3, c0, -c1), (-c3, -c0, c1), (-c3, -c0, -c1),
            (c1, c3, c0), (c1, c3, -c0), (c1, -c3, c0), (c1, -c3, -c0), (-c1, c3, c0),
            (-c1, c3, -c0), (-c1, -c3, c0), (-c1, -c3, -c0)
        ])
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '20'

    if name == 'chamfered 20 dual':
        c0 = 0.3249196962329063261558714122151
        c1 = 0.525731112119133606025669084848
        c3 = 0.850650808352039932181540497063
        c5 = 1.05146222423826721205133816970
        coordinates12old = ps_aaa(1) + ps_0ab(phi, 1 / phi, 'circular')
        f = 0.578093235168946
        coordinates12new = [(a*f, b*f, c*f) for (a, b, c) in coordinates12old]
        coordinates1220 = rotate_90z([
            (0, 0, c5), (0, 0, -c5), (c5, 0, 0), (-c5, 0, 0), (0, c5, 0), (0, -c5, 0), (c0, c1, c3),
            (c0, c1, -c3), (c0, -c1, c3), (c0, -c1, -c3), (-c0, c1, c3), (-c0, c1, -c3),
            (-c0, -c1, c3), (-c0, -c1, -c3), (c3, c0, c1), (c3, c0, -c1), (c3, -c0, c1),
            (c3, -c0, -c1), (-c3, c0, c1), (-c3, c0, -c1), (-c3, -c0, c1), (-c3, -c0, -c1),
            (c1, c3, c0), (c1, c3, -c0), (c1, -c3, c0), (c1, -c3, -c0), (-c1, c3, c0),
            (-c1, c3, -c0), (-c1, -c3, c0), (-c1, -c3, -c0)
        ])
        coordinates = coordinates12new + coordinates1220
        midrad = 1
        bluerad = edgelen = 1  # whatever
        related_platonic = '20'

    # SPECIAL

    if name == 'predicate logic cube truncation':
        coordinates = [
            (0, 0, 0),

            (0, 0, 2), (0, 1, 3), (1, 0, 3), (1, 1, 4),
            (0, 2, 0), (0, 3, 1), (1, 3, 0), (1, 4, 1),
            (2, 0, 0), (3, 0, 1), (3, 1, 0), (4, 1, 1),

            (0, 3, 3), (1, 3, 4), (1, 4, 3), (2, 4, 4),
            (3, 0, 3), (3, 1, 4), (4, 1, 3), (4, 2, 4),
            (3, 3, 0), (3, 4, 1), (4, 3, 1), (4, 4, 2),

            (4, 4, 4)
        ]
        coordinates = [(a-2, b-2, c-2) for (a, b, c) in coordinates]
        edgelen = midrad = bluerad = 1  # whatever
        related_platonic = '8'

    if name == 'pyritohedron':
        h = .5
        coordinates = polyhedron_properties('6')['coordinates'] + ps_0ab(1 + h, 1 - h**2, 'even')
        midrad = edgelen = bluerad = 2  # whatever
        related_platonic = '8'

    if name == 'chamfered 6 pyritohedral':
        coordinates = polyhedron_properties('6')['coordinates'] + ps_abc(13/10, 17/20, 2/5, 'even')
        midrad = edgelen = bluerad = 2  # whatever
        related_platonic = '8'

    if name == 'slightly chamfered 6':
        coordinates = ps_aaa(.9) + ps_aab(.8, 1)
        midrad = edgelen = bluerad = 2  # whatever
        related_platonic = '8'

        # HELPERS

    if name in ['snub 4-4 left', 'snub 4-4 right']:
        props = polyhedron_properties('20')
        props['related_platonic'] = '4'
        return props

    if name in ['snub 4-4 left dual', 'snub 4-4 right dual']:
        props = polyhedron_properties('12')
        props['related_platonic'] = '4'
        return props

    if name in ['snub 6-8 left', 'snub 6-8 right']:
        return polyhedron_properties('snub 6-8')

    if name in ['snub 6-8 left dual', 'snub 6-8 right dual']:
        return polyhedron_properties('snub 6-8 dual')

    if name in ['snub 12-20 left', 'snub 12-20 right']:
        return polyhedron_properties('snub 12-20')

    if name in ['snub 12-20 left dual', 'snub 12-20 right dual']:
        return polyhedron_properties('snub 12-20 dual')

    if name in ['great rhombi 6-8 subsolid pyritohedral',
                'great rhombi 6-8 subsolid tetrahedral',
                'great rhombi 6-8 subsolid snub left',
                'great rhombi 6-8 subsolid snub right',
                'great rhombi 6-8 subsolid 20']:
        return polyhedron_properties('great rhombi 6-8')

    if name == '12 pyritohedral':
        return polyhedron_properties('12')

    if name == '20 pyritohedral':
        return polyhedron_properties('20')

    if name == 'pair 4-4':
        return polyhedron_properties('4a')

    if name in ['pair 6-8', 'stellated 8']:
        return polyhedron_properties('6')

    if name == 'pair 12-20':
        return polyhedron_properties('12')

    # RETURN

    if family == 'catalan':
        edgelen = 1  # because the coordinates refer to Archimedean solids with edgelen 1

    bluerad_relative_to_coordinates = bluerad * edgelen
    midrad_relative_to_coordinates = midrad * edgelen

    return {
        'coordinates': coordinates,
        'bluerad': bluerad_relative_to_coordinates,
        'midrad': midrad_relative_to_coordinates,
        'family': family,
        'related_platonic': related_platonic,
    }
