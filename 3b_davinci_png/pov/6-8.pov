#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 3.2;
#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[24]{array[2]{8, 10}, array[2]{1, 3}, array[2]{0, 5}, array[2]{0, 1}, array[2]{7, 10}, array[2]{5, 8}, array[2]{2, 5}, array[2]{3, 6}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 9}, array[2]{4, 8}, array[2]{6, 9}, array[2]{10, 11}, array[2]{9, 11}, array[2]{8, 9}, array[2]{6, 11}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.38;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[14]{<-2/3, 2/3, 2/3>*Factor, <-2/3, -2/3, 2/3>*Factor, <-2/3, -2/3, -2/3>*Factor, <2/3, -2/3, 2/3>*Factor, <2/3, 2/3, 2/3>*Factor, <-2/3, 2/3, -2/3>*Factor, <2/3, -2/3, -2/3>*Factor, <2/3, 2/3, -2/3>*Factor, <1, 0, 0>*Factor, <0, 1, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <-1, 0, 0>*Factor, <0, 0, 1>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[14]{array[4]{P[7], P[2], P[3], P[7]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[10], P[5], P[8], P[10]}, array[4]{P[11], P[10], P[7], P[11]}, array[4]{P[6], P[1], P[3], P[6]}, array[4]{P[9], P[4], P[8], P[9]}, array[4]{P[9], P[6], P[11], P[9]}, array[5]{P[11], P[10], P[8], P[9], P[11]}, array[5]{P[7], P[3], P[6], P[11], P[7]}, array[5]{P[4], P[1], P[6], P[9], P[4]}, array[5]{P[0], P[5], P[8], P[4], P[0]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[5], P[2], P[7], P[10], P[5]}};
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




