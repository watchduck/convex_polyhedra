#include "light_and_axes.inc"

#include "SolidFromFaceNormalPoints.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"


# declare Factor = 1;
# declare Abs = array[3]{(1)*Factor,(1 + sqrt(2))*Factor,(1 + 2*sqrt(2))*Factor}
# declare P = array[48]{<-Abs[2],-Abs[1],-Abs[0]>,<-Abs[2],-Abs[1],Abs[0]>,<-Abs[2],-Abs[0],-Abs[1]>,<-Abs[2],-Abs[0],Abs[1]>,<-Abs[2],Abs[0],-Abs[1]>,<-Abs[2],Abs[0],Abs[1]>,<-Abs[2],Abs[1],-Abs[0]>,<-Abs[2],Abs[1],Abs[0]>,<-Abs[1],-Abs[2],-Abs[0]>,<-Abs[1],-Abs[2],Abs[0]>,<-Abs[1],-Abs[0],-Abs[2]>,<-Abs[1],-Abs[0],Abs[2]>,<-Abs[1],Abs[0],-Abs[2]>,<-Abs[1],Abs[0],Abs[2]>,<-Abs[1],Abs[2],-Abs[0]>,<-Abs[1],Abs[2],Abs[0]>,<-Abs[0],-Abs[2],-Abs[1]>,<-Abs[0],-Abs[2],Abs[1]>,<-Abs[0],-Abs[1],-Abs[2]>,<-Abs[0],-Abs[1],Abs[2]>,<-Abs[0],Abs[1],-Abs[2]>,<-Abs[0],Abs[1],Abs[2]>,<-Abs[0],Abs[2],-Abs[1]>,<-Abs[0],Abs[2],Abs[1]>,<Abs[0],-Abs[2],-Abs[1]>,<Abs[0],-Abs[2],Abs[1]>,<Abs[0],-Abs[1],-Abs[2]>,<Abs[0],-Abs[1],Abs[2]>,<Abs[0],Abs[1],-Abs[2]>,<Abs[0],Abs[1],Abs[2]>,<Abs[0],Abs[2],-Abs[1]>,<Abs[0],Abs[2],Abs[1]>,<Abs[1],-Abs[2],-Abs[0]>,<Abs[1],-Abs[2],Abs[0]>,<Abs[1],-Abs[0],-Abs[2]>,<Abs[1],-Abs[0],Abs[2]>,<Abs[1],Abs[0],-Abs[2]>,<Abs[1],Abs[0],Abs[2]>,<Abs[1],Abs[2],-Abs[0]>,<Abs[1],Abs[2],Abs[0]>,<Abs[2],-Abs[1],-Abs[0]>,<Abs[2],-Abs[1],Abs[0]>,<Abs[2],-Abs[0],-Abs[1]>,<Abs[2],-Abs[0],Abs[1]>,<Abs[2],Abs[0],-Abs[1]>,<Abs[2],Abs[0],Abs[1]>,<Abs[2],Abs[1],-Abs[0]>,<Abs[2],Abs[1],Abs[0]>}

#declare FaceOffset = .18;
#declare EdgeOffset = .25;
#declare PrismThickness = EdgeOffset*2 + .1;

#declare FaceNormalPoints = array[26]{<-sqrt(2) - 1, 1 + sqrt(2), 1 + sqrt(2)>*Factor, <1 + sqrt(2), -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <1 + sqrt(2), 1 + sqrt(2), -sqrt(2) - 1>*Factor, <1 + 3*sqrt(2)/2, -3*sqrt(2)/2 - 1, 0.0>*Factor, <1 + sqrt(2), -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <0.0, -3*sqrt(2)/2 - 1, 1 + 3*sqrt(2)/2>*Factor, <-2*sqrt(2) - 1, 0, 0>*Factor, <1 + 2*sqrt(2), 0, 0>*Factor, <0.0, -3*sqrt(2)/2 - 1, -3*sqrt(2)/2 - 1>*Factor, <0, 0, -2*sqrt(2) - 1>*Factor, <0.0, 1 + 3*sqrt(2)/2, -3*sqrt(2)/2 - 1>*Factor, <-3*sqrt(2)/2 - 1, 0.0, 1 + 3*sqrt(2)/2>*Factor, <1 + 3*sqrt(2)/2, 0.0, 1 + 3*sqrt(2)/2>*Factor, <-3*sqrt(2)/2 - 1, 0.0, -3*sqrt(2)/2 - 1>*Factor, <1 + 3*sqrt(2)/2, 0.0, -3*sqrt(2)/2 - 1>*Factor, <0, 0, 1 + 2*sqrt(2)>*Factor, <1 + sqrt(2), 1 + sqrt(2), 1 + sqrt(2)>*Factor, <-sqrt(2) - 1, 1 + sqrt(2), -sqrt(2) - 1>*Factor, <-3*sqrt(2)/2 - 1, -3*sqrt(2)/2 - 1, 0.0>*Factor, <-sqrt(2) - 1, -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <-sqrt(2) - 1, -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <1 + 3*sqrt(2)/2, 1 + 3*sqrt(2)/2, 0.0>*Factor, <0.0, 1 + 3*sqrt(2)/2, 1 + 3*sqrt(2)/2>*Factor, <0, -2*sqrt(2) - 1, 0>*Factor, <-3*sqrt(2)/2 - 1, 1 + 3*sqrt(2)/2, 0.0>*Factor, <0, 1 + 2*sqrt(2), 0>*Factor,};

#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare PrismUnion = union{
    SolidPrismFromVerticesOfPolygon(array[7]{P[19], P[17], P[9], P[1], P[3], P[11], P[19],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[32], P[33], P[25], P[17], P[9], P[8], P[16], P[24], P[32],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[41], P[40], P[42], P[44], P[46], P[47], P[45], P[43], P[41],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[15], P[14], P[22], P[30], P[38], P[39], P[31], P[23], P[15],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[15], P[7], P[5], P[13], P[21], P[23], P[15],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[4], P[2], P[10], P[12], P[4],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[39], P[31], P[29], P[37], P[45], P[47], P[39],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[18], P[10], P[12], P[20], P[28], P[36], P[34], P[26], P[18],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[8], P[0], P[2], P[10], P[18], P[16], P[8],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[24], P[32], P[40], P[42], P[34], P[26], P[24],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[36], P[44], P[46], P[38], P[30], P[28], P[36],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[35], P[27], P[25], P[33], P[41], P[43], P[35],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[7]{P[14], P[6], P[4], P[12], P[20], P[22], P[14],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[39], P[47], P[46], P[38], P[39],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[9], P[1], P[0], P[8], P[9],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[3], P[1], P[0], P[2], P[4], P[6], P[7], P[5], P[3],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[9]{P[29], P[37], P[35], P[27], P[19], P[11], P[13], P[21], P[29],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[6], P[14], P[15], P[7], P[6],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[33], P[32], P[40], P[41], P[33],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[18], P[26], P[24], P[16], P[18],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[3], P[11], P[13], P[5], P[3],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[43], P[35], P[37], P[45], P[43],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[36], P[34], P[42], P[44], P[36],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[30], P[28], P[20], P[22], P[30],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[21], P[23], P[31], P[29], P[21],}, EdgeOffset, PrismThickness)
    SolidPrismFromVerticesOfPolygon(array[5]{P[19], P[27], P[25], P[17], P[19],}, EdgeOffset, PrismThickness)
}

difference{ 
    object{Hollow} object{PrismUnion} 
    pigment{color Orange}
}

