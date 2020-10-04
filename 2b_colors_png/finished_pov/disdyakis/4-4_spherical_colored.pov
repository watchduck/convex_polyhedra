#include "header.inc"
#include "RotMatFromVectorAndAngle.inc"
#include "colors.inc"


// edges (great circles)

#declare Circle = torus{RadSphere, RadEdge}
#declare CirclesX = union{
	object{Circle rotate 45*x}
	object{Circle rotate -45*x}
	sphere{RadSphere*x, BigRadVert} sphere{RadSphere*-x, BigRadVert}
}
#declare Circles = union{
	object{CirclesX  pigment{color Red}}
	object{CirclesX rotate 90*y  pigment{color Blue}}
	object{CirclesX rotate 90*z  pigment{ color rgb<0, 0.35, 0> }}
}


// vertices of the tetrakis hexahedron

#declare Abs = array[3]{ 0, (3*sqrt(2)/4), (9*sqrt(2)/8), }
#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }


#declare WhiteVertices = union{
	union{
		#for( Index, 0, 13 )
		    sphere{ vnormalize(P[Index]) * RadSphere, RadVert*1.2 }
		#end
		pigment{color srgb .9}
	}
}

object{Circles no_shadow}
object{WhiteVertices no_shadow}
sphere{<0, 0, 0>, RadSphere  texture{TSphere}  no_shadow}

