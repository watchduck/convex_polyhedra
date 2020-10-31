#include "header.inc"
#include "PlaneNormDistFromPoints.inc"

#declare LightVersion = 0;
#if (LightVersion)
	#declare TFace = TLightbrown;
	#declare TVertex = TDarkbrown;
#else
	#declare TFace = TDarkbrown;
	#declare TVertex = TLightbrown;
#end
#declare Vestiges = 1;  // edges and blue vertices of disdyakis dodecahedron

#declare Factor = 1.666;

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};
#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};
#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

#declare UncoloredEdges = array[72]{array[2]{13, 23}, array[2]{3, 6}, array[2]{6, 11}, array[2]{19, 24}, array[2]{10, 12}, array[2]{17, 25}, array[2]{14, 16}, array[2]{4, 8}, array[2]{3, 13}, array[2]{1, 6}, array[2]{23, 25}, array[2]{12, 14}, array[2]{0, 4}, array[2]{12, 22}, array[2]{7, 12}, array[2]{4, 7}, array[2]{20, 25}, array[2]{2, 7}, array[2]{13, 15}, array[2]{22, 25}, array[2]{12, 17}, array[2]{9, 18}, array[2]{15, 16}, array[2]{18, 21}, array[2]{4, 16}, array[2]{1, 5}, array[2]{0, 3}, array[2]{0, 1}, array[2]{17, 22}, array[2]{15, 20}, array[2]{0, 5}, array[2]{16, 24}, array[2]{16, 20}, array[2]{7, 14}, array[2]{0, 7}, array[2]{13, 20}, array[2]{0, 6}, array[2]{2, 12}, array[2]{19, 25}, array[2]{24, 25}, array[2]{20, 23}, array[2]{11, 18}, array[2]{9, 10}, array[2]{17, 21}, array[2]{20, 24}, array[2]{9, 17}, array[2]{18, 23}, array[2]{0, 2}, array[2]{6, 13}, array[2]{9, 11}, array[2]{6, 9}, array[2]{2, 5}, array[2]{5, 9}, array[2]{3, 8}, array[2]{21, 25}, array[2]{5, 10}, array[2]{8, 16}, array[2]{19, 22}, array[2]{7, 16}, array[2]{5, 12}, array[2]{8, 15}, array[2]{13, 18}, array[2]{14, 19}, array[2]{16, 19}, array[2]{12, 19}, array[2]{8, 13}, array[2]{0, 8}, array[2]{10, 17}, array[2]{11, 13}, array[2]{18, 25}, array[2]{1, 9}, array[2]{9, 21}};

#declare DarkbrownFaces = array[24]{array[4]{3, 8, 13, 3}, array[4]{23, 20, 25, 23}, array[4]{15, 20, 13, 15}, array[4]{15, 8, 16, 15}, array[4]{2, 7, 0, 2}, array[4]{4, 8, 0, 4}, array[4]{4, 7, 16, 4}, array[4]{22, 19, 12, 22}, array[4]{24, 19, 25, 24}, array[4]{24, 20, 16, 24}, array[4]{14, 7, 12, 14}, array[4]{14, 19, 16, 14}, array[4]{6, 3, 0, 6}, array[4]{18, 23, 13, 18}, array[4]{1, 6, 9, 1}, array[4]{21, 18, 25, 21}, array[4]{11, 6, 13, 11}, array[4]{11, 18, 9, 11}, array[4]{5, 2, 12, 5}, array[4]{5, 1, 0, 5}, array[4]{17, 21, 9, 17}, array[4]{17, 22, 25, 17}, array[4]{10, 5, 9, 10}, array[4]{10, 17, 12, 10}};

#declare DisdyakisPoints = union{
	union{
		#for( Index, 0, dimension_size(RedVertices, 1) - 1 )
		    sphere{ P[RedVertices[Index]], RadVert }
		#end
		texture{ TRed }
	}
	union{
		#for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
		    sphere{ P[YellowVertices[Index]], RadVert }
		#end
		texture{ TYellow }
	}
	#if (Vestiges)
		union{
			#for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
				sphere{ P[BlueVertices[Index]], RadVert*.6 }
			#end
			texture{ TBlue }
		}
	#end
}

#declare SolidUnit = intersection{
	plane{ PlaneNormDistFromPoints(P[3], P[8], P[13]) inverse }
	plane{ PlaneNormDistFromPoints(P[23], P[20], P[25]) inverse }
	plane{ PlaneNormDistFromPoints(P[15], P[20], P[13]) inverse }
	plane{ PlaneNormDistFromPoints(P[15], P[8], P[16]) inverse }
	plane{ PlaneNormDistFromPoints(P[2], P[7], P[0]) inverse }
	plane{ PlaneNormDistFromPoints(P[4], P[8], P[0]) inverse }
	plane{ PlaneNormDistFromPoints(P[4], P[7], P[16]) inverse }
	plane{ PlaneNormDistFromPoints(P[22], P[19], P[12]) inverse }
	plane{ PlaneNormDistFromPoints(P[24], P[19], P[25]) inverse }
	plane{ PlaneNormDistFromPoints(P[24], P[20], P[16]) inverse }
	plane{ PlaneNormDistFromPoints(P[14], P[7], P[12]) inverse }
	plane{ PlaneNormDistFromPoints(P[14], P[19], P[16]) inverse }
	plane{ PlaneNormDistFromPoints(P[6], P[3], P[0]) }
	plane{ PlaneNormDistFromPoints(P[18], P[23], P[13]) }
	plane{ PlaneNormDistFromPoints(P[1], P[6], P[9]) inverse }
	plane{ PlaneNormDistFromPoints(P[21], P[18], P[25]) inverse }
	plane{ PlaneNormDistFromPoints(P[11], P[6], P[13]) inverse }
	plane{ PlaneNormDistFromPoints(P[11], P[18], P[9]) inverse }
	plane{ PlaneNormDistFromPoints(P[5], P[2], P[12]) }
	plane{ PlaneNormDistFromPoints(P[5], P[1], P[0]) }
	plane{ PlaneNormDistFromPoints(P[17], P[21], P[9]) }
	plane{ PlaneNormDistFromPoints(P[17], P[22], P[25]) }
	plane{ PlaneNormDistFromPoints(P[10], P[5], P[9]) inverse }
	plane{ PlaneNormDistFromPoints(P[10], P[17], P[12]) inverse }
	texture{ TFace }
}

// new points over vanished triangles
#declare A = 0.525658*Factor;
#declare B = 1.26905*Factor;
#declare C = 2.01246*Factor;
#declare L = <-A, C, -B>;
#declare R = <A, B, -C>;

#declare DetailUnit = union{
	sphere{ L, RadVert texture{ TVertex } }
	sphere{ R, RadVert texture{ TVertex } }

	cylinder{ L, R, RadEdge  texture{ TBlue } }
	
	#if (Vestiges)
		cylinder{ P[14], P[19], RadEdge/5  pigment{color srgb .55} }
		cylinder{ P[12], P[14], RadEdge/5  pigment{color srgb .55} }
		cylinder{ P[12], P[19], RadEdge/5  pigment{color srgb .55} }
	#end
	
	cylinder{ R, P[12], RadEdge  texture{ TGray } }
	cylinder{ R, P[19], RadEdge  texture{ TGray } }
	cylinder{ L, P[16], RadEdge  texture{ TGray } }
	cylinder{ L, P[7], RadEdge  texture{ TGray } }
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*z}
	object{DetailUnit rotate 180*z}
	object{DetailUnit rotate 270*z}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*y}
	object{DetailUnit rotate 180*y}
	object{DetailUnit rotate 270*y}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*x}
	object{DetailUnit rotate 180*x}
	object{DetailUnit rotate 270*x}
}

union{
	object{SolidUnit}
	object{DetailUnit no_shadow}
	object{DisdyakisPoints no_shadow}
	#if (LightVersion)
		scale -x
	#end
}

