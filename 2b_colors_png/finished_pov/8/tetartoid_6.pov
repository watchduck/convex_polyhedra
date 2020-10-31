#include "polyhedra_colors.inc"
#include "RotMatFromVectorAndAngle.inc"
#include "RotateDirOnDir.inc"

#declare TFaceTransp = texture{ pigment{color rgbt<1, 1, 1, .65>} }
#declare TYellowish =  texture{ pigment{color srgb <211,189,113>/255 } };
#declare TGreen =  texture{ pigment{color srgb <128,234,37>/255} };
#declare TGreenish =  texture{ pigment{color srgb <155,193,117>/255 } };

#declare Factor = 2.9;

#declare GreenPointTL = <-1, 1, -1>*Factor;
#declare YellowPointTR = <1, 1, -1>*Factor;
#declare YellowPointBL = <-1, -1, -1>*Factor;
#declare GreenPointBR = <1, -1, -1>*Factor;

#declare WhitePointL = (2*GreenPointTL + YellowPointBL) / 3;
#declare WhitePointR = (YellowPointTR + 2*GreenPointBR) / 3;

#declare Unit = union{
	sphere{GreenPointTL, RadVert  texture{TGreen} }
	sphere{GreenPointBR, RadVert  texture{TGreen} }
	sphere{YellowPointTR, RadVert  texture{TYellow} }
	sphere{YellowPointBL, RadVert  texture{TYellow} }

	polygon{ 5, GreenPointTL, YellowPointTR, GreenPointBR, YellowPointBL, GreenPointTL  texture{TFaceTransp} }

	sphere{ WhitePointL, RadVert  texture{TLightgray} }
	sphere{ WhitePointR, RadVert  texture{TLightgray} }

	cylinder{ WhitePointL, WhitePointR, RadEdge  texture{TRed} }

	cylinder{ GreenPointTL, WhitePointL, RadEdge  texture{TGreenish} }
	cylinder{ GreenPointBR, WhitePointR, RadEdge  texture{TGreenish} }

	cylinder{ YellowPointBL, WhitePointL, RadEdge  texture{TYellowish} }
	cylinder{ YellowPointTR, WhitePointR, RadEdge  texture{TYellowish} }
}

#declare Unit = union{
	object{ Unit }
	object{ Unit  rotate 180*x }
}

#declare Unit = union{
	object{ Unit }
	object{ Unit  rotate 90*y rotate 90*x }
	object{ Unit  rotate 90*x rotate 90*y }
}

object{ Unit 	
	//RotateDirOnDir(<1, 1, -1>, <0, 0, -1>)  rotate 165*z  // from yellow
	//RotateDirOnDir(<-1, 1, -1>, <0, 0, -1>)  rotate 75*z  // from green
}
