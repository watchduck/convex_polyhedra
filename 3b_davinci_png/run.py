from os import system

system('mkdir FILES')

names = {
        '4a', '4b',
        'truncated 4a', 'truncated 4a dual',
        'truncated 4b', 'truncated 4b dual',

        '6', '8',
        'truncated 6', 'truncated 6 dual',
        'truncated 8', 'truncated 8 dual',
        '6-8', '6-8 dual',
        'small rhombi 6-8', 'small rhombi 6-8 dual',
        'great rhombi 6-8', 'great rhombi 6-8 dual',
        'snub 6-8 left', 'snub 6-8 left dual',
        'snub 6-8 right', 'snub 6-8 right dual',

        '12', '20', '12 turned', '20 turned',
        'truncated 12', 'truncated 12 dual',
        'truncated 20', 'truncated 20 dual',
        '12-20', '12-20 dual',
        'small rhombi 12-20', 'small rhombi 12-20 dual',
        'great rhombi 12-20', 'great rhombi 12-20 dual',
        'snub 12-20 left', 'snub 12-20 left dual',
        'snub 12-20 right', 'snub 12-20 right dual',
}


image_size = 1000


for name in names:

    print('######################################', name)

    name = name.replace(' ', '_')

    povfile_name = 'pov/{n}.pov'.format(n=name)

    image_name = 'Polyhedron_{n},_davinci.png'.format(n=name)

    command = 'povray {povfile_name} +ua +fn Height={size} Width={size} +O{image_name} -D'.format(
        povfile_name=povfile_name,
        image_name=image_name,
        size=image_size
    )
    system(command)

    system('mv ' + image_name + ' FILES')