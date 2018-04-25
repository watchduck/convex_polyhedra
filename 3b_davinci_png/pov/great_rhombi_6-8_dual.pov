#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 1.6;
#declare Abs = array[4]{ (0)*Factor, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[72]{array[2]{20, 23}, array[2]{0, 5}, array[2]{11, 13}, array[2]{8, 13}, array[2]{19, 22}, array[2]{2, 5}, array[2]{9, 21}, array[2]{16, 20}, array[2]{2, 12}, array[2]{13, 18}, array[2]{6, 9}, array[2]{5, 12}, array[2]{15, 16}, array[2]{9, 11}, array[2]{3, 13}, array[2]{7, 14}, array[2]{17, 25}, array[2]{0, 3}, array[2]{12, 17}, array[2]{9, 18}, array[2]{22, 25}, array[2]{13, 15}, array[2]{12, 19}, array[2]{0, 2}, array[2]{1, 6}, array[2]{10, 17}, array[2]{8, 16}, array[2]{24, 25}, array[2]{18, 23}, array[2]{1, 9}, array[2]{14, 19}, array[2]{4, 8}, array[2]{20, 25}, array[2]{15, 20}, array[2]{6, 11}, array[2]{8, 15}, array[2]{3, 8}, array[2]{20, 24}, array[2]{19, 25}, array[2]{0, 8}, array[2]{0, 7}, array[2]{7, 12}, array[2]{19, 24}, array[2]{0, 6}, array[2]{10, 12}, array[2]{5, 9}, array[2]{9, 10}, array[2]{16, 24}, array[2]{7, 16}, array[2]{23, 25}, array[2]{2, 7}, array[2]{9, 17}, array[2]{5, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{21, 25}, array[2]{17, 22}, array[2]{6, 13}, array[2]{0, 1}, array[2]{4, 16}, array[2]{12, 22}, array[2]{3, 6}, array[2]{16, 19}, array[2]{12, 14}, array[2]{13, 20}, array[2]{18, 25}, array[2]{13, 23}, array[2]{0, 4}, array[2]{11, 18}, array[2]{17, 21}, array[2]{18, 21}, array[2]{1, 5}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.29;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[48]{<3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <-3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <-3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <-3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <-3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <-3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <-3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <-3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <-3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <-3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, 3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <-3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, -3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7>*Factor, <-3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor, <-3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7, 3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, -3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7>*Factor, <-3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7>*Factor, <-3*sqrt(2)*(7/97 + 49*sqrt(2)/97)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 2)/7, -3*(7/97 + 49*sqrt(2)/97)*(sqrt(2) + 4)/7>*Factor, <-3*sqrt(2)*(-49*sqrt(2)/97 - 7/97)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 2)/7, 3*(-49*sqrt(2)/97 - 7/97)*(sqrt(2) + 4)/7>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[48]{array[4]{P[3], P[8], P[0], P[3]}, array[4]{P[3], P[8], P[13], P[3]}, array[4]{P[23], P[20], P[25], P[23]}, array[4]{P[23], P[20], P[13], P[23]}, array[4]{P[15], P[8], P[13], P[15]}, array[4]{P[15], P[20], P[13], P[15]}, array[4]{P[15], P[8], P[16], P[15]}, array[4]{P[15], P[20], P[16], P[15]}, array[4]{P[2], P[7], P[0], P[2]}, array[4]{P[2], P[7], P[12], P[2]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[7], P[0], P[4]}, array[4]{P[4], P[8], P[16], P[4]}, array[4]{P[4], P[7], P[16], P[4]}, array[4]{P[22], P[19], P[25], P[22]}, array[4]{P[22], P[19], P[12], P[22]}, array[4]{P[24], P[20], P[25], P[24]}, array[4]{P[24], P[19], P[25], P[24]}, array[4]{P[24], P[20], P[16], P[24]}, array[4]{P[24], P[19], P[16], P[24]}, array[4]{P[14], P[7], P[12], P[14]}, array[4]{P[14], P[19], P[12], P[14]}, array[4]{P[14], P[7], P[16], P[14]}, array[4]{P[14], P[19], P[16], P[14]}, array[4]{P[6], P[3], P[13], P[6]}, array[4]{P[6], P[3], P[0], P[6]}, array[4]{P[18], P[23], P[13], P[18]}, array[4]{P[18], P[23], P[25], P[18]}, array[4]{P[1], P[6], P[0], P[1]}, array[4]{P[1], P[6], P[9], P[1]}, array[4]{P[21], P[18], P[25], P[21]}, array[4]{P[21], P[18], P[9], P[21]}, array[4]{P[11], P[6], P[13], P[11]}, array[4]{P[11], P[18], P[13], P[11]}, array[4]{P[11], P[6], P[9], P[11]}, array[4]{P[11], P[18], P[9], P[11]}, array[4]{P[5], P[2], P[12], P[5]}, array[4]{P[5], P[1], P[9], P[5]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[5], P[1], P[0], P[5]}, array[4]{P[17], P[22], P[12], P[17]}, array[4]{P[17], P[21], P[9], P[17]}, array[4]{P[17], P[22], P[25], P[17]}, array[4]{P[17], P[21], P[25], P[17]}, array[4]{P[10], P[5], P[9], P[10]}, array[4]{P[10], P[17], P[9], P[10]}, array[4]{P[10], P[5], P[12], P[10]}, array[4]{P[10], P[17], P[12], P[10]}};
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




