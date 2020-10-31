#include "header.inc"
#include "PlaneNormDistFromPoints.inc"

// The tetartoid consists of the enlarged dark or light faces of the dyakis dodecahedron.
// The points in P are those of the disdyakis dodecahedron.

#declare Vestiges = 1;  // edges and vertices of dyakis dodecahedron

#declare Factor = 1.666;

#declare Abs = array[4]{ 0, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]> }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};
#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};
#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

#declare DisdyakisPoints = union{
	#if (Vestiges)
		union{
			#for( Index, 0, dimension_size(RedVertices, 1) - 1 )
				sphere{ P[RedVertices[Index]], RadVert*.6 }
			#end
			texture{ TRed }
		}
	#end
	union{
		#for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
		    sphere{ P[YellowVertices[Index]], RadVert }
		#end
		texture{ TYellow }
	}
}

#declare SolidUnit = intersection{
	plane{ PlaneNormDistFromPoints(P[12], P[7], P[14])  texture{ TLightbrown } }
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
#declare BlackPoint = <1.10819, 0.459027, -2.67542>*Factor;
#declare DetailUnit = union{
	sphere{GreenPoint, RadVert  pigment{color srgb <149,234,37>/255} }
	sphere{BlackPoint, RadVert  pigment{color srgb .3} }
	cylinder{ BlackPoint, P[12], RadEdge  texture{ TRed } }
	cylinder{ BlackPoint, GreenPoint, RadEdge  texture{ TGray } }
	cylinder{ BlackPoint, P[17], RadEdge  texture{ TGray } }
	#if (Vestiges)
		sphere{NewBluePoint , RadVert*.6  texture{ TLightblue } }
		cylinder{ NewBluePoint, P[19], RadEdge/5  texture{ TGray } }
		cylinder{ NewBluePoint, P[7], RadEdge/5  texture{ TGray } }
		cylinder{ NewBluePoint, P[12], RadEdge/5  texture{ TGray } }
		cylinder{ NewBluePoint, P[16], RadEdge/5  texture{ TGray } }
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
	object{DetailUnit rotate 90*y rotate 90*x}
}
#declare DetailUnit = union{
	object{DetailUnit}
	object{DetailUnit rotate 90*x rotate 90*y}
}

union{
	object{SolidUnit }
	object{DetailUnit no_shadow}
	object{DisdyakisPoints no_shadow}
	scale -x
	rotate clock/2 * y
}

/* render rotation
for i in $(seq -f "%03g" 0 359); do povray 6-8_tetartoid.pov +ua +fn Height=500 Width=500 -D -k$i -O$i; done
*/

