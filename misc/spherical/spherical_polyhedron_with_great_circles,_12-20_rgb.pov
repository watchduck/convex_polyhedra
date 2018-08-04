#include "polyhedra_colors.inc"
#include "math.inc"

#declare MajorRad = 4.1;
#declare MinorRad = .05;

sphere{<0, 0, 0>, MajorRad   pigment{color rgbt <.9, .9, .9, .6>}  }


////////////////////////////////////////// tori

#declare Torus = torus{ MajorRad, MinorRad }

// arctan(1/phi) is the smaller diagonal angle in the golden rectangle.
#declare Angle = atand( 2 / (1+sqrt(5)) );

#declare A = object{ Torus rotate Angle*z }
#declare B = object{ Torus rotate -Angle*z }


object { A   pigment{color rgb<0, 0, .8>} }  // dark blue
object { B   pigment{color rgb<.4, .7, 1>} }  // light blue


union{
    object { B   pigment{color rgb<.6, 0, 0>} }  // dark red
    object { A   pigment{color rgb<1, .5, .5>} }  // light red
    rotate 90*y rotate 90*x
}

union{
    object { A   pigment{color rgb<0, .35, 0>} }  // dark green
    object { B   pigment{color rgb<.6, 1, .2>} }  // light green
    rotate 90*x rotate 90*y
}


////////////////////////////////////////// vertices

#declare Factor = MajorRad/(1/2 + sqrt(5)/2);
#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }
#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#for( Index, 0, 29 )
    sphere{ P[Index], MinorRad*2 }
#end