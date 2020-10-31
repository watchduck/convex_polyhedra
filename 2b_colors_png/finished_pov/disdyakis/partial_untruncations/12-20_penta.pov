#include "header.inc"
#include "PlaneNormDistFromPoints.inc"
#include "RotMatFromVectorAndAngle.inc"

#declare LightVersion = 0;
#if (LightVersion)
	#declare TFace = TLightbrown;
	#declare TVertex = TDarkbrown;
#else
	#declare TFace = TDarkbrown;
	#declare TVertex = TLightbrown;
#end
#declare Vestiges = 1;  // edges and blue vertices of disdyakis triacontahedron

#declare Factor = 1.1*1.0596;

#declare Abs = array[10]{ 0, (3*sqrt(5)/44 + 45/44)*Factor, (-sqrt(5)/2 + 5/2)*Factor, (15/22 + 6*sqrt(5)/11)*Factor, (3*sqrt(5)/10 + 3/2)*Factor, (sqrt(5))*Factor, (27*sqrt(5)/44 + 75/44)*Factor, (3/2 + 9*sqrt(5)/10)*Factor, (sqrt(5)/2 + 5/2)*Factor, (15/11 + 12*sqrt(5)/11)*Factor }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare RedVertices = array[12]{3, 4, 13, 14, 28, 29, 32, 33, 47, 48, 57, 58};
#declare YellowVertices = array[20]{1, 2, 9, 10, 11, 12, 19, 20, 26, 27, 34, 35, 41, 42, 49, 50, 51, 52, 59, 60};
#declare BlueVertices = array[30]{0, 5, 6, 7, 8, 15, 16, 17, 18, 21, 22, 23, 24, 25, 30, 31, 36, 37, 38, 39, 40, 43, 44, 45, 46, 53, 54, 55, 56, 61};

#declare UncoloredEdges = array[180]{array[2]{56, 60}, array[2]{10, 29}, array[2]{60, 61}, array[2]{11, 14}, array[2]{40, 48}, array[2]{13, 21}, array[2]{30, 32}, array[2]{47, 53}, array[2]{52, 56}, array[2]{48, 60}, array[2]{3, 9}, array[2]{4, 6}, array[2]{26, 37}, array[2]{58, 60}, array[2]{4, 10}, array[2]{47, 54}, array[2]{29, 38}, array[2]{35, 36}, array[2]{8, 12}, array[2]{42, 44}, array[2]{33, 40}, array[2]{28, 41}, array[2]{2, 8}, array[2]{13, 22}, array[2]{30, 41}, array[2]{24, 33}, array[2]{4, 18}, array[2]{29, 44}, array[2]{9, 28}, array[2]{6, 10}, array[2]{15, 28}, array[2]{37, 49}, array[2]{10, 22}, array[2]{18, 33}, array[2]{44, 58}, array[2]{51, 55}, array[2]{49, 53}, array[2]{19, 28}, array[2]{38, 50}, array[2]{10, 16}, array[2]{25, 26}, array[2]{1, 6}, array[2]{14, 23}, array[2]{55, 57}, array[2]{3, 11}, array[2]{20, 31}, array[2]{20, 33}, array[2]{50, 58}, array[2]{26, 28}, array[2]{2, 14}, array[2]{2, 3}, array[2]{48, 52}, array[2]{38, 47}, array[2]{58, 59}, array[2]{41, 45}, array[2]{3, 15}, array[2]{7, 11}, array[2]{48, 51}, array[2]{2, 4}, array[2]{31, 33}, array[2]{27, 29}, array[2]{53, 57}, array[2]{11, 17}, array[2]{54, 59}, array[2]{43, 57}, array[2]{0, 3}, array[2]{0, 4}, array[2]{34, 39}, array[2]{35, 48}, array[2]{25, 47}, array[2]{22, 29}, array[2]{25, 27}, array[2]{5, 9}, array[2]{32, 34}, array[2]{47, 50}, array[2]{46, 58}, array[2]{39, 51}, array[2]{50, 54}, array[2]{47, 49}, array[2]{0, 2}, array[2]{24, 35}, array[2]{57, 60}, array[2]{12, 33}, array[2]{23, 34}, array[2]{7, 14}, array[2]{57, 59}, array[2]{14, 35}, array[2]{4, 20}, array[2]{56, 58}, array[2]{33, 46}, array[2]{8, 14}, array[2]{57, 61}, array[2]{59, 61}, array[2]{46, 52}, array[2]{19, 30}, array[2]{11, 23}, array[2]{0, 1}, array[2]{52, 58}, array[2]{36, 48}, array[2]{34, 36}, array[2]{43, 49}, array[2]{34, 48}, array[2]{4, 16}, array[2]{27, 47}, array[2]{29, 50}, array[2]{28, 49}, array[2]{41, 43}, array[2]{33, 35}, array[2]{4, 12}, array[2]{41, 57}, array[2]{37, 47}, array[2]{47, 59}, array[2]{3, 17}, array[2]{33, 52}, array[2]{29, 31}, array[2]{14, 24}, array[2]{42, 46}, array[2]{13, 27}, array[2]{1, 5}, array[2]{1, 3}, array[2]{51, 57}, array[2]{13, 25}, array[2]{40, 52}, array[2]{58, 61}, array[2]{28, 37}, array[2]{48, 55}, array[2]{2, 7}, array[2]{16, 29}, array[2]{9, 21}, array[2]{33, 42}, array[2]{12, 14}, array[2]{9, 15}, array[2]{19, 32}, array[2]{4, 8}, array[2]{14, 34}, array[2]{3, 5}, array[2]{10, 13}, array[2]{48, 56}, array[2]{21, 28}, array[2]{17, 32}, array[2]{15, 19}, array[2]{28, 43}, array[2]{3, 19}, array[2]{29, 42}, array[2]{53, 59}, array[2]{11, 32}, array[2]{28, 30}, array[2]{31, 42}, array[2]{35, 40}, array[2]{14, 36}, array[2]{32, 51}, array[2]{13, 26}, array[2]{22, 27}, array[2]{23, 32}, array[2]{1, 13}, array[2]{26, 47}, array[2]{45, 51}, array[2]{5, 13}, array[2]{21, 26}, array[2]{27, 38}, array[2]{17, 19}, array[2]{45, 57}, array[2]{32, 41}, array[2]{18, 20}, array[2]{32, 45}, array[2]{20, 29}, array[2]{6, 13}, array[2]{12, 18}, array[2]{1, 4}, array[2]{44, 50}, array[2]{9, 13}, array[2]{32, 39}, array[2]{12, 24}, array[2]{49, 57}, array[2]{3, 7}, array[2]{16, 20}, array[2]{42, 58}, array[2]{54, 58}, array[2]{55, 60}, array[2]{39, 48}};

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


#declare PRot = <0, 1, -(1/2 + sqrt(5)/2)>;  // icosahedron point 6
#declare PRotNorm = vnormalize(PRot);
#declare Fifth = 2*pi/5;

#declare SolidUnit = intersection{
	#for (Times, 0, 4)
		plane{ PlaneNormDistFromPoints(P[30], P[32], P[41])
			texture{ TFace }
			RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		}
	#end
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


#declare NewPoint = <-0.507627, 0.507627, -3.80298> * Factor;  // new point over vanished triangle
#declare DetailUnit = union{
	sphere{NewPoint, RadVert  texture{ TVertex } }
	cylinder{ NewPoint, P[30], RadEdge  texture{ TBlue } }
	cylinder{ NewPoint, P[19], RadEdge  texture{ TGray } }
	cylinder{ NewPoint, P[32], RadEdge  texture{ TGray } }
}
#declare DetailUnit = union{
	#for (Times, 0, 4)
		object{ DetailUnit
			RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		}
	#end
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
	object{DetailUnit rotate 90*x rotate 90*y}
	object{DetailUnit rotate 90*y rotate 90*x}
}

union{
	object{SolidUnit }
	object{DetailUnit no_shadow}
	object{DisdyakisEdgesAndVertices no_shadow}
	#if (LightVersion)
		scale -z
	#end
}

/* render rotation and crop with imagemagick
for i in $(seq -f "%03g" 0 359); do povray 6-8_dyakis.pov +ua +fn Height=400 Width=400 -D -k$i -O$i; done
for i in $(seq -f "%03g" 0 359); do convert $i.png -gravity South -chop 0x6 $i.png; done
*/

