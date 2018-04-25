#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 3.1;
#declare Abs = array[2]{ (-1 + sqrt(2))*Factor, (1)*Factor, }

#declare P = array[24]{ <-Abs[1],-Abs[1],-Abs[0]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],-Abs[0],-Abs[1]>, <-Abs[1],-Abs[0],Abs[1]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],-Abs[0]>, <-Abs[1],Abs[1],Abs[0]>, <-Abs[0],-Abs[1],-Abs[1]>, <-Abs[0],-Abs[1],Abs[1]>, <-Abs[0],Abs[1],-Abs[1]>, <-Abs[0],Abs[1],Abs[1]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],-Abs[0]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[1]>, <Abs[1],-Abs[0],Abs[1]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],-Abs[0]>, <Abs[1],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[36]{array[2]{0, 8}, array[2]{6, 10}, array[2]{15, 21}, array[2]{21, 23}, array[2]{5, 7}, array[2]{10, 14}, array[2]{17, 19}, array[2]{3, 5}, array[2]{16, 18}, array[2]{12, 16}, array[2]{2, 4}, array[2]{14, 22}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{0, 1}, array[2]{8, 12}, array[2]{6, 7}, array[2]{19, 21}, array[2]{13, 19}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{18, 20}, array[2]{20, 22}, array[2]{2, 8}, array[2]{16, 17}, array[2]{15, 23}, array[2]{1, 9}, array[2]{14, 20}, array[2]{13, 17}, array[2]{4, 10}, array[2]{11, 15}, array[2]{12, 18}, array[2]{9, 13}, array[2]{22, 23}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.38;
#declare FaceOffset = 0.38;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[14]{<2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <(7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), (7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2)>*Factor, <2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6)>*Factor, <(7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), (7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6)>*Factor, <0, 2*(-3*sqrt(2) + 4)*(-3*sqrt(2)/4 - 1), 0>*Factor, <0, 4*(1/4 + sqrt(2)/4)*(-sqrt(2) + 1), 0>*Factor, <2*(-sqrt(2) + 2)*(sqrt(2)/4 + 1/2), 0, 0>*Factor, <0, 0, 2*(-sqrt(2) + 2)*(sqrt(2)/4 + 1/2)>*Factor, <0, 0, 2*(1 + 3*sqrt(2)/4)*(-3*sqrt(2) + 4)>*Factor, <2*(-4 + 3*sqrt(2))*(-3*sqrt(2)/4 - 1), 0, 0>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[14]{array[4]{P[8], P[2], P[0], P[8]}, array[4]{P[1], P[9], P[3], P[1]}, array[4]{P[4], P[10], P[6], P[4]}, array[4]{P[7], P[5], P[11], P[7]}, array[4]{P[13], P[17], P[19], P[13]}, array[4]{P[23], P[21], P[15], P[23]}, array[4]{P[12], P[18], P[16], P[12]}, array[4]{P[14], P[20], P[22], P[14]}, array[9]{P[22], P[14], P[10], P[6], P[7], P[11], P[15], P[23], P[22]}, array[9]{P[12], P[8], P[0], P[1], P[9], P[13], P[17], P[16], P[12]}, array[9]{P[19], P[17], P[16], P[18], P[20], P[22], P[23], P[21], P[19]}, array[9]{P[9], P[3], P[5], P[11], P[15], P[21], P[19], P[13], P[9]}, array[9]{P[4], P[2], P[8], P[12], P[18], P[20], P[14], P[10], P[4]}, array[9]{P[7], P[5], P[3], P[1], P[0], P[2], P[4], P[6], P[7]}};
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




