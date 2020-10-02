#include "header.inc"


// edges (great circles)

#declare Circle = torus{ 
	RadSphere, RadEdge
	texture{ TGray }
}
#declare OctantCircles = union{
	object{Circle}
	object{Circle  rotate 90*x  }
	object{Circle  rotate 90*z  }
}

#declare CirclesX = union{ 
	object{Circle  rotate 45*x  }
	object{Circle  rotate -45*x  }
}
#declare CirclesY = object{CirclesX  rotate 90*z  }
#declare CirclesZ = object{CirclesX  rotate 90*y  rotate 90*z  }
#declare TiltedCircles = union{
	object{CirclesX}
	object{CirclesY}
	object{CirclesZ}
}

#declare Circles = union{
	object{OctantCircles}
	object{TiltedCircles}
}


// faces (sphere segments)

#declare Faces = intersection{
	sphere{<0, 0, 0>, RadSphere }
	plane { -y, 0  rotate 45*z  }
	plane { -y, 0  rotate -45*z  }
	plane { y, 0  rotate 45*x }
	plane { y, 0  rotate -90*z }
}

#declare Faces = union{
	object{Faces}
	object{Faces  rotate 90*z  }
	object{Faces  rotate 180*z  }
	object{Faces  rotate 270*z  }
}
#declare FacesZ = union{
	object{Faces}
	object{Faces  rotate 180*y  }
}
#declare FacesX = object{FacesZ  rotate 90*y  }
#declare FacesY = object{FacesZ  rotate 90*x  }
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

#declare Abs = array[4]{ 0, (sqrt(2)/7 + 4/7), 1, (sqrt(2)) }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};
#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};
#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

#include "spherical_footer.inc"

