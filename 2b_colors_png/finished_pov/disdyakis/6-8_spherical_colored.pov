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
#declare TiltedCircles = union{
	object{CirclesX  pigment{color Red}}
	object{CirclesX rotate 90*y  pigment{color Blue}}
	object{CirclesX rotate 90*z  pigment{ color rgb<0, 0.35, 0> }}
}
#declare OctahedronCircles = union{
	object{Circle}
	object{Circle  rotate 90*x  }
	object{Circle  rotate 90*z  }
	pigment{color srgb .22}
}


// vertices of the disdyakis dodecahedron

#declare Abs = array[4]{ 0, (sqrt(2)), (3/7 + 6*sqrt(2)/7), (6/7 + 9*sqrt(2)/7), }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare WhiteVertices = union{
	union{
		#for( Index, 0, 25 )
		    sphere{ vnormalize(P[Index]) * RadSphere, RadVert*1.2 }
		#end
		pigment{color srgb .9}
	}
}

object{OctahedronCircles no_shadow}
object{TiltedCircles no_shadow}
object{WhiteVertices no_shadow}
sphere{<0, 0, 0>, RadSphere  texture{TSphere}  no_shadow}

