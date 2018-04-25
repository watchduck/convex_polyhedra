#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = .867;
#declare Abs = array[8]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (2 + sqrt(5))*Factor, (3/2 + 3*sqrt(5)/2)*Factor, }

#declare P = array[60]{ <-Abs[7],Abs[0],-Abs[1]>, <-Abs[7],Abs[0],Abs[1]>, <-Abs[6],-Abs[2],-Abs[3]>, <-Abs[6],-Abs[2],Abs[3]>, <-Abs[6],Abs[2],-Abs[3]>, <-Abs[6],Abs[2],Abs[3]>, <-Abs[5],-Abs[4],-Abs[1]>, <-Abs[5],-Abs[4],Abs[1]>, <-Abs[5],Abs[4],-Abs[1]>, <-Abs[5],Abs[4],Abs[1]>, <-Abs[4],-Abs[1],-Abs[5]>, <-Abs[4],-Abs[1],Abs[5]>, <-Abs[4],Abs[1],-Abs[5]>, <-Abs[4],Abs[1],Abs[5]>, <-Abs[3],-Abs[6],-Abs[2]>, <-Abs[3],-Abs[6],Abs[2]>, <-Abs[3],Abs[6],-Abs[2]>, <-Abs[3],Abs[6],Abs[2]>, <-Abs[2],-Abs[3],-Abs[6]>, <-Abs[2],-Abs[3],Abs[6]>, <-Abs[2],Abs[3],-Abs[6]>, <-Abs[2],Abs[3],Abs[6]>, <-Abs[1],-Abs[7],Abs[0]>, <-Abs[1],-Abs[5],-Abs[4]>, <-Abs[1],-Abs[5],Abs[4]>, <-Abs[1],Abs[5],-Abs[4]>, <-Abs[1],Abs[5],Abs[4]>, <-Abs[1],Abs[7],Abs[0]>, <Abs[0],-Abs[1],-Abs[7]>, <Abs[0],-Abs[1],Abs[7]>, <Abs[0],Abs[1],-Abs[7]>, <Abs[0],Abs[1],Abs[7]>, <Abs[1],-Abs[7],Abs[0]>, <Abs[1],-Abs[5],-Abs[4]>, <Abs[1],-Abs[5],Abs[4]>, <Abs[1],Abs[5],-Abs[4]>, <Abs[1],Abs[5],Abs[4]>, <Abs[1],Abs[7],Abs[0]>, <Abs[2],-Abs[3],-Abs[6]>, <Abs[2],-Abs[3],Abs[6]>, <Abs[2],Abs[3],-Abs[6]>, <Abs[2],Abs[3],Abs[6]>, <Abs[3],-Abs[6],-Abs[2]>, <Abs[3],-Abs[6],Abs[2]>, <Abs[3],Abs[6],-Abs[2]>, <Abs[3],Abs[6],Abs[2]>, <Abs[4],-Abs[1],-Abs[5]>, <Abs[4],-Abs[1],Abs[5]>, <Abs[4],Abs[1],-Abs[5]>, <Abs[4],Abs[1],Abs[5]>, <Abs[5],-Abs[4],-Abs[1]>, <Abs[5],-Abs[4],Abs[1]>, <Abs[5],Abs[4],-Abs[1]>, <Abs[5],Abs[4],Abs[1]>, <Abs[6],-Abs[2],-Abs[3]>, <Abs[6],-Abs[2],Abs[3]>, <Abs[6],Abs[2],-Abs[3]>, <Abs[6],Abs[2],Abs[3]>, <Abs[7],Abs[0],-Abs[1]>, <Abs[7],Abs[0],Abs[1]>, }


#declare UncoloredEdges = array[90]{array[2]{16, 27}, array[2]{35, 44}, array[2]{11, 19}, array[2]{32, 43}, array[2]{11, 13}, array[2]{52, 56}, array[2]{41, 49}, array[2]{54, 58}, array[2]{20, 30}, array[2]{45, 53}, array[2]{55, 59}, array[2]{31, 41}, array[2]{52, 53}, array[2]{43, 51}, array[2]{35, 40}, array[2]{2, 6}, array[2]{33, 42}, array[2]{50, 54}, array[2]{25, 35}, array[2]{26, 36}, array[2]{53, 57}, array[2]{21, 26}, array[2]{47, 49}, array[2]{46, 48}, array[2]{8, 9}, array[2]{48, 56}, array[2]{1, 3}, array[2]{22, 32}, array[2]{13, 21}, array[2]{58, 59}, array[2]{14, 23}, array[2]{40, 48}, array[2]{29, 31}, array[2]{56, 58}, array[2]{10, 18}, array[2]{16, 25}, array[2]{4, 12}, array[2]{23, 33}, array[2]{34, 39}, array[2]{34, 43}, array[2]{0, 2}, array[2]{8, 16}, array[2]{28, 38}, array[2]{18, 23}, array[2]{37, 44}, array[2]{50, 51}, array[2]{4, 8}, array[2]{21, 31}, array[2]{20, 25}, array[2]{38, 46}, array[2]{5, 13}, array[2]{3, 11}, array[2]{15, 24}, array[2]{37, 45}, array[2]{19, 24}, array[2]{10, 12}, array[2]{5, 9}, array[2]{3, 7}, array[2]{17, 26}, array[2]{39, 47}, array[2]{28, 30}, array[2]{24, 34}, array[2]{9, 17}, array[2]{33, 38}, array[2]{14, 22}, array[2]{17, 27}, array[2]{36, 45}, array[2]{0, 1}, array[2]{46, 54}, array[2]{6, 7}, array[2]{12, 20}, array[2]{32, 42}, array[2]{47, 55}, array[2]{44, 52}, array[2]{42, 50}, array[2]{15, 22}, array[2]{57, 59}, array[2]{6, 14}, array[2]{30, 40}, array[2]{18, 28}, array[2]{7, 15}, array[2]{0, 4}, array[2]{36, 41}, array[2]{2, 10}, array[2]{29, 39}, array[2]{19, 29}, array[2]{49, 57}, array[2]{51, 55}, array[2]{1, 5}, array[2]{27, 37}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.26;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[32]{<(1 + sqrt(5))*(-9*sqrt(5)/20 + 1/4), -(-9*sqrt(5)/20 + 1/4)*(sqrt(5) + 3), 0>*Factor, <2*(-sqrt(5) + 1)*(sqrt(5)/8 + 3/8), 0, 2*(1 + sqrt(5))*(sqrt(5)/8 + 3/8)>*Factor, <0, -(-1/4 + 9*sqrt(5)/20)*(1 + sqrt(5)), (-1/4 + 9*sqrt(5)/20)*(sqrt(5) + 3)>*Factor, <-3/2 - sqrt(5)/2, sqrt(5)/2 + 3/2, -3/2 - sqrt(5)/2>*Factor, <-3/2 - sqrt(5)/2, sqrt(5)/2 + 3/2, sqrt(5)/2 + 3/2>*Factor, <0, 2*(-3/8 - sqrt(5)/8)*(1 + sqrt(5)), 2*(-1 + sqrt(5))*(-3/8 - sqrt(5)/8)>*Factor, <2*(-3/8 - sqrt(5)/8)*(1 + sqrt(5)), 2*(-3/8 - sqrt(5)/8)*(-sqrt(5) + 1), 0>*Factor, <-3/2 - sqrt(5)/2, -3/2 - sqrt(5)/2, sqrt(5)/2 + 3/2>*Factor, <-3/2 - sqrt(5)/2, -3/2 - sqrt(5)/2, -3/2 - sqrt(5)/2>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/4 + 3/4), 0, -(1 + sqrt(5))*(sqrt(5)/4 + 3/4)>*Factor, <2*(-3/8 - sqrt(5)/8)*(-sqrt(5) + 1), 0, -2*(-3/8 - sqrt(5)/8)*(1 + sqrt(5))>*Factor, <sqrt(5)/5 + 2, -(1 + sqrt(5))*(sqrt(5)/10 + 1), 0>*Factor, <(1 + sqrt(5))*(sqrt(5)/10 + 1), 0, -2 - sqrt(5)/5>*Factor, <sqrt(5)/2 + 3/2, -3/2 - sqrt(5)/2, sqrt(5)/2 + 3/2>*Factor, <(-3/4 - sqrt(5)/4)*(1 + sqrt(5)), (-1 + sqrt(5))*(-3/4 - sqrt(5)/4), 0>*Factor, <2*(-1 + sqrt(5))*(sqrt(5)/8 + 3/8), 0, -2*(1 + sqrt(5))*(sqrt(5)/8 + 3/8)>*Factor, <0, -(-3/4 - sqrt(5)/4)*(1 + sqrt(5)), (-1 + sqrt(5))*(-3/4 - sqrt(5)/4)>*Factor, <0, sqrt(5)/5 + 2, (-1 - sqrt(5)/10)*(1 + sqrt(5))>*Factor, <sqrt(5)/2 + 3/2, sqrt(5)/2 + 3/2, sqrt(5)/2 + 3/2>*Factor, <(-1/4 + 9*sqrt(5)/20)*(1 + sqrt(5)), (-1/4 + 9*sqrt(5)/20)*(sqrt(5) + 3), 0>*Factor, <sqrt(5)/2 + 3/2, sqrt(5)/2 + 3/2, -3/2 - sqrt(5)/2>*Factor, <-2*(-3/8 - sqrt(5)/8)*(1 + sqrt(5)), 2*(-3/8 - sqrt(5)/8)*(-sqrt(5) + 1), 0>*Factor, <(1 + sqrt(5))*(-9*sqrt(5)/20 + 1/4), (-9*sqrt(5)/20 + 1/4)*(sqrt(5) + 3), 0>*Factor, <2*(1 + sqrt(5))*(sqrt(5)/8 + 3/8), 2*(-sqrt(5) + 1)*(sqrt(5)/8 + 3/8), 0>*Factor, <0, (1 + sqrt(5))*(-9*sqrt(5)/20 + 1/4), (-9*sqrt(5)/20 + 1/4)*(sqrt(5) + 3)>*Factor, <sqrt(5)/2 + 3/2, -3/2 - sqrt(5)/2, -3/2 - sqrt(5)/2>*Factor, <0, 2*(-3/8 - sqrt(5)/8)*(1 + sqrt(5)), 2*(-3/8 - sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <0, 2*(1 + sqrt(5))*(sqrt(5)/8 + 3/8), 2*(-1 + sqrt(5))*(sqrt(5)/8 + 3/8)>*Factor, <0, (-1/4 + 9*sqrt(5)/20)*(1 + sqrt(5)), (-1/4 + 9*sqrt(5)/20)*(sqrt(5) + 3)>*Factor, <-(-1/4 + 9*sqrt(5)/20)*(sqrt(5) + 3), 0, -(-1/4 + 9*sqrt(5)/20)*(1 + sqrt(5))>*Factor, <-(1 + sqrt(5))*(sqrt(5)/10 + 1), 0, sqrt(5)/5 + 2>*Factor, <-(-9*sqrt(5)/20 + 1/4)*(sqrt(5) + 3), 0, -(1 + sqrt(5))*(-9*sqrt(5)/20 + 1/4)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[32]{array[6]{P[8], P[9], P[17], P[27], P[16], P[8]}, array[7]{P[19], P[11], P[13], P[21], P[31], P[29], P[19]}, array[6]{P[24], P[19], P[29], P[39], P[34], P[24]}, array[7]{P[4], P[12], P[20], P[25], P[16], P[8], P[4]}, array[7]{P[26], P[17], P[9], P[5], P[13], P[21], P[26]}, array[7]{P[23], P[14], P[22], P[32], P[42], P[33], P[23]}, array[7]{P[1], P[0], P[4], P[8], P[9], P[5], P[1]}, array[7]{P[15], P[7], P[3], P[11], P[19], P[24], P[15]}, array[7]{P[10], P[18], P[23], P[14], P[6], P[2], P[10]}, array[7]{P[30], P[28], P[18], P[10], P[12], P[20], P[30]}, array[7]{P[47], P[39], P[29], P[31], P[41], P[49], P[47]}, array[6]{P[50], P[42], P[32], P[43], P[51], P[50]}, array[6]{P[48], P[46], P[54], P[58], P[56], P[48]}, array[7]{P[39], P[47], P[55], P[51], P[43], P[34], P[39]}, array[7]{P[7], P[3], P[1], P[0], P[2], P[6], P[7]}, array[7]{P[48], P[40], P[30], P[28], P[38], P[46], P[48]}, array[7]{P[16], P[27], P[37], P[44], P[35], P[25], P[16]}, array[6]{P[20], P[25], P[35], P[40], P[30], P[20]}, array[7]{P[53], P[45], P[36], P[41], P[49], P[57], P[53]}, array[6]{P[45], P[37], P[44], P[52], P[53], P[45]}, array[7]{P[44], P[35], P[40], P[48], P[56], P[52], P[44]}, array[7]{P[57], P[59], P[58], P[56], P[52], P[53], P[57]}, array[6]{P[6], P[7], P[15], P[22], P[14], P[6]}, array[7]{P[55], P[59], P[58], P[54], P[50], P[51], P[55]}, array[6]{P[28], P[18], P[23], P[33], P[38], P[28]}, array[7]{P[42], P[33], P[38], P[46], P[54], P[50], P[42]}, array[7]{P[24], P[34], P[43], P[32], P[22], P[15], P[24]}, array[7]{P[45], P[36], P[26], P[17], P[27], P[37], P[45]}, array[6]{P[26], P[21], P[31], P[41], P[36], P[26]}, array[6]{P[4], P[0], P[2], P[10], P[12], P[4]}, array[6]{P[5], P[13], P[11], P[3], P[1], P[5]}, array[6]{P[59], P[57], P[49], P[47], P[55], P[59]}};
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




