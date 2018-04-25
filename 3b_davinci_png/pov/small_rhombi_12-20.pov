#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = .975;
#declare Abs = array[7]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, pow(1/2 + sqrt(5)/2, 2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, pow(1/2 + sqrt(5)/2, 3)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],-Abs[1]>, <-Abs[6],-Abs[1],Abs[1]>, <-Abs[6],Abs[1],-Abs[1]>, <-Abs[6],Abs[1],Abs[1]>, <-Abs[5],-Abs[3],Abs[0]>, <-Abs[5],Abs[3],Abs[0]>, <-Abs[4],-Abs[2],-Abs[3]>, <-Abs[4],-Abs[2],Abs[3]>, <-Abs[4],Abs[2],-Abs[3]>, <-Abs[4],Abs[2],Abs[3]>, <-Abs[3],-Abs[4],-Abs[2]>, <-Abs[3],-Abs[4],Abs[2]>, <-Abs[3],Abs[0],-Abs[5]>, <-Abs[3],Abs[0],Abs[5]>, <-Abs[3],Abs[4],-Abs[2]>, <-Abs[3],Abs[4],Abs[2]>, <-Abs[2],-Abs[3],-Abs[4]>, <-Abs[2],-Abs[3],Abs[4]>, <-Abs[2],Abs[3],-Abs[4]>, <-Abs[2],Abs[3],Abs[4]>, <-Abs[1],-Abs[6],-Abs[1]>, <-Abs[1],-Abs[6],Abs[1]>, <-Abs[1],-Abs[1],-Abs[6]>, <-Abs[1],-Abs[1],Abs[6]>, <-Abs[1],Abs[1],-Abs[6]>, <-Abs[1],Abs[1],Abs[6]>, <-Abs[1],Abs[6],-Abs[1]>, <-Abs[1],Abs[6],Abs[1]>, <Abs[0],-Abs[5],-Abs[3]>, <Abs[0],-Abs[5],Abs[3]>, <Abs[0],Abs[5],-Abs[3]>, <Abs[0],Abs[5],Abs[3]>, <Abs[1],-Abs[6],-Abs[1]>, <Abs[1],-Abs[6],Abs[1]>, <Abs[1],-Abs[1],-Abs[6]>, <Abs[1],-Abs[1],Abs[6]>, <Abs[1],Abs[1],-Abs[6]>, <Abs[1],Abs[1],Abs[6]>, <Abs[1],Abs[6],-Abs[1]>, <Abs[1],Abs[6],Abs[1]>, <Abs[2],-Abs[3],-Abs[4]>, <Abs[2],-Abs[3],Abs[4]>, <Abs[2],Abs[3],-Abs[4]>, <Abs[2],Abs[3],Abs[4]>, <Abs[3],-Abs[4],-Abs[2]>, <Abs[3],-Abs[4],Abs[2]>, <Abs[3],Abs[0],-Abs[5]>, <Abs[3],Abs[0],Abs[5]>, <Abs[3],Abs[4],-Abs[2]>, <Abs[3],Abs[4],Abs[2]>, <Abs[4],-Abs[2],-Abs[3]>, <Abs[4],-Abs[2],Abs[3]>, <Abs[4],Abs[2],-Abs[3]>, <Abs[4],Abs[2],Abs[3]>, <Abs[5],-Abs[3],Abs[0]>, <Abs[5],Abs[3],Abs[0]>, <Abs[6],-Abs[1],-Abs[1]>, <Abs[6],-Abs[1],Abs[1]>, <Abs[6],Abs[1],-Abs[1]>, <Abs[6],Abs[1],Abs[1]>, }


#declare UncoloredEdges = array[120]{array[2]{5, 14}, array[2]{40, 44}, array[2]{28, 32}, array[2]{47, 51}, array[2]{36, 42}, array[2]{2, 5}, array[2]{36, 46}, array[2]{6, 12}, array[2]{17, 29}, array[2]{55, 59}, array[2]{26, 27}, array[2]{11, 21}, array[2]{43, 49}, array[2]{3, 5}, array[2]{55, 58}, array[2]{27, 31}, array[2]{46, 50}, array[2]{18, 24}, array[2]{21, 33}, array[2]{2, 3}, array[2]{42, 48}, array[2]{41, 45}, array[2]{39, 49}, array[2]{8, 14}, array[2]{44, 50}, array[2]{40, 50}, array[2]{6, 16}, array[2]{1, 3}, array[2]{43, 53}, array[2]{3, 9}, array[2]{58, 59}, array[2]{23, 35}, array[2]{35, 47}, array[2]{48, 52}, array[2]{33, 45}, array[2]{8, 12}, array[2]{56, 58}, array[2]{22, 24}, array[2]{7, 13}, array[2]{34, 40}, array[2]{37, 43}, array[2]{52, 58}, array[2]{41, 51}, array[2]{20, 21}, array[2]{37, 47}, array[2]{38, 39}, array[2]{7, 11}, array[2]{16, 28}, array[2]{0, 2}, array[2]{14, 18}, array[2]{17, 23}, array[2]{25, 37}, array[2]{50, 56}, array[2]{12, 24}, array[2]{2, 8}, array[2]{26, 38}, array[2]{29, 41}, array[2]{9, 13}, array[2]{32, 33}, array[2]{19, 25}, array[2]{54, 56}, array[2]{6, 10}, array[2]{30, 38}, array[2]{51, 57}, array[2]{15, 19}, array[2]{27, 39}, array[2]{0, 6}, array[2]{47, 53}, array[2]{49, 53}, array[2]{29, 33}, array[2]{20, 32}, array[2]{24, 36}, array[2]{20, 28}, array[2]{23, 25}, array[2]{45, 51}, array[2]{44, 54}, array[2]{7, 17}, array[2]{56, 57}, array[2]{31, 39}, array[2]{19, 31}, array[2]{15, 27}, array[2]{46, 52}, array[2]{18, 30}, array[2]{42, 52}, array[2]{30, 42}, array[2]{34, 46}, array[2]{1, 7}, array[2]{26, 30}, array[2]{10, 20}, array[2]{38, 48}, array[2]{11, 17}, array[2]{28, 40}, array[2]{45, 54}, array[2]{0, 1}, array[2]{48, 55}, array[2]{14, 26}, array[2]{34, 36}, array[2]{35, 37}, array[2]{12, 22}, array[2]{16, 22}, array[2]{32, 44}, array[2]{5, 15}, array[2]{54, 57}, array[2]{53, 59}, array[2]{4, 11}, array[2]{8, 18}, array[2]{10, 16}, array[2]{31, 43}, array[2]{57, 59}, array[2]{13, 25}, array[2]{9, 19}, array[2]{13, 23}, array[2]{0, 4}, array[2]{21, 29}, array[2]{35, 41}, array[2]{1, 4}, array[2]{9, 15}, array[2]{49, 55}, array[2]{4, 10}, array[2]{22, 34}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.23;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[62]{<(-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0, -(1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <-(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0, (1/2 + sqrt(5)/3)*(1 + sqrt(5))>*Factor, <(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0>*Factor, <-2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0, -(1/2 + sqrt(5)/3)*(1 + sqrt(5))>*Factor, <1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1>*Factor, <0, -(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-sqrt(5) + 1)*(-sqrt(5)/3 - 1/2)>*Factor, <1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3>*Factor, <-2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3>*Factor, <(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0, (1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <-2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1>*Factor, <-(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0>*Factor, <0, (1/2 + sqrt(5)/3)*(1 + sqrt(5)), (1/2 + sqrt(5)/3)*(-sqrt(5) + 1)>*Factor, <0, -(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3)>*Factor, <1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1>*Factor, <-2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3>*Factor, <0, (1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/4), -(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1>*Factor, <-sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <0, 2 + sqrt(5), 0>*Factor, <0, -3/2 - 3*sqrt(5)/10, -(1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <2 + sqrt(5), 0, 0>*Factor, <-sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), -(1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <-3*sqrt(5)*(sqrt(5) + 3)/10, 0, 3*sqrt(5)*(1 + sqrt(5))/10>*Factor, <(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), 1 + sqrt(5)/2, (-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2)>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <0, 3*sqrt(5)/10 + 3/2, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <3*sqrt(5)*(1 + sqrt(5))/10, -3*sqrt(5)*(sqrt(5) + 3)/10, 0>*Factor, <-(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor, <3*sqrt(5)/10 + 3/2, -(-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0>*Factor, <(-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), -(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <-3/2 - 3*sqrt(5)/10, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4), 0>*Factor, <-(-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0, 3*sqrt(5)/10 + 3/2>*Factor, <(1 + sqrt(5))*(3*sqrt(5)/20 + 3/4), 0, -3/2 - 3*sqrt(5)/10>*Factor, <0, 0, -sqrt(5) - 2>*Factor, <0, 3*sqrt(5)/10 + 3/2, (-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5))>*Factor, <(-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2), 1 + sqrt(5)/2>*Factor, <0, -sqrt(5) - 2, 0>*Factor, <(1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <0, -3/2 - 3*sqrt(5)/10, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <(1/2 + sqrt(5)/4)*(-sqrt(5) + 1), -(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <-sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <-sqrt(5) - 2, 0, 0>*Factor, <-3/2 - 3*sqrt(5)/10, (-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0>*Factor, <1 + sqrt(5)/2, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <1 + sqrt(5)/2, (-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor, <-3*sqrt(5)*(sqrt(5) + 3)/10, 0, -3*sqrt(5)*(1 + sqrt(5))/10>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <0, 0, 2 + sqrt(5)>*Factor, <-sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), -(1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <1 + sqrt(5)/2, (-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[62]{array[4]{P[13], P[25], P[23], P[13]}, array[4]{P[5], P[3], P[2], P[5]}, array[4]{P[37], P[35], P[47], P[37]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[34], P[36], P[46], P[34]}, array[4]{P[48], P[52], P[42], P[48]}, array[4]{P[31], P[39], P[27], P[31]}, array[4]{P[49], P[53], P[43], P[49]}, array[4]{P[15], P[19], P[9], P[15]}, array[4]{P[59], P[58], P[55], P[59]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[14], P[18], P[8], P[14]}, array[4]{P[54], P[57], P[56], P[54]}, array[4]{P[38], P[30], P[26], P[38]}, array[4]{P[29], P[21], P[33], P[29]}, array[4]{P[44], P[50], P[40], P[44]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[32], P[28], P[20], P[32]}, array[4]{P[41], P[45], P[51], P[41]}, array[5]{P[31], P[43], P[49], P[39], P[31]}, array[5]{P[32], P[28], P[40], P[44], P[32]}, array[5]{P[13], P[23], P[17], P[7], P[13]}, array[5]{P[26], P[38], P[39], P[27], P[26]}, array[6]{P[34], P[22], P[16], P[28], P[40], P[34]}, array[5]{P[53], P[49], P[55], P[59], P[53]}, array[5]{P[57], P[56], P[58], P[59], P[57]}, array[5]{P[16], P[6], P[12], P[22], P[16]}, array[6]{P[9], P[3], P[1], P[7], P[13], P[9]}, array[5]{P[5], P[15], P[9], P[3], P[5]}, array[5]{P[45], P[54], P[57], P[51], P[45]}, array[5]{P[20], P[10], P[16], P[28], P[20]}, array[6]{P[37], P[25], P[19], P[31], P[43], P[37]}, array[6]{P[32], P[33], P[45], P[54], P[44], P[32]}, array[5]{P[54], P[44], P[50], P[56], P[54]}, array[6]{P[38], P[48], P[55], P[49], P[39], P[38]}, array[5]{P[30], P[38], P[48], P[42], P[30]}, array[6]{P[27], P[15], P[5], P[14], P[26], P[27]}, array[6]{P[47], P[51], P[57], P[59], P[53], P[47]}, array[6]{P[50], P[46], P[52], P[58], P[56], P[50]}, array[5]{P[22], P[34], P[36], P[24], P[22]}, array[6]{P[30], P[18], P[24], P[36], P[42], P[30]}, array[5]{P[33], P[29], P[41], P[45], P[33]}, array[5]{P[20], P[32], P[33], P[21], P[20]}, array[5]{P[27], P[15], P[19], P[31], P[27]}, array[5]{P[4], P[10], P[6], P[0], P[4]}, array[5]{P[35], P[47], P[51], P[41], P[35]}, array[6]{P[35], P[23], P[17], P[29], P[41], P[35]}, array[5]{P[21], P[11], P[17], P[29], P[21]}, array[5]{P[9], P[19], P[25], P[13], P[9]}, array[5]{P[4], P[1], P[7], P[11], P[4]}, array[5]{P[14], P[26], P[30], P[18], P[14]}, array[5]{P[8], P[14], P[5], P[2], P[8]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[6]{P[10], P[20], P[21], P[11], P[4], P[10]}, array[5]{P[43], P[53], P[47], P[37], P[43]}, array[5]{P[34], P[40], P[50], P[46], P[34]}, array[6]{P[2], P[0], P[6], P[12], P[8], P[2]}, array[5]{P[48], P[55], P[58], P[52], P[48]}, array[5]{P[35], P[23], P[25], P[37], P[35]}, array[5]{P[18], P[8], P[12], P[24], P[18]}, array[5]{P[42], P[36], P[46], P[52], P[42]}};
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




