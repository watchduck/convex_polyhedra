#include "polyhedra_colors.inc"
#include "math.inc"

#declare MajorRad = 4.1;
#declare MinorRad = .05;


////////////////////////////////////////// vertices

#declare Torus = union{  // actual torus removed
    sphere{<0, MajorRad, 0>, 6.5*MinorRad }
    sphere{<0, -MajorRad, 0>, 6.5*MinorRad }
}

// arctan(1/phi) is the diagonal angle in the golden rectangle.
#declare Angle = atand(2 / (1+sqrt(5)));

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


////////////////////////////////////////// edges

#declare Factor = 2 * MajorRad / sqrt(2*(5+sqrt(5)));
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }
#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare R = MinorRad * 2/3;
union{
    cylinder{ P[6], P[9], R } cylinder{ P[9], P[10], R } cylinder{ P[10], P[6], R }
    cylinder{ P[1], P[5], R } cylinder{ P[5], P[2], R } cylinder{ P[2], P[1], R }
    pigment{ color rgb .9 }
}

#declare R = MinorRad * 4/3;
union{
    cylinder{ P[0], P[3], R } cylinder{ P[3], P[7], R } cylinder{ P[7], P[11], R } cylinder{ P[11], P[8], R } cylinder{ P[8], P[4], R } cylinder{ P[4], P[0], R }
    pigment{ color rgb .1 }
}

#declare R = MinorRad;
union{
    cylinder{ P[4], P[6], R } cylinder{ P[0], P[6], R } cylinder{ P[3], P[6], R }
    cylinder{ P[3], P[9], R } cylinder{ P[7], P[9], R } cylinder{ P[11], P[9], R }
    cylinder{ P[11], P[10], R } cylinder{ P[8], P[10], R } cylinder{ P[4], P[10], R }
    cylinder{ P[0], P[2], R } cylinder{ P[4], P[2], R } cylinder{ P[8], P[2], R }
    cylinder{ P[0], P[1], R } cylinder{ P[3], P[1], R } cylinder{ P[7], P[1], R }
    cylinder{ P[7], P[5], R } cylinder{ P[11], P[5], R } cylinder{ P[8], P[5], R }
    pigment{ color rgb .5 }
}


////////////////////////////////////////// faces

#declare Faces = array[20]{array[4]{6, 3, 0, 6}, array[4]{8, 2, 5, 8}, array[4]{1, 2, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 0, 1}, array[4]{1, 7, 3, 1}, array[4]{1, 7, 5, 1}, array[4]{9, 6, 10, 9}, array[4]{9, 7, 3, 9}, array[4]{9, 6, 3, 9}, array[4]{4, 2, 0, 4}, array[4]{4, 6, 10, 4}, array[4]{4, 6, 0, 4}, array[4]{4, 8, 10, 4}, array[4]{4, 8, 2, 4}, array[4]{11, 7, 5, 11}, array[4]{11, 8, 5, 11}, array[4]{11, 8, 10, 11}, array[4]{11, 9, 10, 11}, array[4]{11, 9, 7, 11}};

union{
    #for( Index, 0, 19 )
        #local FaceArray = Faces[Index];
        polygon{ 3,
            #for(VertexIndexInFace, 0, 2)
                P[FaceArray[VertexIndexInFace]]
            #end
        }
    #end
    texture{ TFaceTransp }
}