#include "small_in_great_rhombi.inc"
#include "RotMatFromVectorAndAngle.inc"


#declare Factor = 1;

#declare EdgeOffset = 0.23;
#declare FaceOffset = EdgeOffset;
#declare PrismThickness = FaceOffset*2 + .1;


union{



//////////////////////////////////////////////////////////////////// small

#declare Abs = array[7]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, pow(1/2 + sqrt(5)/2, 2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, pow(1/2 + sqrt(5)/2, 3)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],-Abs[1]>, <-Abs[6],-Abs[1],Abs[1]>, <-Abs[6],Abs[1],-Abs[1]>, <-Abs[6],Abs[1],Abs[1]>, <-Abs[5],-Abs[3],Abs[0]>, <-Abs[5],Abs[3],Abs[0]>, <-Abs[4],-Abs[2],-Abs[3]>, <-Abs[4],-Abs[2],Abs[3]>, <-Abs[4],Abs[2],-Abs[3]>, <-Abs[4],Abs[2],Abs[3]>, <-Abs[3],-Abs[4],-Abs[2]>, <-Abs[3],-Abs[4],Abs[2]>, <-Abs[3],Abs[0],-Abs[5]>, <-Abs[3],Abs[0],Abs[5]>, <-Abs[3],Abs[4],-Abs[2]>, <-Abs[3],Abs[4],Abs[2]>, <-Abs[2],-Abs[3],-Abs[4]>, <-Abs[2],-Abs[3],Abs[4]>, <-Abs[2],Abs[3],-Abs[4]>, <-Abs[2],Abs[3],Abs[4]>, <-Abs[1],-Abs[6],-Abs[1]>, <-Abs[1],-Abs[6],Abs[1]>, <-Abs[1],-Abs[1],-Abs[6]>, <-Abs[1],-Abs[1],Abs[6]>, <-Abs[1],Abs[1],-Abs[6]>, <-Abs[1],Abs[1],Abs[6]>, <-Abs[1],Abs[6],-Abs[1]>, <-Abs[1],Abs[6],Abs[1]>, <Abs[0],-Abs[5],-Abs[3]>, <Abs[0],-Abs[5],Abs[3]>, <Abs[0],Abs[5],-Abs[3]>, <Abs[0],Abs[5],Abs[3]>, <Abs[1],-Abs[6],-Abs[1]>, <Abs[1],-Abs[6],Abs[1]>, <Abs[1],-Abs[1],-Abs[6]>, <Abs[1],-Abs[1],Abs[6]>, <Abs[1],Abs[1],-Abs[6]>, <Abs[1],Abs[1],Abs[6]>, <Abs[1],Abs[6],-Abs[1]>, <Abs[1],Abs[6],Abs[1]>, <Abs[2],-Abs[3],-Abs[4]>, <Abs[2],-Abs[3],Abs[4]>, <Abs[2],Abs[3],-Abs[4]>, <Abs[2],Abs[3],Abs[4]>, <Abs[3],-Abs[4],-Abs[2]>, <Abs[3],-Abs[4],Abs[2]>, <Abs[3],Abs[0],-Abs[5]>, <Abs[3],Abs[0],Abs[5]>, <Abs[3],Abs[4],-Abs[2]>, <Abs[3],Abs[4],Abs[2]>, <Abs[4],-Abs[2],-Abs[3]>, <Abs[4],-Abs[2],Abs[3]>, <Abs[4],Abs[2],-Abs[3]>, <Abs[4],Abs[2],Abs[3]>, <Abs[5],-Abs[3],Abs[0]>, <Abs[5],Abs[3],Abs[0]>, <Abs[6],-Abs[1],-Abs[1]>, <Abs[6],-Abs[1],Abs[1]>, <Abs[6],Abs[1],-Abs[1]>, <Abs[6],Abs[1],Abs[1]>, }

#declare FaceNormalPoints = array[62]{<(-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0, -(1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <-(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0, (1/2 + sqrt(5)/3)*(1 + sqrt(5))>*Factor, <(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0>*Factor, <-2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0, -(1/2 + sqrt(5)/3)*(1 + sqrt(5))>*Factor, <1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1>*Factor, <0, -(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-sqrt(5) + 1)*(-sqrt(5)/3 - 1/2)>*Factor, <1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3>*Factor, <-2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3, 1 + 2*sqrt(5)/3>*Factor, <(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3), 0>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0, (1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <-2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1>*Factor, <-(1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2), 0>*Factor, <0, (1/2 + sqrt(5)/3)*(1 + sqrt(5)), (1/2 + sqrt(5)/3)*(-sqrt(5) + 1)>*Factor, <0, -(1/2 + sqrt(5)/3)*(1 + sqrt(5)), (-1 + sqrt(5))*(1/2 + sqrt(5)/3)>*Factor, <1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1>*Factor, <-2*sqrt(5)/3 - 1, -2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3>*Factor, <0, (1 + sqrt(5))*(-sqrt(5)/3 - 1/2), (-1 + sqrt(5))*(-sqrt(5)/3 - 1/2)>*Factor, <1 + 2*sqrt(5)/3, -2*sqrt(5)/3 - 1, 1 + 2*sqrt(5)/3>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <(-1 + sqrt(5))*(1/2 + sqrt(5)/4), -(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1>*Factor, <-sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <0, 2 + sqrt(5), 0>*Factor, <0, -3/2 - 3*sqrt(5)/10, -(1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <2 + sqrt(5), 0, 0>*Factor, <-sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), -(1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <-3*sqrt(5)*(sqrt(5) + 3)/10, 0, 3*sqrt(5)*(1 + sqrt(5))/10>*Factor, <(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), 1 + sqrt(5)/2, (-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2)>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <0, 3*sqrt(5)/10 + 3/2, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <3*sqrt(5)*(1 + sqrt(5))/10, -3*sqrt(5)*(sqrt(5) + 3)/10, 0>*Factor, <-(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor, <3*sqrt(5)/10 + 3/2, -(-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0>*Factor, <(-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), -(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <-3/2 - 3*sqrt(5)/10, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4), 0>*Factor, <-(-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0, 3*sqrt(5)/10 + 3/2>*Factor, <(1 + sqrt(5))*(3*sqrt(5)/20 + 3/4), 0, -3/2 - 3*sqrt(5)/10>*Factor, <0, 0, -sqrt(5) - 2>*Factor, <0, 3*sqrt(5)/10 + 3/2, (-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5))>*Factor, <(-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2), 1 + sqrt(5)/2>*Factor, <0, -sqrt(5) - 2, 0>*Factor, <(1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <0, -3/2 - 3*sqrt(5)/10, (1 + sqrt(5))*(3*sqrt(5)/20 + 3/4)>*Factor, <(1/2 + sqrt(5)/4)*(-sqrt(5) + 1), -(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2>*Factor, <-sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), -sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4)>*Factor, <(-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -(1 + sqrt(5))*(-sqrt(5)/4 - 1/2), -sqrt(5)/2 - 1>*Factor, <-(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <-sqrt(5) - 2, 0, 0>*Factor, <-3/2 - 3*sqrt(5)/10, (-3/4 - 3*sqrt(5)/20)*(1 + sqrt(5)), 0>*Factor, <1 + sqrt(5)/2, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), (1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <1 + sqrt(5)/2, (-1 + sqrt(5))*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor, <-3*sqrt(5)*(sqrt(5) + 3)/10, 0, -3*sqrt(5)*(1 + sqrt(5))/10>*Factor, <(1/2 + sqrt(5)/4)*(1 + sqrt(5)), 1 + sqrt(5)/2, (1/2 + sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <0, 0, 2 + sqrt(5)>*Factor, <-sqrt(5)/2 - 1, (-1 + sqrt(5))*(1/2 + sqrt(5)/4), -(1/2 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <1 + sqrt(5)/2, (-sqrt(5) + 1)*(-sqrt(5)/4 - 1/2), (1 + sqrt(5))*(-sqrt(5)/4 - 1/2)>*Factor};

#declare Faces = array[62]{array[4]{P[13], P[25], P[23], P[13]}, array[4]{P[5], P[3], P[2], P[5]}, array[4]{P[37], P[35], P[47], P[37]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[34], P[36], P[46], P[34]}, array[4]{P[48], P[52], P[42], P[48]}, array[4]{P[31], P[39], P[27], P[31]}, array[4]{P[49], P[53], P[43], P[49]}, array[4]{P[15], P[19], P[9], P[15]}, array[4]{P[59], P[58], P[55], P[59]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[14], P[18], P[8], P[14]}, array[4]{P[54], P[57], P[56], P[54]}, array[4]{P[38], P[30], P[26], P[38]}, array[4]{P[29], P[21], P[33], P[29]}, array[4]{P[44], P[50], P[40], P[44]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[32], P[28], P[20], P[32]}, array[4]{P[41], P[45], P[51], P[41]}, array[5]{P[31], P[43], P[49], P[39], P[31]}, array[5]{P[32], P[28], P[40], P[44], P[32]}, array[5]{P[13], P[23], P[17], P[7], P[13]}, array[5]{P[26], P[38], P[39], P[27], P[26]}, array[6]{P[34], P[22], P[16], P[28], P[40], P[34]}, array[5]{P[53], P[49], P[55], P[59], P[53]}, array[5]{P[57], P[56], P[58], P[59], P[57]}, array[5]{P[16], P[6], P[12], P[22], P[16]}, array[6]{P[9], P[3], P[1], P[7], P[13], P[9]}, array[5]{P[5], P[15], P[9], P[3], P[5]}, array[5]{P[45], P[54], P[57], P[51], P[45]}, array[5]{P[20], P[10], P[16], P[28], P[20]}, array[6]{P[37], P[25], P[19], P[31], P[43], P[37]}, array[6]{P[32], P[33], P[45], P[54], P[44], P[32]}, array[5]{P[54], P[44], P[50], P[56], P[54]}, array[6]{P[38], P[48], P[55], P[49], P[39], P[38]}, array[5]{P[30], P[38], P[48], P[42], P[30]}, array[6]{P[27], P[15], P[5], P[14], P[26], P[27]}, array[6]{P[47], P[51], P[57], P[59], P[53], P[47]}, array[6]{P[50], P[46], P[52], P[58], P[56], P[50]}, array[5]{P[22], P[34], P[36], P[24], P[22]}, array[6]{P[30], P[18], P[24], P[36], P[42], P[30]}, array[5]{P[33], P[29], P[41], P[45], P[33]}, array[5]{P[20], P[32], P[33], P[21], P[20]}, array[5]{P[27], P[15], P[19], P[31], P[27]}, array[5]{P[4], P[10], P[6], P[0], P[4]}, array[5]{P[35], P[47], P[51], P[41], P[35]}, array[6]{P[35], P[23], P[17], P[29], P[41], P[35]}, array[5]{P[21], P[11], P[17], P[29], P[21]}, array[5]{P[9], P[19], P[25], P[13], P[9]}, array[5]{P[4], P[1], P[7], P[11], P[4]}, array[5]{P[14], P[26], P[30], P[18], P[14]}, array[5]{P[8], P[14], P[5], P[2], P[8]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[6]{P[10], P[20], P[21], P[11], P[4], P[10]}, array[5]{P[43], P[53], P[47], P[37], P[43]}, array[5]{P[34], P[40], P[50], P[46], P[34]}, array[6]{P[2], P[0], P[6], P[12], P[8], P[2]}, array[5]{P[48], P[55], P[58], P[52], P[48]}, array[5]{P[35], P[23], P[25], P[37], P[35]}, array[5]{P[18], P[8], P[12], P[24], P[18]}, array[5]{P[42], P[36], P[46], P[52], P[42]}};

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

#declare Abs = array[2]{ (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, }

#declare Faces = array[6]{array[5]{P[5], P[4], P[6], P[7], P[5]}, array[5]{P[2], P[0], P[4], P[6], P[2]}, array[5]{P[0], P[4], P[5], P[1], P[0]}, array[5]{P[1], P[5], P[7], P[3], P[1]}, array[5]{P[2], P[6], P[7], P[3], P[2]}, array[5]{P[1], P[3], P[2], P[0], P[1]}};

#declare FaceNormalPoints = array[6]{<-2*(1 + sqrt(5))*(-sqrt(5)/8 + 1/8), 0, 0>*Factor, <0, 0, -sqrt(5)/2 - 1/2>*Factor, <0, -2*(-1/8 + sqrt(5)/8)*(1 + sqrt(5)), 0>*Factor, <0, 0, 1/2 + sqrt(5)/2>*Factor, <0, -2*(1 + sqrt(5))*(-sqrt(5)/8 + 1/8), 0>*Factor, <2*(1 + sqrt(5))*(-sqrt(5)/8 + 1/8), 0, 0>*Factor};

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

#declare Cuboid = object{
    Davinci
    translate -5.854102*z
}

#declare CuboidsZ = union{
    object{ Cuboid }
    object{ Cuboid rotate 180*y }
}
#declare CuboidsX = object{ CuboidsZ rotate 90*y }
#declare CuboidsY = object{ CuboidsZ rotate 90*x }

#declare Cuboids6 = union{ object{CuboidsX} object{CuboidsY} object{CuboidsZ} } 

object{ Cuboids6 }

#declare RotPoint = <0, 1, -(1/2 + sqrt(5)/2)>;
#declare RotFifth = 2*pi/5;
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*2) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*3) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*4) }



scale .56
}

