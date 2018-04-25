#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = .95;
#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[72]{array[2]{11, 19}, array[2]{32, 40}, array[2]{19, 27}, array[2]{45, 47}, array[2]{11, 13}, array[2]{21, 23}, array[2]{5, 7}, array[2]{42, 44}, array[2]{22, 30}, array[2]{18, 26}, array[2]{40, 41}, array[2]{40, 42}, array[2]{17, 19}, array[2]{3, 5}, array[2]{16, 18}, array[2]{24, 32}, array[2]{2, 4}, array[2]{8, 9}, array[2]{14, 15}, array[2]{1, 3}, array[2]{26, 34}, array[2]{17, 25}, array[2]{13, 21}, array[2]{29, 31}, array[2]{10, 18}, array[2]{4, 12}, array[2]{43, 45}, array[2]{38, 39}, array[2]{0, 2}, array[2]{8, 16}, array[2]{1, 9}, array[2]{27, 35}, array[2]{44, 46}, array[2]{46, 47}, array[2]{32, 33}, array[2]{34, 42}, array[2]{38, 46}, array[2]{5, 13}, array[2]{3, 11}, array[2]{30, 38}, array[2]{0, 8}, array[2]{37, 45}, array[2]{10, 12}, array[2]{16, 24}, array[2]{39, 47}, array[2]{28, 30}, array[2]{20, 28}, array[2]{23, 31}, array[2]{9, 17}, array[2]{29, 37}, array[2]{31, 39}, array[2]{14, 22}, array[2]{36, 44}, array[2]{4, 6}, array[2]{0, 1}, array[2]{34, 36}, array[2]{25, 33}, array[2]{6, 7}, array[2]{12, 20}, array[2]{35, 37}, array[2]{25, 27}, array[2]{20, 22}, array[2]{33, 41}, array[2]{15, 23}, array[2]{6, 14}, array[2]{7, 15}, array[2]{41, 43}, array[2]{21, 29}, array[2]{2, 10}, array[2]{28, 36}, array[2]{24, 26}, array[2]{35, 43}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.3;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[26]{<-sqrt(2) - 1, -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <0, -2*(4 + 3*sqrt(2))*(-5*sqrt(2)/4 + 2), 0>*Factor, <2*(-1/2 + 3*sqrt(2)/4)*(sqrt(2) + 2), 0, 0>*Factor, <0, -4*(-3/4 + sqrt(2)/4)*(1 + sqrt(2)), 0>*Factor, <-sqrt(2) - 1, 1 + sqrt(2), 1 + sqrt(2)>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <1 + sqrt(2), 1 + sqrt(2), 1 + sqrt(2)>*Factor, <0, 0, 4*(-3/4 + sqrt(2)/4)*(1 + sqrt(2))>*Factor, <-sqrt(2) - 1, -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <1 + sqrt(2), -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <1 + sqrt(2), 1 + sqrt(2), -sqrt(2) - 1>*Factor, <1 + sqrt(2), -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <-sqrt(2) - 1, 1 + sqrt(2), -sqrt(2) - 1>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <-2*sqrt(2)*(sqrt(2)/4 + 1), 0, 0>*Factor, <0, 0, 2*(-1/2 + 3*sqrt(2)/4)*(sqrt(2) + 2)>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <0, -2*sqrt(2)*(sqrt(2)/4 + 3/4), -2*sqrt(2)*(sqrt(2)/4 + 3/4)>*Factor, <-2*sqrt(2)*(sqrt(2)/4 + 3/4), 0, 2*sqrt(2)*(sqrt(2)/4 + 3/4)>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, -2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, -2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, 2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[26]{array[7]{P[9], P[17], P[19], P[11], P[3], P[1], P[9]}, array[9]{P[33], P[32], P[24], P[16], P[8], P[9], P[17], P[25], P[33]}, array[9]{P[43], P[41], P[40], P[42], P[44], P[46], P[47], P[45], P[43]}, array[9]{P[30], P[38], P[39], P[31], P[23], P[15], P[14], P[22], P[30]}, array[7]{P[5], P[13], P[21], P[23], P[15], P[7], P[5]}, array[5]{P[2], P[4], P[12], P[10], P[2]}, array[7]{P[31], P[29], P[37], P[45], P[47], P[39], P[31]}, array[9]{P[36], P[34], P[26], P[18], P[10], P[12], P[20], P[28], P[36]}, array[7]{P[18], P[16], P[8], P[0], P[2], P[10], P[18]}, array[7]{P[34], P[26], P[24], P[32], P[40], P[42], P[34]}, array[7]{P[28], P[30], P[38], P[46], P[44], P[36], P[28]}, array[7]{P[27], P[35], P[43], P[41], P[33], P[25], P[27]}, array[7]{P[4], P[6], P[14], P[22], P[20], P[12], P[4]}, array[5]{P[38], P[39], P[47], P[46], P[38]}, array[5]{P[0], P[8], P[9], P[1], P[0]}, array[9]{P[7], P[5], P[3], P[1], P[0], P[2], P[4], P[6], P[7]}, array[9]{P[35], P[37], P[29], P[21], P[13], P[11], P[19], P[27], P[35]}, array[5]{P[7], P[15], P[14], P[6], P[7]}, array[5]{P[32], P[33], P[41], P[40], P[32]}, array[5]{P[18], P[16], P[24], P[26], P[18]}, array[5]{P[5], P[13], P[11], P[3], P[5]}, array[5]{P[35], P[43], P[45], P[37], P[35]}, array[5]{P[34], P[36], P[44], P[42], P[34]}, array[5]{P[22], P[30], P[28], P[20], P[22]}, array[5]{P[21], P[23], P[31], P[29], P[21]}, array[5]{P[19], P[17], P[25], P[27], P[19]}};
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




