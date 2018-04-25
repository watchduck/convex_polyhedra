#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 2.25;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }


#declare UncoloredEdges = array[30]{array[2]{7, 9}, array[2]{1, 7}, array[2]{8, 10}, array[2]{1, 3}, array[2]{4, 6}, array[2]{10, 11}, array[2]{3, 9}, array[2]{1, 2}, array[2]{0, 3}, array[2]{0, 1}, array[2]{6, 10}, array[2]{5, 8}, array[2]{5, 7}, array[2]{2, 5}, array[2]{3, 6}, array[2]{8, 11}, array[2]{0, 6}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{3, 7}, array[2]{9, 10}, array[2]{2, 8}, array[2]{0, 4}, array[2]{2, 4}, array[2]{4, 10}, array[2]{6, 9}, array[2]{4, 8}, array[2]{9, 11}, array[2]{1, 5}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.35;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[20]{<-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <(-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12)>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12)>*Factor, <(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[20]{array[4]{P[6], P[3], P[0], P[6]}, array[4]{P[8], P[2], P[5], P[8]}, array[4]{P[1], P[2], P[5], P[1]}, array[4]{P[1], P[3], P[0], P[1]}, array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[1], P[7], P[3], P[1]}, array[4]{P[1], P[7], P[5], P[1]}, array[4]{P[9], P[6], P[10], P[9]}, array[4]{P[9], P[7], P[3], P[9]}, array[4]{P[9], P[6], P[3], P[9]}, array[4]{P[4], P[2], P[0], P[4]}, array[4]{P[4], P[6], P[10], P[4]}, array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[4], P[8], P[10], P[4]}, array[4]{P[4], P[8], P[2], P[4]}, array[4]{P[11], P[7], P[5], P[11]}, array[4]{P[11], P[8], P[5], P[11]}, array[4]{P[11], P[8], P[10], P[11]}, array[4]{P[11], P[9], P[10], P[11]}, array[4]{P[11], P[9], P[7], P[11]}};
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




