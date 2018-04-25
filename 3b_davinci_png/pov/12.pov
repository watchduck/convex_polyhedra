#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 2.48;
#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[30]{array[2]{4, 6}, array[2]{11, 17}, array[2]{3, 9}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 5}, array[2]{5, 7}, array[2]{7, 13}, array[2]{6, 12}, array[2]{12, 14}, array[2]{16, 19}, array[2]{13, 15}, array[2]{5, 11}, array[2]{0, 2}, array[2]{10, 16}, array[2]{3, 7}, array[2]{14, 18}, array[2]{17, 19}, array[2]{2, 8}, array[2]{18, 19}, array[2]{2, 6}, array[2]{13, 17}, array[2]{12, 16}, array[2]{1, 4}, array[2]{9, 15}, array[2]{4, 10}, array[2]{8, 14}, array[2]{10, 11}, array[2]{15, 18}, array[2]{8, 9}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.38;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[12]{<(-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4), -3*sqrt(5)/10 - 1/2, 0>*Factor, <1/2 + 3*sqrt(5)/10, 0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20)>*Factor, <0, (-3 + sqrt(5))*(sqrt(5)/5 + 1/2), (-sqrt(5) + 1)*(sqrt(5)/5 + 1/2)>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1), 0>*Factor, <0, (-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1)>*Factor, <1/2 + 3*sqrt(5)/10, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-3 + sqrt(5))*(sqrt(5)/5 + 1/2), (-sqrt(5) + 1)*(sqrt(5)/5 + 1/2), 0>*Factor, <0, (-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1)>*Factor, <0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), -3*sqrt(5)/10 - 1/2>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1), 0>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[12]{array[6]{P[9], P[15], P[18], P[14], P[8], P[9]}, array[6]{P[13], P[17], P[19], P[18], P[15], P[13]}, array[6]{P[2], P[6], P[12], P[14], P[8], P[2]}, array[6]{P[4], P[1], P[0], P[2], P[6], P[4]}, array[6]{P[19], P[16], P[10], P[11], P[17], P[19]}, array[6]{P[3], P[7], P[13], P[15], P[9], P[3]}, array[6]{P[18], P[19], P[16], P[12], P[14], P[18]}, array[6]{P[3], P[0], P[2], P[8], P[9], P[3]}, array[6]{P[13], P[17], P[11], P[5], P[7], P[13]}, array[6]{P[4], P[6], P[12], P[16], P[10], P[4]}, array[6]{P[1], P[5], P[7], P[3], P[0], P[1]}, array[6]{P[10], P[4], P[1], P[5], P[11], P[10]}};
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




