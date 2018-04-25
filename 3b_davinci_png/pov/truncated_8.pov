#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 1.9;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[36]{array[2]{8, 10}, array[2]{21, 23}, array[2]{15, 19}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{19, 23}, array[2]{9, 16}, array[2]{5, 10}, array[2]{2, 3}, array[2]{4, 9}, array[2]{13, 18}, array[2]{5, 12}, array[2]{9, 11}, array[2]{18, 22}, array[2]{6, 13}, array[2]{1, 3}, array[2]{7, 14}, array[2]{0, 1}, array[2]{12, 17}, array[2]{20, 21}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 17}, array[2]{20, 22}, array[2]{8, 16}, array[2]{7, 15}, array[2]{0, 4}, array[2]{14, 19}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{1, 5}, array[2]{22, 23}, array[2]{6, 11}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.355;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;
#declare FaceNormalPoints = array[14]{<-1, 1, 1>*Factor, <-1, -1, -1>*Factor, <1, 1, -1>*Factor, <0, 2, 0>*Factor, <1, 1, 1>*Factor, <-1, -1, 1>*Factor, <-1, 1, -1>*Factor, <1, -1, -1>*Factor, <1, -1, 1>*Factor, <2, 0, 0>*Factor, <0, -2, 0>*Factor, <0, 0, -2>*Factor, <-2, 0, 0>*Factor, <0, 0, 2>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[14]{array[7]{P[2], P[6], P[13], P[15], P[7], P[3], P[2]}, array[7]{P[4], P[0], P[1], P[5], P[10], P[8], P[4]}, array[7]{P[17], P[12], P[14], P[19], P[23], P[21], P[17]}, array[5]{P[19], P[15], P[7], P[14], P[19]}, array[7]{P[13], P[18], P[22], P[23], P[19], P[15], P[13]}, array[7]{P[9], P[4], P[0], P[2], P[6], P[11], P[9]}, array[7]{P[14], P[7], P[3], P[1], P[5], P[12], P[14]}, array[7]{P[20], P[16], P[8], P[10], P[17], P[21], P[20]}, array[7]{P[9], P[16], P[20], P[22], P[18], P[11], P[9]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[16], P[8], P[4], P[9], P[16]}, array[5]{P[12], P[5], P[10], P[17], P[12]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[13], P[6], P[11], P[18], P[13]}};
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




