#include "header.inc"
#include "PlaneNormDistFromPoints.inc"

#declare HorizontalVersion = 0;
#declare Vestiges = 0;  // edges and blue vertices of disdyakis dodecahedron

#declare Factor = 1.666;

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};
#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};
#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

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
	plane{ PlaneNormDistFromPoints(P[12], P[14], P[19])  texture{ TLightbrown } }
	plane{ PlaneNormDistFromPoints(P[12], P[7], P[14])  texture{ TDarkbrown } }
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

#declare NewBlue = <0, 2.36635, -1.1832>*Factor;
#declare DetailUnit = union{
	sphere{NewBlue , RadVert  texture{ TLightblue } }

	cylinder{ NewBlue, P[19], RadEdge  texture{ TGray } }
	cylinder{ NewBlue, P[7], RadEdge  texture{ TGray } }
	cylinder{ NewBlue, P[12], RadEdge  texture{ TGray } }
	cylinder{ NewBlue, P[16], RadEdge  texture{ TGray } }

	#if (Vestiges)
		cylinder{ P[14], P[19], RadEdge/5  pigment{color srgb .55} }
		cylinder{ P[14], P[7], RadEdge/5  pigment{color srgb .55} }
		cylinder{ P[12], P[19], RadEdge/5  pigment{color srgb .55} }
		cylinder{ P[12], P[7], RadEdge/5  pigment{color srgb .55} }
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
	#if (HorizontalVersion)
		rotate 90*z
	#end
	rotate clock/2 * y
}

/* render rotation and crop with imagemagick
for i in $(seq -f "%03g" 0 359); do povray 6-8_dyakis.pov +ua +fn Height=400 Width=400 -D -k$i -O$i; done
for i in $(seq -f "%03g" 0 359); do convert $i.png -crop 459x453+22+21 +repage $i.png; done
*/

