#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}


///////////////////////////// includes

#include "colors.inc"
#include "math.inc"
#include "Wood14_with_turbulence.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"
#include "MovePolygonEdges.inc"


///////////////////////////// camera

#declare Camera_Position = <13.2, 10.5, -45>;
camera{
    location Camera_Position
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
}


///////////////////////////// light

#local LightType = "normal";

#if(LightType="fancy")
    #include "goban_light.inc"
    light_source{ <0, -500, 0> color White*0.4 shadowless}
#end
#if(LightType="normal")
    light_source{ <-400, 500, -300> color White*0.9 shadowless}
    light_source{ <400, 200, 100> color White*0.4 shadowless}
    light_source{ Camera_Position  color rgb<0.9,0.9,1>*0.2 shadowless}
#end
sky_sphere{ pigment{ White } }


//////////////////////////////////////////////////////////

#declare RadEdge = 0.02;
#declare RadFrame = 0.023;  // also translucent face offset

#declare EdgeColor = rgb<.8, .23, .12>*.05;
#declare TranslucentColor = rgbt <.8, .8, .8, .85>;
