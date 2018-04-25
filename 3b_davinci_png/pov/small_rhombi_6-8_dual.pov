#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 3.05;
#declare Abs = array[4]{ (0)*Factor, (sqrt(2)/7 + 4/7)*Factor, (1.0)*Factor, (sqrt(2))*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[48]{array[2]{8, 15}, array[2]{3, 8}, array[2]{20, 24}, array[2]{20, 23}, array[2]{11, 13}, array[2]{19, 22}, array[2]{2, 5}, array[2]{9, 21}, array[2]{19, 24}, array[2]{10, 12}, array[2]{9, 10}, array[2]{16, 24}, array[2]{23, 25}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{2, 12}, array[2]{21, 25}, array[2]{15, 16}, array[2]{17, 22}, array[2]{9, 11}, array[2]{3, 13}, array[2]{7, 14}, array[2]{0, 3}, array[2]{0, 1}, array[2]{4, 16}, array[2]{12, 22}, array[2]{3, 6}, array[2]{22, 25}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{1, 6}, array[2]{10, 17}, array[2]{18, 23}, array[2]{1, 9}, array[2]{24, 25}, array[2]{0, 4}, array[2]{14, 19}, array[2]{13, 23}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{18, 21}, array[2]{1, 5}, array[2]{15, 20}, array[2]{6, 11}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.3;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[24]{<(-20/17 - 9*sqrt(2)/17)*(-sqrt(2) + 3)/7, (-3 + sqrt(2))*(-20/17 - 9*sqrt(2)/17)/7, (-20/17 - 9*sqrt(2)/17)*(1 + 2*sqrt(2))/7>*Factor, <(9/17 + 10*sqrt(2)/17)*(sqrt(2) + 4)/7, (9/17 + 10*sqrt(2)/17)*(-3*sqrt(2) + 2)/7, (-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7>*Factor, <(-1 + sqrt(2))*(-7*sqrt(2)/17 - 8/17), -7*sqrt(2)/17 - 8/17, (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17)>*Factor, <(-20/17 - 9*sqrt(2)/17)*(-sqrt(2) + 3)/7, (-20/17 - 9*sqrt(2)/17)*(-sqrt(2) + 3)/7, -(-20/17 - 9*sqrt(2)/17)*(1 + 2*sqrt(2))/7>*Factor, <(-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7, (-3*sqrt(2) + 2)*(-10*sqrt(2)/17 - 9/17)/7, (-3*sqrt(2) + 2)*(-10*sqrt(2)/17 - 9/17)/7>*Factor, <-(1 + 2*sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7>*Factor, <(-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7, (-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7, -(9/17 + 10*sqrt(2)/17)*(sqrt(2) + 4)/7>*Factor, <8/17 + 7*sqrt(2)/17, (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17), (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17)>*Factor, <-(-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7>*Factor, <(9/17 + 10*sqrt(2)/17)*(sqrt(2) + 4)/7, (-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7, (9/17 + 10*sqrt(2)/17)*(-3*sqrt(2) + 2)/7>*Factor, <(9/17 + 10*sqrt(2)/17)*(-3*sqrt(2) + 2)/7, -(9/17 + 10*sqrt(2)/17)*(sqrt(2) + 4)/7, (9/17 + 10*sqrt(2)/17)*(-3*sqrt(2) + 2)/7>*Factor, <(-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7, (-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7>*Factor, <(-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7, -(9/17 + 10*sqrt(2)/17)*(sqrt(2) + 4)/7, (-2 + 3*sqrt(2))*(9/17 + 10*sqrt(2)/17)/7>*Factor, <(-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (1 + 2*sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7>*Factor, <(-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (-sqrt(2) + 3)*(9*sqrt(2)/17 + 20/17)/7, (1 + 2*sqrt(2))*(9*sqrt(2)/17 + 20/17)/7>*Factor, <(-3*sqrt(2) + 2)*(-10*sqrt(2)/17 - 9/17)/7, (-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7>*Factor, <(-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17), 8/17 + 7*sqrt(2)/17, (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17)>*Factor, <-7*sqrt(2)/17 - 8/17, (-1 + sqrt(2))*(-7*sqrt(2)/17 - 8/17), (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17)>*Factor, <(-3 + sqrt(2))*(-20/17 - 9*sqrt(2)/17)/7, (-3 + sqrt(2))*(-20/17 - 9*sqrt(2)/17)/7, -(-20/17 - 9*sqrt(2)/17)*(1 + 2*sqrt(2))/7>*Factor, <(-3 + sqrt(2))*(-20/17 - 9*sqrt(2)/17)/7, (-20/17 - 9*sqrt(2)/17)*(-sqrt(2) + 3)/7, -(-20/17 - 9*sqrt(2)/17)*(1 + 2*sqrt(2))/7>*Factor, <(-3*sqrt(2) + 2)*(-10*sqrt(2)/17 - 9/17)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7, (-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7>*Factor, <(-3 + sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (1 + 2*sqrt(2))*(9*sqrt(2)/17 + 20/17)/7, (-sqrt(2) + 3)*(9*sqrt(2)/17 + 20/17)/7>*Factor, <(-3*sqrt(2) + 2)*(-10*sqrt(2)/17 - 9/17)/7, -(-10*sqrt(2)/17 - 9/17)*(sqrt(2) + 4)/7, (-2 + 3*sqrt(2))*(-10*sqrt(2)/17 - 9/17)/7>*Factor, <-7*sqrt(2)/17 - 8/17, (-sqrt(2) + 1)*(-7*sqrt(2)/17 - 8/17), (-1 + sqrt(2))*(-7*sqrt(2)/17 - 8/17)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[24]{array[5]{P[7], P[14], P[12], P[2], P[7]}, array[5]{P[18], P[23], P[25], P[21], P[18]}, array[5]{P[9], P[1], P[6], P[11], P[9]}, array[5]{P[6], P[11], P[13], P[3], P[6]}, array[5]{P[4], P[8], P[3], P[0], P[4]}, array[5]{P[1], P[0], P[2], P[5], P[1]}, array[5]{P[12], P[14], P[19], P[22], P[12]}, array[5]{P[25], P[24], P[20], P[23], P[25]}, array[5]{P[17], P[22], P[25], P[21], P[17]}, array[5]{P[19], P[22], P[25], P[24], P[19]}, array[5]{P[5], P[10], P[9], P[1], P[5]}, array[5]{P[10], P[12], P[2], P[5], P[10]}, array[5]{P[18], P[21], P[9], P[11], P[18]}, array[5]{P[16], P[4], P[7], P[14], P[16]}, array[5]{P[13], P[15], P[8], P[3], P[13]}, array[5]{P[10], P[17], P[21], P[9], P[10]}, array[5]{P[20], P[15], P[16], P[24], P[20]}, array[5]{P[0], P[3], P[6], P[1], P[0]}, array[5]{P[13], P[15], P[20], P[23], P[13]}, array[5]{P[11], P[13], P[23], P[18], P[11]}, array[5]{P[17], P[10], P[12], P[22], P[17]}, array[5]{P[8], P[15], P[16], P[4], P[8]}, array[5]{P[14], P[16], P[24], P[19], P[14]}, array[5]{P[7], P[4], P[0], P[2], P[7]}};
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




