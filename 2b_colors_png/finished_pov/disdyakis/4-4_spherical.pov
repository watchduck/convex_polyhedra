#include "header.inc"


// edges (great circles)

#declare Circle = torus{ 
	RadSphere, RadEdge
	texture{ TGray }
}
#declare CirclesX = union{
	object{Circle rotate 45*x}
	object{Circle rotate -45*x}
}
#declare Circles = union{
	object{CirclesX}
	object{CirclesX rotate 90*y}
	object{CirclesX rotate 90*z}
}


// faces (sphere segments)

#declare Faces = intersection{
	sphere{<0, 0, 0>, RadSphere }
	plane { -y, 0  rotate 45*z  }
	plane { -y, 0  rotate -45*z  }
	plane { y, 0  rotate 45*x }
}
#declare Faces = union{
	object{Faces}
	object{Faces  scale -y  }
}
#declare FacesZ = union{
	object{Faces}
	object{Faces  scale -z  }
}
#declare FacesX = object{ FacesZ  rotate 90*y rotate 90*x  }
#declare FacesY = object{ FacesZ  rotate 90*x rotate 90*y  }
#declare Faces = union{
	object{FacesX}
	object{FacesY}
	object{FacesZ}
}
#declare Faces = union{
	object{Faces  texture{ TDarkbrown }  }
	object{Faces  rotate 90*z  texture{ TLightbrown }  }
}


// vertices

#declare Abs = array[3]{ 0, (3*sqrt(2)/8), (3*sqrt(2)/4), }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{2, 3, 9, 12};
#declare YellowVertices = array[4]{1, 4, 10, 11};
#declare BlueVertices = array[6]{0, 5, 6, 7, 8, 13};

#include "spherical_footer.inc"

