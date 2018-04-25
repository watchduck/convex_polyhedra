#include "light_and_axes.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"


# declare Factor = 3;
# declare Abs = array[1]{(1)*Factor}
# declare P = array[8]{<-Abs[0],-Abs[0],-Abs[0]>,<-Abs[0],-Abs[0],Abs[0]>,<-Abs[0],Abs[0],-Abs[0]>,<-Abs[0],Abs[0],Abs[0]>,<Abs[0],-Abs[0],-Abs[0]>,<Abs[0],-Abs[0],Abs[0]>,<Abs[0],Abs[0],-Abs[0]>,<Abs[0],Abs[0],Abs[0]>}

#declare FaceOffset = .45;
#declare EdgeOffset = FaceOffset;
#declare PrismThickness = EdgeOffset*2 + .1;

#declare FaceNormalPoints = array[6]{<1.0, 0.0, 0.0>*Factor, <-1.0, 0.0, 0.0>*Factor, <0.0, 0.0, -1.0>*Factor, <0.0, 1.0, 0.0>*Factor, <0.0, 0.0, 1.0>*Factor, <0.0, -1.0, 0.0>*Factor,};

#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare PrismUnion = union{
    SolidPrismFromVerticesOfPolygon(array[5]{P[4], P[5], P[7], P[6], P[4],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[2], P[0], P[4], P[6], P[2],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[0], P[1], P[5], P[4], P[0],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[5], P[1], P[3], P[7], P[5],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[2], P[3], P[7], P[6], P[2],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[0], P[1], P[3], P[2], P[0],}, EdgeOffset, PrismThickness)
}

difference{ object{Hollow} object{PrismUnion}  pigment{color Orange}  }



