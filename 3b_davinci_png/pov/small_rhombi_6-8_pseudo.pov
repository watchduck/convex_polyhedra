#include "polyhedra_davinci.inc"


/*
elongated square gyrobicupola a.k.a. pseudo-rhombicuboctahedron

The following coordinates were used in Python to create the POV-Ray variables below.
The last four tuples differ from the rhombicuboctahedron. They describe the upper square.

coordinate_tuples = [
    [1, 1, 1 + sqrt(2)],
    [1, 1, -sqrt(2) - 1],
    [1, -1, 1 + sqrt(2)],
    [1, -1, -sqrt(2) - 1],
    [-1, 1, 1 + sqrt(2)],
    [-1, 1, -sqrt(2) - 1],
    [-1, -1, 1 + sqrt(2)],
    [-1, -1, -sqrt(2) - 1],
    [1, -sqrt(2) - 1, 1],
    [1, -sqrt(2) - 1, -1],
    [-1, -sqrt(2) - 1, 1],
    [-1, -sqrt(2) - 1, -1],
    [1 + sqrt(2), 1, 1],
    [1 + sqrt(2), 1, -1],
    [1 + sqrt(2), -1, 1],
    [1 + sqrt(2), -1, -1],
    [-sqrt(2) - 1, 1, 1],
    [-sqrt(2) - 1, 1, -1],
    [-sqrt(2) - 1, -1, 1],
    [-sqrt(2) - 1, -1, -1],

    [0, 1 + sqrt(2), sqrt(2)],
    [0, 1 + sqrt(2), -sqrt(2)],
    [sqrt(2), 1 + sqrt(2), 0],
    [-sqrt(2), 1 + sqrt(2), 0],
]
*/


/////////////////////////////////// variables

#declare Factor = 1.6;
#declare Abs = array[4]{ (0)*Factor, (1)*Factor, (sqrt(2))*Factor, (1 + sqrt(2))*Factor, }

#declare P = array[24]{ <-Abs[3],-Abs[1],-Abs[1]>, <-Abs[3],-Abs[1],Abs[1]>, <-Abs[3],Abs[1],-Abs[1]>, <-Abs[3],Abs[1],Abs[1]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],-Abs[3],-Abs[1]>, <-Abs[1],-Abs[3],Abs[1]>, <-Abs[1],-Abs[1],-Abs[3]>, <-Abs[1],-Abs[1],Abs[3]>, <-Abs[1],Abs[1],-Abs[3]>, <-Abs[1],Abs[1],Abs[3]>, <Abs[0],Abs[3],-Abs[2]>, <Abs[0],Abs[3],Abs[2]>, <Abs[1],-Abs[3],-Abs[1]>, <Abs[1],-Abs[3],Abs[1]>, <Abs[1],-Abs[1],-Abs[3]>, <Abs[1],-Abs[1],Abs[3]>, <Abs[1],Abs[1],-Abs[3]>, <Abs[1],Abs[1],Abs[3]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],-Abs[1]>, <Abs[3],-Abs[1],Abs[1]>, <Abs[3],Abs[1],-Abs[1]>, <Abs[3],Abs[1],Abs[1]>, }



#declare UncoloredEdges = array[48]{array[2]{0, 5}, array[2]{21, 23}, array[2]{6, 8}, array[2]{10, 12}, array[2]{5, 13}, array[2]{12, 19}, array[2]{0, 2}, array[2]{15, 17}, array[2]{6, 14}, array[2]{18, 23}, array[2]{9, 11}, array[2]{2, 9}, array[2]{7, 15}, array[2]{13, 20}, array[2]{15, 20}, array[2]{12, 18}, array[2]{1, 8}, array[2]{9, 17}, array[2]{19, 22}, array[2]{11, 17}, array[2]{8, 10}, array[2]{1, 6}, array[2]{20, 22}, array[2]{3, 10}, array[2]{2, 3}, array[2]{22, 23}, array[2]{4, 11}, array[2]{20, 21}, array[2]{7, 9}, array[2]{0, 7}, array[2]{2, 4}, array[2]{4, 12}, array[2]{13, 15}, array[2]{5, 6}, array[2]{14, 16}, array[2]{8, 16}, array[2]{17, 22}, array[2]{1, 3}, array[2]{5, 7}, array[2]{16, 18}, array[2]{19, 23}, array[2]{0, 1}, array[2]{16, 21}, array[2]{11, 19}, array[2]{3, 4}, array[2]{10, 18}, array[2]{14, 21}, array[2]{13, 14}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.3;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[26]{<-2*sqrt(2)*(sqrt(2)/6 + 1/2), sqrt(2)/3 + 1, 0>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <-1 - sqrt(2)/3, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <0, sqrt(2)/3 + 1, 2*sqrt(2)*(sqrt(2)/6 + 1/2)>*Factor, <0, sqrt(2)/3 + 1, -2*sqrt(2)*(sqrt(2)/6 + 1/2)>*Factor, <-1 - sqrt(2)/3, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <-2*sqrt(2)*(-1/2 - sqrt(2)/6), sqrt(2)/3 + 1, 0>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <-2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <0, -sqrt(2) - 1, 0>*Factor, <0, 1 + sqrt(2), 0>*Factor, <0, -2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <1/2 + sqrt(2)/2, -2*sqrt(2)*(-sqrt(2)/4 - 1/4), -sqrt(2)/2 - 1/2>*Factor, <-2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <1 + sqrt(2), 0, 0>*Factor, <0, 0, -sqrt(2) - 1>*Factor, <-2*sqrt(2)*(1/4 + sqrt(2)/4), 0, 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4), 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <1/2 + sqrt(2)/2, 2*sqrt(2)*(1/4 + sqrt(2)/4), 1/2 + sqrt(2)/2>*Factor, <-2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <-sqrt(2)/2 - 1/2, -2*sqrt(2)*(-sqrt(2)/4 - 1/4), 1/2 + sqrt(2)/2>*Factor, <-sqrt(2) - 1, 0, 0>*Factor, <-sqrt(2)/2 - 1/2, 2*sqrt(2)*(1/4 + sqrt(2)/4), -sqrt(2)/2 - 1/2>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <0, 0, 1 + sqrt(2)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[26]{array[4]{P[2], P[3], P[4], P[2]}, array[4]{P[13], P[15], P[20], P[13]}, array[4]{P[7], P[5], P[0], P[7]}, array[4]{P[10], P[12], P[18], P[10]}, array[4]{P[17], P[11], P[9], P[17]}, array[4]{P[6], P[1], P[8], P[6]}, array[4]{P[22], P[23], P[19], P[22]}, array[4]{P[14], P[21], P[16], P[14]}, array[5]{P[0], P[7], P[9], P[2], P[0]}, array[5]{P[1], P[0], P[5], P[6], P[1]}, array[5]{P[5], P[13], P[14], P[6], P[5]}, array[5]{P[4], P[11], P[19], P[12], P[4]}, array[5]{P[6], P[14], P[16], P[8], P[6]}, array[5]{P[11], P[19], P[22], P[17], P[11]}, array[5]{P[15], P[20], P[22], P[17], P[15]}, array[5]{P[20], P[22], P[23], P[21], P[20]}, array[5]{P[9], P[17], P[15], P[7], P[9]}, array[5]{P[1], P[3], P[10], P[8], P[1]}, array[5]{P[5], P[13], P[15], P[7], P[5]}, array[5]{P[18], P[12], P[19], P[23], P[18]}, array[5]{P[18], P[16], P[21], P[23], P[18]}, array[5]{P[12], P[4], P[3], P[10], P[12]}, array[5]{P[3], P[1], P[0], P[2], P[3]}, array[5]{P[2], P[9], P[11], P[4], P[2]}, array[5]{P[13], P[20], P[21], P[14], P[13]}, array[5]{P[8], P[16], P[18], P[10], P[8]}};

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




