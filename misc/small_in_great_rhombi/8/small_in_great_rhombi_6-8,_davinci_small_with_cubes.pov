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


//////////////////////////////////////////////////////////////////// cubes

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare Faces = array[6]{array[5]{P[7], P[5], P[4], P[6], P[7]}, array[5]{P[0], P[2], P[6], P[4], P[0]}, array[5]{P[4], P[0], P[1], P[5], P[4]}, array[5]{P[1], P[5], P[7], P[3], P[1]}, array[5]{P[7], P[3], P[2], P[6], P[7]}, array[5]{P[0], P[2], P[3], P[1], P[0]}};

#declare FaceNormalPoints = array[6]{<1, 0, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <0, 0, 1>*Factor, <0, 1, 0>*Factor, <-1, 0, 0>*Factor};

#declare OuterSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    pigment{ color BlueDark }
}

#declare InnerSolid = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
    pigment{ color BlueLight }
}

#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }

#declare PrismUnion = union{
    #for(Index, 0, dimension_size(Faces, 1)-1)
        SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)
    #end
    pigment{ color BlueLight }
}

#declare Davinci = difference{ object{Hollow} object{PrismUnion} }

#declare Cube = object{ 
    Davinci 
    rotate 45*y
    translate (sqrt(2) + 2) * vnormalize(<1, 0, -1>)
}

#declare Cubes = union{
    object{Cube}
    object{Cube rotate 180*y}
}

#declare CubesY = union{
    object{Cubes}
    object{Cubes rotate 90*y}
}

#declare CubesZ = object{CubesY rotate 90*x}

#declare CubesX = object{CubesY rotate 90*z}

object{CubesX}
object{CubesY}
object{CubesZ}



scale .95
}
