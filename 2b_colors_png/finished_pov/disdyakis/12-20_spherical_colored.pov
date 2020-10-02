#include "header.inc"
#include "RotMatFromVectorAndAngle.inc"


// edges (great circles)

#declare Circle = torus{ 
	RadSphere, RadEdge
}
#declare OctaRadVert = RadVert*1.3;
#declare Octahedron = union{
	object{Circle}
	object{Circle  rotate 90*x  }
	object{Circle  rotate 90*z  }
	sphere{RadSphere*x, OctaRadVert} sphere{RadSphere*-x, OctaRadVert}
	sphere{RadSphere*y, OctaRadVert} sphere{RadSphere*-y, OctaRadVert}
	sphere{RadSphere*z, OctaRadVert} sphere{RadSphere*-z, OctaRadVert}
}

#declare PRot = <0, 1, -(1/2 + sqrt(5)/2)>;  // icosahedron point 6
#declare PRotNorm = vnormalize(PRot);
#declare Fifth = 2*pi/5;

#declare Colors = array[5]{srgb .22, srgb<255,0,0>/255, srgb<233,132,0>/255, srgb<0,65,255>/255, srgb<0,143,0>/255};

#declare FiveOctahedra = union{
	#for (Times, 0, 4)
		object{
			Octahedron
			RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
			pigment{color Colors[Times]}
		}
	#end
}


// vertices of the disdyakis triacontahedron

#declare Abs = array[10]{ 0, (-sqrt(5)/4 + 5/4), (sqrt(5)/22 + 15/22), (sqrt(5)/2), (sqrt(5)/6 + 5/6), (5/11 + 4*sqrt(5)/11), (sqrt(5)/4 + 5/4), (5/6 + sqrt(5)/2), (9*sqrt(5)/22 + 25/22), (sqrt(5)), }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare WhiteVertices = union{
	union{
		#for( Index, 0, 61 )
		    sphere{ vnormalize(P[Index]) * RadSphere, RadVert*1.2 }
		#end
		pigment{color srgb .9}
	}
}

object{FiveOctahedra no_shadow}
object{WhiteVertices no_shadow}
sphere{<0, 0, 0>, RadSphere  texture{TSphere}  no_shadow}

