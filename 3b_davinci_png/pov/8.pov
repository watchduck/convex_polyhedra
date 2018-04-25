#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 4.3;
#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[12]{array[2]{1, 3}, array[2]{3, 5}, array[2]{0, 3}, array[2]{4, 5}, array[2]{0, 4}, array[2]{0, 1}, array[2]{1, 2}, array[2]{2, 4}, array[2]{2, 5}, array[2]{1, 5}, array[2]{3, 4}, array[2]{0, 2}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = .35;
#declare FaceOffset = 1;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[8]{<-1/3, 1/3, 1/3>*Factor, <1/3, 1/3, 1/3>*Factor, <-1/3, 1/3, -1/3>*Factor, <1/3, 1/3, -1/3>*Factor, <1/3, -1/3, 1/3>*Factor, <-1/3, -1/3, 1/3>*Factor, <-1/3, -1/3, -1/3>*Factor, <1/3, -1/3, -1/3>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[8]{array[4]{P[3], P[4], P[0], P[3]}, array[4]{P[3], P[4], P[5], P[3]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[5], P[2]}, array[4]{P[1], P[3], P[5], P[1]}, array[4]{P[1], P[3], P[0], P[1]}, array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[1], P[2], P[5], P[1]}};
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




