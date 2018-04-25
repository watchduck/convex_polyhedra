from bottle import template
from os import system


names_dict = {
    '4': [
        '4',
        'truncated 4a', 'truncated 4b',
    ],
    '8': [
        '8',
        'truncated 6', 'truncated 8',
        '6-8',
        'small rhombi 6-8', 'great rhombi 6-8',
        'snub 6-8 left', 'snub 6-8 right',
    ],
    '20': [
        '20', '20 turned',
        'truncated 12', 'truncated 20',
        '12-20',
        'small rhombi 12-20', 'great rhombi 12-20',
        'snub 12-20 left', 'snub 12-20 right',
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

ortho_perspective_names = {
    '4': {'red': 'red', 'blue': '2-fold', 'yellow': 'yellow', 'redyellow': '1-fold'},
    '8': {'red': '4-fold', 'blue': '2-fold', 'yellow': '3-fold'},
    '20': {'red': '5-fold', 'blue': '2-fold', 'yellow': '3-fold'}
}

perspective = 'blue'  # 'standard', 'red', 'blue' or 'yellow' (or 'redyellow')
image_size = 1000

for related_platonic, file_names in names_dict.items():

    system('mkdir ' + related_platonic)

    for name in file_names:

        print('######################################', name)

        name = name.replace(' ', '_')

        if perspective == 'standard':
            camera_position = '<13.2, 10.5, -45>'
            camera_angle = '0'
            orthographic_str = ''
            perspective_str = ''
        else:
            (camera_position, camera_angle) = ortho_camera_parameters[related_platonic][perspective]
            orthographic_str = 'orthographic'
            perspective_str = '_from_' + ortho_perspective_names[related_platonic][perspective]

        context = {
            'camera_position': camera_position,
            'camera_angle': camera_angle,
            'orthographic_str': orthographic_str
        }

        t = template('polyhedra_with_duals_include', context)
        f = open('polyhedra_with_duals.inc', 'w')
        f.write(t)
        f.close()

        image_name = 'Dual_compound_{n}{p}.png'.format(n=name, p=perspective_str)

        povfile_name = '{r}/{n}.pov'.format(r=related_platonic, n=name)

        command = 'povray {povfile_name} +ua +fn Height={size} Width={size} +O{image_name} -D'.format(
            povfile_name=povfile_name,
            image_name=image_name,
            size=image_size
        )
        system(command)

        command = 'mv ' + image_name + ' ' + related_platonic
        system(command)
