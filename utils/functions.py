from math import copysign


def pairs_to_sequences(pairs_arg):
    """
    This function takes pairs of objects that are neighbours,
    and returns a list of lists of objects that form a chain of neighbours.

    pairs_to_sequences([(1, 2), (2, 3), (3, 4), (4, 5), (5, 6)])   gives   [[1, 2, 3, 4, 5, 6]]
    pairs_to_sequences([(1, 2), (2, 3), (4, 5), (5, 6)])           gives   [[4, 5, 6], [1, 2, 3]]

    Whether or not the sequence described by the pairs forms a circle is not visible in the result:
    pairs_to_sequences([(1, 2), (2, 3)])           gives   [[1, 2, 3]]
    pairs_to_sequences([(1, 2), (2, 3), (1, 3)])   gives   [[2, 1, 3]]
    """

    pairs = []
    for pair in pairs_arg:
        pairs.append(list(pair))

    sequences = []

    while pairs:

        if not sequences:

            random_pair = pairs.pop()
            sequences.append(random_pair)

        else:

            used_pair = None
            for sequence in sequences:
                first = sequence[0]
                last = sequence[-1]
                for [i, j] in pairs:
                    if first in [i, j] or last in [i, j]:
                        used_pair = [i, j]
                        if i == last:
                            sequence.append(j)
                            break
                        elif j == last:
                            sequence.append(i)
                            break
                        elif i == first:
                            sequence.insert(0, j)  # prepend
                            break
                        elif j == first:
                            sequence.insert(0, i)  # prepend
                            break

            if used_pair:
                pairs.remove(used_pair)
            else:
                random_pair = pairs.pop()
                sequences.append(random_pair)

    for s in sequences:
        if s[-1] == s[0]:
            s.pop()

    return sequences


def sign(x):
    return copysign(1, x)


def vectors_have_same_direction(a, b):
    quotient = None
    for i in range(len(a)):
        ai = round(float(a[i]), 4)
        bi = round(float(b[i]), 4)
        if (ai == 0 and bi != 0) or (ai != 0 and bi == 0):
            return False
        elif ai != 0 and bi != 0:
            if not quotient:
                quotient = ai / bi
                if quotient < 0:
                    return False
            if abs(ai / bi - quotient) > 0.1:
                return False
    return True


def povray_array(python_list):
    n = len(python_list)
    s = 'array[{n}]{{'.format(n=n)
    for item in python_list:
        s += '{item}, '.format(item=str(item))
    s = s[:-2]  # remove trailing comma
    s += '}'
    return s


def rotate_90z(list_of_triples):
    new_list = []
    for (a, b, c) in list_of_triples:
        new_list.append((-b, a, c))
    return new_list
