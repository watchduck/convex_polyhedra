#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}


///////////////////////////// includes

#include "colors.inc"
#include "math.inc"
#include "transforms.inc"

#include "Wood14_with_turbulence_calm.inc"
#include "Wood14_with_turbulence_lightened.inc"


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


///////////////////////////// light


% if orthographic_str == '':

    #include "goban_light.inc"

% else:

    #declare P = array[8]{ <-1,-1,-1>, <-1,-1,1>, <-1,1,-1>, <-1,1,1>, <1,-1,-1>, <1,-1,1>, <1,1,-1>, <1,1,1> }
    #for( Index, 0, 7 )
        light_source{ P[Index]*500 color White*0.5 shadowless}
    #end

    light_source{
        Camera_Position*10
        color White*0.7 shadowless
        rotate <30, 30, 30>
    }


% end


///////////////////////////// values

#declare RadEdge = .008;

#declare DarkGray = rgb .08;
#declare LightGray = rgb .3;
