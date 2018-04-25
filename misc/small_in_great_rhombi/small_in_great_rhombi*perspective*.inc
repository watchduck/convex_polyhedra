#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"
#include "math.inc"
#include "textures.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"
#include "MovePolygonEdges.inc"


///////////////////////////// camera and light

#declare Camera_Position = <13.2, 10.5, -45>;
camera{
    location Camera_Position
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
}

light_source{ <-400, 500, -300> color White*0.9 shadowless}
light_source{ <400, 200, 100> color White*0.4 shadowless}
light_source{ Camera_Position  color rgb<0.9,0.9,1>*0.2 shadowless}
sky_sphere{ pigment{ White } }


///////////////////////////// sizes

#declare RadVert = .115;
#declare RadEdge = .05;


///////////////////////////// colors

#declare GreatDark = rgb <0,41,0>/255;
#declare GreatLight = rgb <76,112,76>/255;

#declare SmallDark = rgb <82,9,37>/255;
#declare SmallLight = rgb <148,84,109>/255;

#declare BlueDark = rgb <12,13,104>/255;
#declare BlueLight = rgb <87,88,167>/255;

#declare LineColor = rgb .15;
#declare FaceColor = rgbt <1, 1, 1, .95>;
