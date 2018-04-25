#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"
#include "math.inc"
#include "textures.inc"
#include "transforms.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"
#include "MovePolygonEdges.inc"


///////////////////////////// camera and light

#declare phi = (1 + sqrt(5)) / 2;  // for icosahedral camera positions

#declare Direction = "20yellow";

#if( Direction = "4red" )
    #declare Camera_Position = vnormalize(<-1, 1, -1>)*48.3;
    #declare Camera_Angle = 180;
#end
#if( Direction = "4blue" )
    #declare Camera_Position = vnormalize(<0, 0, -1>)*48.3;
    #declare Camera_Angle = -45;
#end
#if( Direction = "4redyellow" )
    #declare Camera_Position = vnormalize(<0, 1, -1>)*48.3;
    #declare Camera_Angle = 0;
#end

#if( Direction = "8red" )
    #declare Camera_Position = vnormalize(<0, 0, -1>)*48.3;
    #declare Camera_Angle = 0;
#end
#if( Direction = "8blue" )
    #declare Camera_Position = vnormalize(<0, 1, -1>)*48.3;
    #declare Camera_Angle = 0;
#end
#if( Direction = "8yellow" )
    #declare Camera_Position = vnormalize(<1, 1, -1>)*48.3;
    #declare Camera_Angle = 0;
#end

#if( Direction = "20red" )
    #declare Camera_Position = vnormalize(<0, 1, -phi>)*48.3;
    #declare Camera_Angle = 0;
#end
#if( Direction = "20blue" )
    #declare Camera_Position = vnormalize(<0, 0, -1>)*48.3;
    #declare Camera_Angle = 0;
#end
#if( Direction = "20yellow" )
    #declare Camera_Position = vnormalize(<0, phi, -1/phi>)*48.3;
    #declare Camera_Angle = 180;
#end



camera{
    orthographic
    location Camera_Position
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
    Axis_Rotate_Trans( Camera_Position, Camera_Angle )
}


#declare P = array[8]{ <-1,-1,-1>, <-1,-1,1>, <-1,1,-1>, <-1,1,1>, <1,-1,-1>, <1,-1,1>, <1,1,-1>, <1,1,1> }
#for( Index, 0, 7 )
    light_source{ P[Index]*500 color White*0.11 shadowless}
#end
light_source{
    Camera_Position*10
    color White*0.5 shadowless
    rotate <30, 30, 30>
}

sky_sphere{ pigment{ White } }


///////////////////////////// sizes

#declare RadVert = .115;
#declare RadEdge = .05;


///////////////////////////// colors

#declare GreatDark = rgb <0,41,0>/255;
#declare GreatLight = rgb <76,112,76>/255;

#declare SmallDark = rgb <82,9,37>/255;
#declare SmallLight = rgb <148,84,109>/255;

#declare LineColor = rgb .15;
#declare FaceColor = rgbt <1, 1, 1, .95>;
