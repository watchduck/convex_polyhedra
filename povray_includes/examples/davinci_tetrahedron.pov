#include "light_and_axes.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"


# declare Factor = 3;
# declare Abs = array[1]{(1)*Factor}
# declare P = array[4]{<-Abs[0],-Abs[0],-Abs[0]>,<-Abs[0],Abs[0],Abs[0]>,<Abs[0],-Abs[0],Abs[0]>,<Abs[0],Abs[0],-Abs[0]>}

// specific to tetrahedron to not cut with prism in opposite site
#declare EdgeOffset = .5;
#declare FaceOffset = EdgeOffset*sqrt(2)/2;
#declare PrismThickness = EdgeOffset*sqrt(2) + 0.0001;

#declare FaceNormalPoints = array[4]{<-0.3333333333333333, -0.3333333333333333, 0.3333333333333333>*Factor, <0.3333333333333333, -0.3333333333333333, -0.3333333333333333>*Factor, <0.3333333333333333, 0.3333333333333333, 0.3333333333333333>*Factor, <-0.3333333333333333, 0.3333333333333333, -0.3333333333333333>*Factor,};

#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare PrismUnion = union{
    SolidPrismFromVerticesOfPolygon(array[4]{P[1], P[2], P[0], P[1],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[4]{P[3], P[2], P[0], P[3],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[4]{P[3], P[1], P[0], P[3],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[4]{P[3], P[1], P[2], P[3],}, EdgeOffset, PrismThickness)
}

difference{ object{Hollow} object{PrismUnion}  pigment{color Orange}  }

