#include "header.inc"
#include "RotMatFromVectorAndAngle.inc"


// edges (great circles)

#declare Circle = torus{ 
	RadSphere, RadEdge
	texture{ TGray }
}
#declare Octahedron = union{
	object{Circle}
	object{Circle  rotate 90*x  }
	object{Circle  rotate 90*z  }
}

#declare PRot = <0, 1, -(1/2 + sqrt(5)/2)>;  // icosahedron point 6
#declare PRotNorm = vnormalize(PRot);
#declare Fifth = 2*pi/5;

#declare Circles = union{
	#for (Times, 0, 4)
		object{
			Octahedron
			RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		}
	#end
}


// faces (sphere segments)

#declare Segment = intersection{
	sphere{<0, 0, 0>, RadSphere }
	plane { -x, 0  }
	plane { -x, 0  rotate 90*z  }
	plane { x, 0  RotMatFromVectorAndAngle(PRotNorm, 1/2*Fifth)  }
}

#declare Face = union{
	#for (Times, 0, 4)
		object{
			Segment
			RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		}
	#end
}

#declare Faces = union{
	object{Face}
	object{Face  scale -y  scale -x  }
}
#declare Faces = union{
	object{Faces}
	object{Faces  scale -y  scale -x  }
}
#declare FacesZ = union{
	object{Faces}
	object{Faces  scale -z  scale -x  }
}

#declare FacesX = object{
	FacesZ
	rotate 90*y  rotate 90*x
}
#declare FacesY = object{
	FacesZ
	rotate 90*x  rotate 90*y
}

#declare Faces = union{
	object{FacesX}
	object{FacesY}
	object{FacesZ}
}
#declare Faces = union{
	object{Faces  texture{ TDarkbrown }  }
	object{Faces  scale -x  texture{ TLightbrown }  }
}


// vertices

#declare Abs = array[10]{ 0, (-sqrt(5)/4 + 5/4), (sqrt(5)/22 + 15/22), (sqrt(5)/2), (sqrt(5)/6 + 5/6), (5/11 + 4*sqrt(5)/11), (sqrt(5)/4 + 5/4), (5/6 + sqrt(5)/2), (9*sqrt(5)/22 + 25/22), (sqrt(5)), }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare RedVertices = array[12]{3, 4, 13, 14, 28, 29, 32, 33, 47, 48, 57, 58};

#declare YellowVertices = array[20]{1, 2, 9, 10, 11, 12, 19, 20, 26, 27, 34, 35, 41, 42, 49, 50, 51, 52, 59, 60};

#declare BlueVertices = array[30]{0, 5, 6, 7, 8, 15, 16, 17, 18, 21, 22, 23, 24, 25, 30, 31, 36, 37, 38, 39, 40, 43, 44, 45, 46, 53, 54, 55, 56, 61};

#include "spherical_footer.inc"

