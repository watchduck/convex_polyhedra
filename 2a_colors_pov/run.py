import sys
sys.path.append("..")

from classes.polyhedron import Polyhedron
from utils.polyhedron_properties import polyhedron_properties

from sympy import sqrt
from bottle import template
from os import system


system('mkdir FILES_pov')
system('mkdir FILES_png')


polyhedron_names = [
    '4a', '4b', '6', '8', '12', '20',

    'truncated 4a', 'truncated 4b',

    'truncated 6', 'truncated 8', '6-8',
    'small rhombi 6-8', 'great rhombi 6-8', 'snub 6-8',

    'truncated 12', 'truncated 20', '12-20',
    'small rhombi 12-20', 'great rhombi 12-20', 'snub 12-20',
]


for name in polyhedron_names:

    print('################ NAME: ', name)

    properties = polyhedron_properties(name)
    coordinates = properties['coordinates']
    bluerad = properties['bluerad']
    related_platonic = properties['related_platonic']

    if related_platonic == '4':
        direction_colors = {
            'red': polyhedron_properties('4b')['coordinates'],
            'blue': polyhedron_properties('8')['coordinates'],
            'yellow': polyhedron_properties('4a')['coordinates']
        }
        if name in ['great rhombi 4-4', 'great rhombi 4-4 dual']:
            direction_colors['darkbrown'] \
                = polyhedron_properties('great rhombi 4-4 subsolid snub left')['coordinates']
            direction_colors['lightbrown'] \
                = polyhedron_properties('great rhombi 4-4 subsolid snub right')['coordinates']

    elif related_platonic == '8':
        direction_colors = {
            'red': polyhedron_properties('8')['coordinates'],
            'blue': polyhedron_properties('6-8')['coordinates'],
            'yellow': polyhedron_properties('6')['coordinates']
        }
        if name in ['great rhombi 6-8', 'great rhombi 6-8 dual']:
            direction_colors['darkbrown'] \
                = polyhedron_properties('great rhombi 6-8 subsolid snub left')['coordinates']
            direction_colors['lightbrown'] \
                = polyhedron_properties('great rhombi 6-8 subsolid snub right')['coordinates']

    elif related_platonic == '20':
        direction_colors = {
            'red': polyhedron_properties('20')['coordinates'],
            'blue': polyhedron_properties('12-20')['coordinates'],
            'yellow': polyhedron_properties('12')['coordinates']
        }
        if name in ['great rhombi 12-20', 'great rhombi 12-20 dual']:
            direction_colors['darkbrown'] \
                = polyhedron_properties('great rhombi 12-20 subsolid snub left')['coordinates']
            direction_colors['lightbrown'] \
                = polyhedron_properties('great rhombi 12-20 subsolid snub right')['coordinates']

    name = name.replace(' ', '_')

    polyhedron = Polyhedron(coordinate_tuples=coordinates, direction_colors=direction_colors)
    context = {
        'arrays': polyhedron.povray_arrays(factor=3/bluerad),
        'vertex_colors': polyhedron.vertex_colors,
        'edge_colors': polyhedron.edge_colors,
        'face_colors': polyhedron.face_colors,
    }
    t = template('povray', context)
    povfile_name = '{name}.pov'.format(name=name)
    f = open(povfile_name, 'w')
    f.write(t)
    f.close()

    image_name = '{name}.png'.format(name=name)
    image_size = 1000

    command = 'povray {povfile_name} +ua +fn Height={size} Width={size} +O{image_name} -D'.format(
        povfile_name=povfile_name,
        image_name=image_name,
        size=image_size
    )
    system(command)

    command = 'mv {povfile_name} FILES_pov'.format(
        povfile_name=povfile_name
    )
    system(command)

    command = 'mv {image_name} FILES_png'.format(
        image_name=image_name
    )
    system(command)
