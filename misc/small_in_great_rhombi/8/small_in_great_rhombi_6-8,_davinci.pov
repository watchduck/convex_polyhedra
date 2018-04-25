#include "small_in_great_rhombi.inc"

#include "LongCylinder.inc"


#declare Factor = 1;

#declare EdgeOffset = 0.17;
#declare FaceOffset = EdgeOffset;
#declare PrismThickness = FaceOffset*2 + .1;


union{



//////////////////////////////////////////////////////////////////// small

#declare Abs = array[2]{ (1)*Factor, (1 + sqrt(2))*Factor, }

#declare P = array[24]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],-Abs[0],Abs[0]>, <-Abs[1],Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[1],Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],-Abs[0]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare FaceNormalPoints = array[26]{<-1 - sqrt(2)/3, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <-1 - sqrt(2)/3, sqrt(2)/3 + 1, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, sqrt(2)/3 + 1, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, sqrt(2)/3 + 1, -1 - sqrt(2)/3>*Factor, <-1 - sqrt(2)/3, sqrt(2)/3 + 1, -1 - sqrt(2)/3>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <-1 - sqrt(2)/3, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <-2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4), 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4), 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, -2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <-2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <0, 0, -sqrt(2) - 1>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), 0, -2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <0, 1 + sqrt(2), 0>*Factor, <0, 2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), -2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <1 + sqrt(2), 0, 0>*Factor, <-sqrt(2) - 1, 0, 0>*Factor, <0, 0, 1 + sqrt(2)>*Factor, <0, -sqrt(2) - 1, 0>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor};

#declare Faces = array[26]{array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[9], P[11], P[3], P[9]}, array[4]{P[19], P[23], P[17], P[19]}, array[4]{P[22], P[16], P[18], P[22]}, array[4]{P[8], P[2], P[10], P[8]}, array[4]{P[13], P[21], P[15], P[13]}, array[4]{P[5], P[1], P[7], P[5]}, array[4]{P[12], P[14], P[20], P[12]}, array[5]{P[17], P[15], P[21], P[23], P[17]}, array[5]{P[10], P[8], P[16], P[18], P[10]}, array[5]{P[12], P[20], P[21], P[13], P[12]}, array[5]{P[3], P[9], P[7], P[1], P[3]}, array[5]{P[4], P[12], P[14], P[6], P[4]}, array[5]{P[15], P[7], P[5], P[13], P[15]}, array[5]{P[0], P[1], P[5], P[4], P[0]}, array[5]{P[16], P[14], P[6], P[8], P[16]}, array[5]{P[22], P[20], P[14], P[16], P[22]}, array[5]{P[11], P[10], P[18], P[19], P[11]}, array[5]{P[11], P[9], P[17], P[19], P[11]}, array[5]{P[10], P[11], P[3], P[2], P[10]}, array[5]{P[8], P[6], P[0], P[2], P[8]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[7], P[9], P[17], P[15], P[7]}, array[5]{P[13], P[5], P[4], P[12], P[13]}, array[5]{P[18], P[22], P[23], P[19], P[18]}};

#declare OuterSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    pigment{ color SmallDark }
}

#declare InnerSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
    pigment{ color SmallLight }
}

#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }

#declare PrismUnion = union{
    #for(Index, 0, dimension_size(Faces, 1)-1)
        SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)
    #end
    pigment{ color SmallLight }
}

#declare Davinci = difference{ object{Hollow} object{PrismUnion} }
object{ Davinci }


//////////////////////////////////////////////////////////////////// great

#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }

#declare FaceNormalPoints = array[26]{<-sqrt(2) - 1, -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <0, -2*(4 + 3*sqrt(2))*(-5*sqrt(2)/4 + 2), 0>*Factor, <2*(-1/2 + 3*sqrt(2)/4)*(sqrt(2) + 2), 0, 0>*Factor, <0, -4*(-3/4 + sqrt(2)/4)*(1 + sqrt(2)), 0>*Factor, <-sqrt(2) - 1, 1 + sqrt(2), 1 + sqrt(2)>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <1 + sqrt(2), 1 + sqrt(2), 1 + sqrt(2)>*Factor, <0, 0, 4*(-3/4 + sqrt(2)/4)*(1 + sqrt(2))>*Factor, <-sqrt(2) - 1, -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <1 + sqrt(2), -sqrt(2) - 1, -sqrt(2) - 1>*Factor, <1 + sqrt(2), 1 + sqrt(2), -sqrt(2) - 1>*Factor, <1 + sqrt(2), -sqrt(2) - 1, 1 + sqrt(2)>*Factor, <-sqrt(2) - 1, 1 + sqrt(2), -sqrt(2) - 1>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <-2*sqrt(2)*(sqrt(2)/4 + 1), 0, 0>*Factor, <0, 0, 2*(-1/2 + 3*sqrt(2)/4)*(sqrt(2) + 2)>*Factor, <2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4), 0>*Factor, <0, -2*sqrt(2)*(sqrt(2)/4 + 3/4), -2*sqrt(2)*(sqrt(2)/4 + 3/4)>*Factor, <-2*sqrt(2)*(sqrt(2)/4 + 3/4), 0, 2*sqrt(2)*(sqrt(2)/4 + 3/4)>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <-2*sqrt(2)*(-3/4 - sqrt(2)/4), 0, 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, -2*sqrt(2)*(-3/4 - sqrt(2)/4), 2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, -2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor, <0, 2*sqrt(2)*(-3/4 - sqrt(2)/4), -2*sqrt(2)*(-3/4 - sqrt(2)/4)>*Factor};

#declare Faces = array[26]{array[7]{P[9], P[17], P[19], P[11], P[3], P[1], P[9]}, array[9]{P[33], P[32], P[24], P[16], P[8], P[9], P[17], P[25], P[33]}, array[9]{P[43], P[41], P[40], P[42], P[44], P[46], P[47], P[45], P[43]}, array[9]{P[30], P[38], P[39], P[31], P[23], P[15], P[14], P[22], P[30]}, array[7]{P[5], P[13], P[21], P[23], P[15], P[7], P[5]}, array[5]{P[2], P[4], P[12], P[10], P[2]}, array[7]{P[31], P[29], P[37], P[45], P[47], P[39], P[31]}, array[9]{P[36], P[34], P[26], P[18], P[10], P[12], P[20], P[28], P[36]}, array[7]{P[18], P[16], P[8], P[0], P[2], P[10], P[18]}, array[7]{P[34], P[26], P[24], P[32], P[40], P[42], P[34]}, array[7]{P[28], P[30], P[38], P[46], P[44], P[36], P[28]}, array[7]{P[27], P[35], P[43], P[41], P[33], P[25], P[27]}, array[7]{P[4], P[6], P[14], P[22], P[20], P[12], P[4]}, array[5]{P[38], P[39], P[47], P[46], P[38]}, array[5]{P[0], P[8], P[9], P[1], P[0]}, array[9]{P[7], P[5], P[3], P[1], P[0], P[2], P[4], P[6], P[7]}, array[9]{P[35], P[37], P[29], P[21], P[13], P[11], P[19], P[27], P[35]}, array[5]{P[7], P[15], P[14], P[6], P[7]}, array[5]{P[32], P[33], P[41], P[40], P[32]}, array[5]{P[18], P[16], P[24], P[26], P[18]}, array[5]{P[5], P[13], P[11], P[3], P[5]}, array[5]{P[35], P[43], P[45], P[37], P[35]}, array[5]{P[34], P[36], P[44], P[42], P[34]}, array[5]{P[22], P[30], P[28], P[20], P[22]}, array[5]{P[21], P[23], P[31], P[29], P[21]}, array[5]{P[19], P[17], P[25], P[27], P[19]}};


#declare OuterSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    pigment{ color GreatDark }
}

#declare InnerSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
    pigment{ color GreatLight }
}

#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }

#declare PrismUnion = union{
    #for(Index, 0, dimension_size(Faces, 1)-1)
        SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)
    #end
    pigment{ color GreatLight }
}

#declare Davinci = difference{ object{Hollow} object{PrismUnion} }
object{ Davinci }



scale .95
}
