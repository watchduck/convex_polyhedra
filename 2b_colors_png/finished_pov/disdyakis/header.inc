#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"
#include "math.inc"
#include "textures.inc"

#declare VariantIndex = 0;  // 0 disdyakis, 1 rhombic, 2 platonic (like cube), 3 platonic (like octahedron), 4 deltoidal

///////////////////////////// camera and light

#declare Camera_Position = <13.2, 10.5, -45>;
camera{
    location Camera_Position
    right    x*image_width/image_height
    angle    12
    look_at  <0, 0, 0>
}

light_source{ <-400, 500, -300> color White*0.9}
light_source{ <400, 200, 100> color White*0.4}
light_source{ Camera_Position  color rgb<0.9,0.9,1>*0.2}
sky_sphere{ pigment{ White } }


///////////////////////////// sizes

#declare RadVert = .12;
#declare BigRadVert = RadVert*1.3;  // used in spherical colored

#declare RadEdge = .045;

#declare RadSphere = 4.7;


///////////////////////////// colors

#declare TRed =  texture{ pigment{color srgb<255,40,40>/255} };
#declare TBlue = texture{ pigment{color srgb<50,100,220>/255} };
#declare TYellow = texture{ pigment{color srgb<255,190,0>/255} };
#declare TGray = texture{ pigment{color srgb .5} };

#declare TDarkbrown = texture{ pigment{color srgb<219,179,142>/255} };
#declare TLightbrown = texture{ pigment{color srgb<245,234,223>/255} };

#declare TSphere = texture{ pigment{color rgbt<1, 1, 1, .4>} }


/* run
povray 4-4.pov +ua +fn Height=4000 Width=4000
povray 6-8_spherical.pov +ua +fn Height=4000 Width=4000
povray 12-20_spherical_colored.pov +ua +fn Height=4000 Width=4000
*/
