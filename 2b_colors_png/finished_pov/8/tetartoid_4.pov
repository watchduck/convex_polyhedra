#include "polyhedra_colors.inc"
#include "RotMatFromVectorAndAngle.inc"
#include "RotateDirOnDir.inc"

#declare TFaceTransp = texture{ pigment{color rgbt<1, 1, 1, .65>} }
#declare TYellowish =  texture{ pigment{color srgb <211,189,113>/255 } };
#declare TGreen =  texture{ pigment{color srgb <128,234,37>/255} };
#declare TGreenish =  texture{ pigment{color srgb <155,193,117>/255 } };

#declare Factor = 2.9;

#declare GreenPointA = <-1, 1, -1>*Factor;
#declare GreenPointB = <1, -1, -1>*Factor;
#declare GreenPointC = <1, 1, 1>*Factor;

#declare WhitePointA = (2*GreenPointA + GreenPointB) / 3;
#declare WhitePointB = (GreenPointA + 2*GreenPointB) / 3;

#declare YellowPoint = (GreenPointA + GreenPointB + GreenPointC) / 3;

#declare Unit = union{
	sphere{GreenPointA, RadVert  texture{TGreen} }
	sphere{GreenPointB, RadVert  texture{TGreen} }
	sphere{GreenPointC, RadVert  texture{TGreen} }
	sphere{YellowPoint, RadVert  texture{TYellow} }

	polygon{ 4, GreenPointA, GreenPointB, GreenPointC, GreenPointA  texture{TFaceTransp} }

	sphere{ WhitePointA, RadVert  texture{TLightgray} }
	sphere{ WhitePointB, RadVert  texture{TLightgray} }

	cylinder{ WhitePointA, WhitePointB, RadEdge  texture{TRed} }

	cylinder{ GreenPointA, WhitePointA, RadEdge  texture{TGreenish} }
	cylinder{ GreenPointB, WhitePointB, RadEdge  texture{TGreenish} }

	cylinder{ WhitePointB, YellowPoint, RadEdge  texture{TYellowish} }
}

#declare Unit = union{
	object{ Unit }
	object{ Unit  RotMatFromVectorAndAngle(<1,1,-1>, 2*pi/3) }
	object{ Unit  RotMatFromVectorAndAngle(<1,1,-1>, 4*pi/3) }
}

#declare Unit = union{
	object{ Unit }
	object{ Unit  rotate 180*z }
}

#declare Unit = union{
	object{ Unit }
	object{ Unit  rotate 180*x }
}

object{ Unit 	
	//RotateDirOnDir(<1, 1, -1>, <0, 0, -1>)  rotate 165*z  // from yellow
	RotateDirOnDir(<-1, 1, -1>, <0, 0, -1>)  rotate 75*z  // from green
}
