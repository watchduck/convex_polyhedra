import sys
sys.path.append("..")

from classes.polyhedron import Polyhedron
from store import subgroup_names_and_coordinates

from bottle import template
from os import system


command = 'mkdir FILES'
system(command)


for (sg_name, sg_coordinate_tuples) in subgroup_names_and_coordinates.items():

    if not sg_name in ['trivial', 'C2 inv']:

        print('#####################', sg_name)

        sg_name = sg_name.replace(' ', '_')

        polyhedron = Polyhedron(coordinate_tuples=sg_coordinate_tuples)
        context = {'arrays': polyhedron.povray_arrays()}
        t = template('povray', context)
        f = open('delete_me_after_use.pov', 'w')
        f.write(t)
        f.close()

        image_name = 'Subgroup_of_Oh,_{name},_solid.png'.format(name=sg_name)
        image_size = 1000

        command = 'povray delete_me_after_use.pov +ua +fn Height={size} Width={size} +O{name} -D'.format(
            name=image_name,
            size=image_size
        )
        system(command)

        old_image_name = image_name
        image_name = image_name.replace(',', '\;')

        command = 'mv {name_with_comma} {name_with_semicolon}'.format(
            name_with_comma=old_image_name,
            name_with_semicolon=image_name
        )
        system(command)

        command = 'mv {image_name} FILES'.format(
            image_name=image_name
        )
        system(command)