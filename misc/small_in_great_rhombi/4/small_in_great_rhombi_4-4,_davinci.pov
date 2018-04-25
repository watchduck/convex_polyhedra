#include "small_in_great_rhombi.inc"

#include "LongCylinder.inc"


#declare Factor = 1;

#declare EdgeOffset = 0.1;
#declare FaceOffset = EdgeOffset;
#declare PrismThickness = FaceOffset*2 + .1;


union{



//////////////////////////////////////////////////////////////////// small

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare FaceNormalPoints = array[14]{<-2/3, 2/3, 2/3>*Factor, <-2/3, -2/3, 2/3>*Factor, <-2/3, -2/3, -2/3>*Factor, <2/3, -2/3, 2/3>*Factor, <2/3, 2/3, 2/3>*Factor, <-2/3, 2/3, -2/3>*Factor, <2/3, -2/3, -2/3>*Factor, <2/3, 2/3, -2/3>*Factor, <1, 0, 0>*Factor, <0, 1, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <-1, 0, 0>*Factor, <0, 0, 1>*Factor};

#declare Faces = array[14]{array[4]{P[7], P[2], P[3], P[7]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[10], P[5], P[8], P[10]}, array[4]{P[11], P[10], P[7], P[11]}, array[4]{P[6], P[1], P[3], P[6]}, array[4]{P[9], P[4], P[8], P[9]}, array[4]{P[9], P[6], P[11], P[9]}, array[5]{P[11], P[10], P[8], P[9], P[11]}, array[5]{P[7], P[3], P[6], P[11], P[7]}, array[5]{P[4], P[1], P[6], P[9], P[4]}, array[5]{P[0], P[5], P[8], P[4], P[0]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[5], P[2], P[7], P[10], P[5]}};

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

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }


#declare FaceNormalPoints = array[14]{<-1, 1, 1>*Factor, <-1, -1, -1>*Factor, <1, 1, -1>*Factor, <0, 2, 0>*Factor, <1, 1, 1>*Factor, <-1, -1, 1>*Factor, <-1, 1, -1>*Factor, <1, -1, -1>*Factor, <1, -1, 1>*Factor, <2, 0, 0>*Factor, <0, -2, 0>*Factor, <0, 0, -2>*Factor, <-2, 0, 0>*Factor, <0, 0, 2>*Factor};

#declare Faces = array[14]{array[7]{P[2], P[6], P[13], P[15], P[7], P[3], P[2]}, array[7]{P[4], P[0], P[1], P[5], P[10], P[8], P[4]}, array[7]{P[17], P[12], P[14], P[19], P[23], P[21], P[17]}, array[5]{P[19], P[15], P[7], P[14], P[19]}, array[7]{P[13], P[18], P[22], P[23], P[19], P[15], P[13]}, array[7]{P[9], P[4], P[0], P[2], P[6], P[11], P[9]}, array[7]{P[14], P[7], P[3], P[1], P[5], P[12], P[14]}, array[7]{P[20], P[16], P[8], P[10], P[17], P[21], P[20]}, array[7]{P[9], P[16], P[20], P[22], P[18], P[11], P[9]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[16], P[8], P[4], P[9], P[16]}, array[5]{P[12], P[5], P[10], P[17], P[12]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[13], P[6], P[11], P[18], P[13]}};


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



scale 1.89
}
