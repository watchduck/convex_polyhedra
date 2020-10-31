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
#declare Vestiges = 1;  // edges and blue vertices of tetrakis cube

#declare Factor = (8*sqrt(2/3)) / 3;

#declare Abs = array[3]{ 0, (3*sqrt(2)/4)*Factor, (9*sqrt(2)/8)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{2, 3, 9, 12};
#declare YellowVertices = array[4]{1, 4, 10, 11};
#declare BlueVertices = array[6]{0, 5, 6, 7, 8, 13};

#declare UncoloredEdges = array[36]{array[2]{8, 11}, array[2]{1, 3}, array[2]{11, 13}, array[2]{1, 5}, array[2]{6, 11}, array[2]{1, 2}, array[2]{2, 10}, array[2]{0, 2}, array[2]{4, 8}, array[2]{0, 1}, array[2]{10, 12}, array[2]{12, 13}, array[2]{7, 10}, array[2]{2, 7}, array[2]{4, 7}, array[2]{8, 12}, array[2]{2, 4}, array[2]{3, 11}, array[2]{1, 9}, array[2]{9, 13}, array[2]{3, 6}, array[2]{0, 4}, array[2]{2, 5}, array[2]{3, 4}, array[2]{11, 12}, array[2]{4, 12}, array[2]{9, 10}, array[2]{5, 9}, array[2]{3, 8}, array[2]{5, 10}, array[2]{1, 6}, array[2]{9, 11}, array[2]{10, 13}, array[2]{7, 12}, array[2]{0, 3}, array[2]{6, 9}};

#declare DisdyakisEdgesAndVertices = union{
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
		union{
			#for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
				#local EdgeArray = UncoloredEdges[Index];
				cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge/5 }
			#end
			texture{ TGray }
		}
	#end
}

#declare SolidUnit = intersection{
	plane{ PlaneNormDistFromPoints(P[3], P[11], P[6])  texture{ TFace } }
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


#declare NewPoint = <0, 18*sqrt(2)/16, -9*sqrt(2)/16> * Factor;  // new point over vanished triangle
#declare DetailUnit = union{
	sphere{NewPoint, RadVert  texture{ TVertex } }
	cylinder{ NewPoint, P[8], RadEdge  texture{ TBlue } }
	cylinder{ NewPoint, P[11], RadEdge  texture{ TGray } }
	cylinder{ NewPoint, P[3], RadEdge  texture{ TGray } }
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
	object{DisdyakisEdgesAndVertices no_shadow}
	#if (LightVersion)
		rotate 90*z
	#end
}

/* render rotation and crop with imagemagick
for i in $(seq -f "%03g" 0 359); do povray 6-8_dyakis.pov +ua +fn Height=400 Width=400 -D -k$i -O$i; done
for i in $(seq -f "%03g" 0 359); do convert $i.png -gravity South -chop 0x6 $i.png; done
*/

