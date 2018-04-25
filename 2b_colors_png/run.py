import sys
sys.path.append("..")

from utils.polyhedron_properties import polyhedron_properties

from sympy import sqrt
from bottle import template
from os import system


names_dict = {

    '4': [
        '4a', '4b', 'pair 4-4',
        'truncated 4a', 'truncated 4a dual',
        'truncated 4b', 'truncated 4b dual',
        '4-4', '4-4 dual',
        'small rhombi 4-4', 'small rhombi 4-4 dual',
        'great rhombi 4-4', 'great rhombi 4-4 dual',
        'snub 4-4 left', 'snub 4-4 left dual',
        'snub 4-4 right', 'snub 4-4 right dual',

        'great rhombi 4-4 subsolid snub left', 'great rhombi 4-4 subsolid snub right',

        'chamfered 4a', 'chamfered 4a dual', 'chamfered 4a edeq',
        'chamfered 4b', 'chamfered 4b dual', 'chamfered 4b edeq'
    ],

    '8': [
        '6', '8', '12 pyritohedral', '20 pyritohedral', 'pair 6-8', 'stellated 8',
        'truncated 6', 'truncated 6 dual',
        'truncated 8', 'truncated 8 dual',
        '6-8', '6-8 dual',
        'small rhombi 6-8', 'small rhombi 6-8 dual',
        'great rhombi 6-8', 'great rhombi 6-8 dual',
        'snub 6-8 left', 'snub 6-8 left dual',
        'snub 6-8 right', 'snub 6-8 right dual',

        'great rhombi 6-8 subsolid snub left', 'great rhombi 6-8 subsolid snub right',
        'great rhombi 6-8 subsolid pyritohedral', 'great rhombi 6-8 subsolid tetrahedral',
        'great rhombi 6-8 subsolid 20',

        'chamfered 6', 'chamfered 6 dual', 'chamfered 6 edeq',
        'chamfered 8', 'chamfered 8 dual', 'chamfered 8 edeq',

        'pyritohedron', 'chamfered 6 pyritohedral'
    ],

    '20': [
        '12', '20', 'pair 12-20',
        'truncated 12', 'truncated 12 dual',
        'truncated 20', 'truncated 20 dual',
        '12-20', '12-20 dual',
        'small rhombi 12-20', 'small rhombi 12-20 dual',
        'great rhombi 12-20', 'great rhombi 12-20 dual',
        'snub 12-20 left', 'snub 12-20 left dual',
        'snub 12-20 right', 'snub 12-20 right dual',

        'great rhombi 12-20 subsolid snub left', 'great rhombi 12-20 subsolid snub right',

        'chamfered 12', 'chamfered 12 dual', 'chamfered 12 edeq',
        'chamfered 20', 'chamfered 20 dual', 'chamfered 20 edeq'
    ]

}


ortho_camera_parameters = {
    '4': {
        'red': ('vnormalize(<-1, 1, -1>)*48.3', '180'),
        'blue': ('vnormalize(<0, 0, -1>)*48.3', '-45'),
        'yellow': ('vnormalize(<1, 1, -1>)*48.3', '180'),
        'redyellow': ('vnormalize(<0, 1, -1>)*48.3', '0'),
    },
    '8': {
        'red': ('vnormalize(<0, 0, -1>)*48.3', '0'),
        'blue': ('vnormalize(<0, 1, -1>)*48.3', '0'),
        'yellow': ('vnormalize(<1, 1, -1>)*48.3', '0'),
    },
    '20': {
        'red': ('vnormalize(<0, 1, -phi>)*48.3', '0'),
        'blue': ('vnormalize(<0, 0, -1>)*48.3', '0'),
        'yellow': ('vnormalize(<0, phi, -1/phi>)*48.3', '180'),
    },
}


image_set = 'mid'  # 'blue' or 'mid'
perspective = 'standard'  # 'standard', 'red', 'blue' or 'yellow' (or 'redyellow')
image_size = 1000
show_sphere = False

for related_platonic, file_names in names_dict.items():

    system('mkdir ' + related_platonic)

    for name in file_names:

        print('######################################', name)

        polyhedron_props = polyhedron_properties(name)

        name = name.replace(' ', '_')

        if image_set == 'blue':
            bluerad = polyhedron_props['bluerad']
            factor = 3 / bluerad
        elif image_set == 'mid':
            midrad = polyhedron_props['midrad']
            factor = 3 / midrad

        if show_sphere:
            sphere = 'sphere{ <0, 0, 0>, 3   texture{ TSphere }  }'
        else:
            sphere = ''

        if perspective == 'standard':
            camera_position = '<13.2, 10.5, -45>'
            camera_angle = '0'
            orthographic_str = ''
            perspective_str = ''
        else:
            (camera_position, camera_angle) = ortho_camera_parameters[related_platonic][perspective]
            orthographic_str = 'orthographic'
            perspective_str = '_from_' + perspective

        context = {
            'camera_position': camera_position,
            'camera_angle': camera_angle,
            'orthographic_str': orthographic_str
        }

        t = template('polyhedra_colors_include', context)
        f = open('polyhedra_colors.inc', 'w')
        f.write(t)
        f.close()

        context = {
            'factor': factor,
            'sphere': sphere
        }

        blue_str = '_blue' if image_set == 'blue' else ''

        t = template('tpl/' + name, context)
        povfile_name = '{n}{b}{p}.pov'.format(n=name, b=blue_str, p=perspective_str)
        f = open(povfile_name, 'w')
        f.write(t)
        f.close()

        image_name = 'Polyhedron_{n}{b}{p}.png'.format(n=name, b=blue_str, p=perspective_str)

        command = 'povray {povfile_name} +ua +fn Height={size} Width={size} +O{image_name} -D'.format(
            povfile_name=povfile_name,
            image_name=image_name,
            size=image_size
        )
        system(command)

        command = 'mv ' + image_name + ' ' + related_platonic
        system(command)

        command = 'mv ' + povfile_name + ' ' + related_platonic
        system(command)