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
    'small rhombi 6-8', 'great rhombi 6-8',
    'snub 6-8',

    'truncated 12', 'truncated 20', '12-20',
    'small rhombi 12-20', 'great rhombi 12-20',

    'truncated 4 red triangles dual', 'truncated 4 yellow triangles dual',

    'truncated 6 dual', 'truncated 8 dual', '6-8 dual',
    'small rhombi 6-8 dual', 'great rhombi 6-8 dual',

    'truncated 12 dual', 'truncated 20 dual', '12-20 dual',
    'small rhombi 12-20 dual', 'great rhombi 12-20 dual',
]


for name in polyhedron_names:

    print('################ NAME: ', name)

    properties = polyhedron_properties(name)

    coordinates = properties['coordinates']
    midrad = properties['midrad']

    name = name.replace(' ', '_')

    polyhedron = Polyhedron(coordinate_tuples=coordinates)
    context = {
        'factor': 3/midrad,
        'array_abs': polyhedron.povray_array_abs(),
        'array_P': polyhedron.povray_array_P(),
        'array_edges': polyhedron.povray_array_edges(),
        'davinci': polyhedron.povray_davinci(.2, .2),
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
