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


//////////////////////////////////////////////////////////////////// cuboids

#declare Abs = array[3]{ (0)*Factor, (0.5)*Factor, (1)*Factor, }

#declare P = array[8]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }

#declare Faces = array[6]{array[5]{P[0], P[2], P[4], P[1], P[0]}, array[5]{P[0], P[3], P[6], P[2], P[0]}, array[5]{P[1], P[5], P[3], P[0], P[1]}, array[5]{P[1], P[5], P[7], P[4], P[1]}, array[5]{P[7], P[4], P[2], P[6], P[7]}, array[5]{P[5], P[3], P[6], P[7], P[5]}};

#declare FaceNormalPoints = array[6]{<-1/2, 0, -1/2>*Factor, <0, -1/2, 0>*Factor, <-1/2, 0, 1/2>*Factor, <0, 1/2, 0>*Factor, <1/2, 0, -1/2>*Factor, <1/2, 0, 1/2>*Factor};

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

#declare Cuboid = object{ Davinci translate 1.5*y }

#declare CuboidsY = union{
    object{Cuboid}
    object{Cuboid rotate 180*z}
}

#declare CuboidsZ = object{CuboidsY rotate 90*x}

#declare CuboidsX = object{CuboidsY rotate 90*z}

object{CuboidsX}
object{CuboidsY}
object{CuboidsZ}



scale 1.89
}
