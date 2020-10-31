#include "polyhedra_colors.inc"
#include "PlaneNormDistFromPoints.inc"
#include "RotateDirOnDir.inc"

// The tetartoid consists of the enlarged dark or light faces of the dyakis dodecahedron.
// The points in P are those of the disdyakis dodecahedron.

#declare TFaceTransp = texture{ pigment{color rgbt<1, 1, 1, .65>} }
#declare TYellowish =  texture{ pigment{color srgb <211,189,113>/255 } };
#declare TGreen =  texture{ pigment{color srgb <128,234,37>/255} };
#declare TGreenish =  texture{ pigment{color srgb <155,193,117>/255 } };

#declare Factor = 1.3;

#declare Abs = array[4]{ 0, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]> }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};
#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};
#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};


#declare SolidUnit = intersection{
	plane{ PlaneNormDistFromPoints(P[12], P[7], P[14])  texture{TFaceTransp} }
}
#declare SolidUnit = intersection{
	object{SolidUnit}
	object{SolidUnit  rotate 180*z}
}
#declare SolidUnit = intersection{
	object{SolidUnit}
	object{SolidUnit  rotate 180*y}
}
#declare SolidUnit = intersection{
	object{SolidUnit}
	object{SolidUnit  rotate 90*x rotate 90*y}
	object{SolidUnit  rotate 90*y rotate 90*x}
}

#declare NewBluePoint = <0, 2.36635, -1.1832>*Factor;
#declare GreenPoint = <1.95371, 1.95371, -1.95371>*Factor;
#declare WhitePoint = <1.10819, 0.459027, -2.67542>*Factor;
#declare YellowPoint = P[17];
#declare RedPoint = P[12];

#declare DetailUnit = union{
	sphere{YellowPoint, RadVert  texture{TYellow} }
	sphere{GreenPoint, RadVert  texture{TGreen} }
	sphere{WhitePoint, RadVert  texture{TLightgray} }
	cylinder{ WhitePoint, RedPoint, RadEdge  texture{TRed} }
	cylinder{ WhitePoint, GreenPoint, RadEdge  texture{TGreenish} }
	cylinder{ WhitePoint, YellowPoint, RadEdge  texture{TYellowish} }
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 180*z}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 180*y}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*y rotate 90*x}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*x rotate 90*y}
}

union{
	object{SolidUnit }
	object{DetailUnit no_shadow}

	//RotateDirOnDir(<-1, 1, -1>, <0, 0, -1>)  rotate 165*z  // from yellow
	//RotateDirOnDir(<1, 1, -1>, <0, 0, -1>)  rotate 75*z  // from green
	//RotateDirOnDir(WhitePoint, <0, 0, -1>)  rotate -26*z  // from white

	scale -x
	rotate clock/2 * y
}

/*
povray tetartoid.pov +ua +fn Height=4000 Width=4000 -D

for i in $(seq -f "%03g" 0 359); do povray tetartoid.pov Height=550 Width=550 -D -k$i -O$i; done
for i in $(seq -f "%03g" 0 359); do convert $i.png -crop 500x495+25+30 +repage $i.png; done
*/

