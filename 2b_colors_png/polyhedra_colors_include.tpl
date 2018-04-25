#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"
#include "math.inc"
#include "transforms.inc"


///////////////////////////// camera and light

#declare phi = (1 + sqrt(5)) / 2;  // for icosahedral camera positions

#declare Camera_Position = {{!camera_position}};
camera{
    {{!orthographic_str}}
    location Camera_Position
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
    Axis_Rotate_Trans( Camera_Position, {{!camera_angle}} )
}

% if orthographic_str == '':

    light_source{ <-400, 500, -300> color White*0.9 shadowless}
    light_source{ <400, 200, 100> color White*0.4 shadowless}
    light_source{ Camera_Position  color White*0.2 shadowless}

% else:

    #declare P = array[8]{ <-1,-1,-1>, <-1,-1,1>, <-1,1,-1>, <-1,1,1>, <1,-1,-1>, <1,-1,1>, <1,1,-1>, <1,1,1> }
    #for( Index, 0, 7 )
        light_source{ P[Index]*500 color White*0.11 shadowless}
    #end

    light_source{
        Camera_Position*10
        color White*0.5 shadowless
        rotate <30, 30, 30>
    }


% end



sky_sphere{ pigment{ White } }


///////////////////////////// sizes

#declare RadVert = .12;
#declare RadEdge = .045;

#declare Rotate = 0*x;  // obsolete


///////////////////////////// colors

#declare TRed =  texture{ pigment{color rgb<1, .03, .03>} };
#declare TBlue = texture{ pigment{color rgb<.05, .05, 1>} };
#declare TYellow = texture{ pigment{color rgb<1, .65, 0>} };
#declare TGray = texture{ pigment{color rgb .62} };

#declare TLightgray = texture{ pigment{color rgb .85} };
#declare TLightblue = texture{ pigment{color rgb<.5, .5, .8>} };

#declare TReddish = texture{ pigment{color rgb<.7, .3, .3>} };
#declare TYellowish = texture{ pigment{color rgb<.72, .52, .25>} };

#declare TBrown = texture{ pigment{color rgb<1,0.8,0.65>*.4} };
#declare TDarkbrown = texture{ pigment{color rgb<1,0.8,0.65>*.2} };
#declare TLightbrown = texture{ pigment{color rgb<1,0.8,0.65>*.5} };

#declare TSphere = texture{ pigment{color rgbt<1, 1, 1, .4>} }
