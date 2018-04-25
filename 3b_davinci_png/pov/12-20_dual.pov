#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 2.53;
#declare Abs = array[4]{ (0)*Factor, (sqrt(5)/4)*Factor, (sqrt(5)/8 + 5/8)*Factor, (5/8 + 3*sqrt(5)/8)*Factor, }

#declare P = array[32]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[0],-Abs[2]>, <-Abs[3],Abs[0],Abs[2]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[3],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],-Abs[2],-Abs[3]>, <Abs[0],-Abs[2],Abs[3]>, <Abs[0],Abs[2],-Abs[3]>, <Abs[0],Abs[2],Abs[3]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[3],Abs[0]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[0],-Abs[2]>, <Abs[3],Abs[0],Abs[2]>, <Abs[3],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[60]{array[2]{7, 9}, array[2]{25, 29}, array[2]{5, 14}, array[2]{19, 27}, array[2]{2, 11}, array[2]{15, 21}, array[2]{15, 24}, array[2]{24, 30}, array[2]{10, 14}, array[2]{26, 27}, array[2]{21, 30}, array[2]{16, 20}, array[2]{17, 19}, array[2]{17, 26}, array[2]{30, 31}, array[2]{27, 31}, array[2]{7, 16}, array[2]{28, 30}, array[2]{2, 6}, array[2]{4, 5}, array[2]{16, 18}, array[2]{2, 3}, array[2]{28, 29}, array[2]{13, 22}, array[2]{8, 9}, array[2]{1, 7}, array[2]{26, 30}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{11, 17}, array[2]{14, 23}, array[2]{0, 1}, array[2]{1, 10}, array[2]{18, 27}, array[2]{29, 31}, array[2]{23, 29}, array[2]{9, 18}, array[2]{12, 22}, array[2]{22, 24}, array[2]{22, 28}, array[2]{16, 25}, array[2]{25, 27}, array[2]{4, 12}, array[2]{12, 14}, array[2]{20, 29}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 16}, array[2]{8, 17}, array[2]{2, 8}, array[2]{14, 20}, array[2]{9, 19}, array[2]{0, 4}, array[2]{17, 21}, array[2]{11, 15}, array[2]{1, 5}, array[2]{22, 23}, array[2]{4, 13}, array[2]{6, 15}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.28;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[30]{<-(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, (-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <sqrt(5)/16 + 5/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <0, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0, 0>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <sqrt(5)/16 + 5/16, -5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, 5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32>*Factor, <0, 0, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16>*Factor, <0, 0, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16>*Factor, <-5/16 - sqrt(5)/16, 5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, -5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16, 0, 0>*Factor, <5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, (-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <-5/16 - sqrt(5)/16, -5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5/16 - sqrt(5)/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5/16 - sqrt(5)/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <0, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[30]{array[5]{P[0], P[1], P[5], P[4], P[0]}, array[5]{P[20], P[16], P[25], P[29], P[20]}, array[5]{P[22], P[28], P[30], P[24], P[22]}, array[5]{P[20], P[14], P[23], P[29], P[20]}, array[5]{P[17], P[19], P[27], P[26], P[17]}, array[5]{P[18], P[9], P[19], P[27], P[18]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[3], P[9], P[7], P[1], P[3]}, array[5]{P[16], P[25], P[27], P[18], P[16]}, array[5]{P[22], P[12], P[14], P[23], P[22]}, array[5]{P[17], P[8], P[2], P[11], P[17]}, array[5]{P[1], P[7], P[16], P[10], P[1]}, array[5]{P[27], P[31], P[30], P[26], P[27]}, array[5]{P[17], P[21], P[30], P[26], P[17]}, array[5]{P[16], P[10], P[14], P[20], P[16]}, array[5]{P[24], P[30], P[21], P[15], P[24]}, array[5]{P[22], P[28], P[29], P[23], P[22]}, array[5]{P[17], P[21], P[15], P[11], P[17]}, array[5]{P[4], P[12], P[14], P[5], P[4]}, array[5]{P[2], P[6], P[15], P[11], P[2]}, array[5]{P[29], P[31], P[30], P[28], P[29]}, array[5]{P[14], P[5], P[1], P[10], P[14]}, array[5]{P[31], P[29], P[25], P[27], P[31]}, array[5]{P[17], P[8], P[9], P[19], P[17]}, array[5]{P[8], P[2], P[3], P[9], P[8]}, array[5]{P[13], P[22], P[24], P[15], P[13]}, array[5]{P[18], P[9], P[7], P[16], P[18]}, array[5]{P[13], P[15], P[6], P[4], P[13]}, array[5]{P[4], P[12], P[22], P[13], P[4]}, array[5]{P[4], P[0], P[2], P[6], P[4]}};
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




