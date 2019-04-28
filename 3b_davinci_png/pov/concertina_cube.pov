#include "polyhedra_davinci.inc"


// https://commons.wikimedia.org/wiki/File:Concertina_cube_on_hexagon.png (rotate -5*y)
// https://commons.wikimedia.org/wiki/File:Concertina_cube_on_rectangle.png (rotate 45*x -5*y)

// coordinates used for the calculation: [(-2, -2, -2), (-2, -2, 0), (-2, 0, -2), (0, -2, -2), (-2, -1, 1), (-2, 1, -1), (-1, -2, 1), (-1, 1, -2), (1, -2, -1), (1, -1, -2), (-2, 1, 1), (-1, -1, 2), (-1, 2, -1), (1, -2, 1), (1, 1, -2), (2, -1, -1), (-1, 1, 2), (-1, 2, 1), (1, -1, 2), (1, 2, -1), (2, -1, 1), (2, 1, -1), (0, 2, 2), (2, 0, 2), (2, 2, 0), (2, 2, 2)]


/////////////////////////////////// variables

#declare Factor = 1.5;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[26]{ <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],-Abs[1],Abs[1]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[1],-Abs[1]>, <-Abs[2],Abs[1],Abs[1]>, <-Abs[1],-Abs[2],Abs[1]>, <-Abs[1],-Abs[1],Abs[2]>, <-Abs[1],Abs[1],-Abs[2]>, <-Abs[1],Abs[1],Abs[2]>, <-Abs[1],Abs[2],-Abs[1]>, <-Abs[1],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[1],-Abs[2],-Abs[1]>, <Abs[1],-Abs[2],Abs[1]>, <Abs[1],-Abs[1],-Abs[2]>, <Abs[1],-Abs[1],Abs[2]>, <Abs[1],Abs[1],-Abs[2]>, <Abs[1],Abs[2],-Abs[1]>, <Abs[2],-Abs[1],-Abs[1]>, <Abs[2],-Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[1],-Abs[1]>, <Abs[2],Abs[2],Abs[0]>, <Abs[2],Abs[2],Abs[2]>, }


#declare UncoloredEdges = array[42]{array[2]{9, 13}, array[2]{20, 23}, array[2]{17, 22}, array[2]{0, 3}, array[2]{14, 20}, array[2]{20, 21}, array[2]{5, 9}, array[2]{4, 10}, array[2]{22, 25}, array[2]{7, 9}, array[2]{8, 10}, array[2]{0, 1}, array[2]{1, 6}, array[2]{3, 4}, array[2]{12, 16}, array[2]{13, 25}, array[2]{23, 24}, array[2]{18, 23}, array[2]{21, 22}, array[2]{14, 15}, array[2]{2, 5}, array[2]{12, 14}, array[2]{2, 7}, array[2]{6, 15}, array[2]{7, 17}, array[2]{6, 7}, array[2]{15, 21}, array[2]{24, 25}, array[2]{16, 20}, array[2]{11, 13}, array[2]{19, 24}, array[2]{0, 12}, array[2]{10, 11}, array[2]{10, 19}, array[2]{1, 2}, array[2]{16, 18}, array[2]{5, 11}, array[2]{18, 19}, array[2]{4, 5}, array[2]{8, 18}, array[2]{3, 8}, array[2]{15, 17}};


/////////////////////////////////// CSG polyhedron

#declare FaceOffset = 0.34;
#declare EdgeOffset = 0.34;
#declare PrismThickness = FaceOffset*2 + .1;
#declare FaceNormalPoints = array[18]{<-3/2, 0, 3/2>*Factor, <0, 2, 0>*Factor, <0, 0, -2>*Factor, <0, -2, 0>*Factor, <4/3, -4/3, -4/3>*Factor, <-2, 0, 0>*Factor, <2, 0, 0>*Factor, <-4/3, -4/3, 4/3>*Factor, <0, 0, 2>*Factor, <0, 3/2, -3/2>*Factor, <-3/2, 3/2, 0>*Factor, <-4/3, 4/3, -4/3>*Factor, <4/3, -4/3, 4/3>*Factor, <4/3, 4/3, -4/3>*Factor, <3/2, 0, -3/2>*Factor, <-4/3, 4/3, 4/3>*Factor, <0, -3/2, 3/2>*Factor, <3/2, -3/2, 0>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[18]{array[5]{P[5], P[9], P[7], P[2], P[5]}, array[7]{P[11], P[10], P[19], P[24], P[25], P[13], P[11]}, array[7]{P[12], P[16], P[18], P[8], P[3], P[0], P[12]}, array[7]{P[1], P[0], P[12], P[14], P[15], P[6], P[1]}, array[5]{P[16], P[20], P[14], P[12], P[16]}, array[7]{P[0], P[3], P[4], P[5], P[2], P[1], P[0]}, array[7]{P[21], P[22], P[25], P[24], P[23], P[20], P[21]}, array[5]{P[1], P[6], P[7], P[2], P[1]}, array[7]{P[7], P[9], P[13], P[25], P[22], P[17], P[7]}, array[5]{P[10], P[8], P[18], P[19], P[10]}, array[5]{P[4], P[10], P[11], P[5], P[4]}, array[5]{P[8], P[3], P[4], P[10], P[8]}, array[5]{P[17], P[15], P[21], P[22], P[17]}, array[5]{P[19], P[24], P[23], P[18], P[19]}, array[5]{P[16], P[20], P[23], P[18], P[16]}, array[5]{P[11], P[5], P[9], P[13], P[11]}, array[5]{P[7], P[6], P[15], P[17], P[7]}, array[5]{P[14], P[20], P[21], P[15], P[14]}};
#declare PrismUnion = union{
	#for(Index, 0, dimension_size(Faces, 1)-1)
	    SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)
	#end
}
#declare Davinci = difference{ object{Hollow} object{PrismUnion} }


object{
	Davinci
	texture{ Wood14_with_turbulence }
}


/////////////////////////////////// translucent polyhedron

object{
	SolidFromFaceNormalPoints(FaceNormalPoints, RadFrame)
	pigment{ color TranslucentColor }
}


/////////////////////////////////// polyhedron edges

union{
	#for( Index, 0, dimension_size(P, 1) - 1 )
	    sphere{ P[Index], RadEdge }
	#end

	#for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
	    #local EdgeArray = UncoloredEdges[Index];
	    cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
	#end

	pigment{ color EdgeColor }
}


/////////////////////////////////// face frames

union{
	#for(FaceIndex, 0, dimension_size(Faces, 1)-1)
	    #declare FacePoints = Faces[FaceIndex];  // closed (last point is the first repeated)
	    #declare NumberOfFacePoints = dimension_size(FacePoints, 1);  // actually one more
	    #declare FacePointsUnclosed = array[NumberOfFacePoints-1];
	    #for(PointIndex, 0, NumberOfFacePoints-2)
	        #declare FacePointsUnclosed[PointIndex] = FacePoints[PointIndex];
	    #end
	    #declare FramePoints = MovePolygonEdges(FacePointsUnclosed, EdgeOffset);
	    union{
	        #for(PointIndex, 0, NumberOfFacePoints-3)
	            cylinder{FramePoints[PointIndex], FramePoints[PointIndex+1], RadFrame }
	        #end
	        cylinder{FramePoints[NumberOfFacePoints-2], FramePoints[0], RadFrame }
	        translate -vnormalize(FaceNormalPoints[FaceIndex]) * (RadFrame + .001)
	    }
	#end
	pigment{ color EdgeColor }
}
