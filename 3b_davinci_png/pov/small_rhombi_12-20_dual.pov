#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 1.89;
#declare Abs = array[10]{ (0)*Factor, (-sqrt(5)/4 + 5/4)*Factor, (sqrt(5)/22 + 15/22)*Factor, (sqrt(5)/2)*Factor, (sqrt(5)/6 + 5/6)*Factor, (5/11 + 4*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (5/6 + sqrt(5)/2)*Factor, (9*sqrt(5)/22 + 25/22)*Factor, (sqrt(5))*Factor, }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <Abs[0],-Abs[9],Abs[0]>, <Abs[0],-Abs[8],-Abs[2]>, <Abs[0],-Abs[8],Abs[2]>, <Abs[0],-Abs[4],-Abs[7]>, <Abs[0],-Abs[4],Abs[7]>, <Abs[0],Abs[0],-Abs[9]>, <Abs[0],Abs[0],Abs[9]>, <Abs[0],Abs[4],-Abs[7]>, <Abs[0],Abs[4],Abs[7]>, <Abs[0],Abs[8],-Abs[2]>, <Abs[0],Abs[8],Abs[2]>, <Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[120]{array[2]{33, 46}, array[2]{52, 56}, array[2]{28, 43}, array[2]{56, 60}, array[2]{54, 58}, array[2]{9, 21}, array[2]{42, 44}, array[2]{33, 40}, array[2]{55, 60}, array[2]{32, 39}, array[2]{57, 61}, array[2]{38, 47}, array[2]{14, 36}, array[2]{43, 49}, array[2]{3, 5}, array[2]{17, 19}, array[2]{16, 20}, array[2]{35, 40}, array[2]{3, 15}, array[2]{50, 54}, array[2]{41, 45}, array[2]{39, 48}, array[2]{53, 57}, array[2]{21, 26}, array[2]{8, 14}, array[2]{44, 50}, array[2]{10, 22}, array[2]{48, 56}, array[2]{37, 49}, array[2]{29, 44}, array[2]{7, 14}, array[2]{13, 21}, array[2]{31, 33}, array[2]{14, 23}, array[2]{40, 48}, array[2]{55, 57}, array[2]{38, 50}, array[2]{42, 46}, array[2]{0, 3}, array[2]{29, 31}, array[2]{8, 12}, array[2]{56, 58}, array[2]{4, 18}, array[2]{54, 59}, array[2]{11, 23}, array[2]{34, 39}, array[2]{60, 61}, array[2]{37, 47}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{16, 29}, array[2]{26, 37}, array[2]{18, 20}, array[2]{2, 8}, array[2]{12, 24}, array[2]{30, 41}, array[2]{30, 32}, array[2]{12, 18}, array[2]{4, 8}, array[2]{20, 31}, array[2]{5, 13}, array[2]{15, 28}, array[2]{58, 61}, array[2]{18, 33}, array[2]{6, 10}, array[2]{32, 45}, array[2]{31, 42}, array[2]{17, 32}, array[2]{15, 19}, array[2]{45, 57}, array[2]{23, 32}, array[2]{25, 26}, array[2]{47, 53}, array[2]{19, 30}, array[2]{43, 57}, array[2]{49, 53}, array[2]{3, 7}, array[2]{5, 9}, array[2]{28, 30}, array[2]{45, 51}, array[2]{14, 24}, array[2]{2, 7}, array[2]{40, 52}, array[2]{46, 52}, array[2]{24, 33}, array[2]{25, 47}, array[2]{13, 22}, array[2]{36, 48}, array[2]{47, 54}, array[2]{46, 58}, array[2]{6, 13}, array[2]{4, 6}, array[2]{11, 17}, array[2]{23, 34}, array[2]{27, 38}, array[2]{39, 51}, array[2]{0, 1}, array[2]{44, 58}, array[2]{48, 55}, array[2]{24, 35}, array[2]{21, 28}, array[2]{34, 36}, array[2]{3, 17}, array[2]{4, 16}, array[2]{25, 27}, array[2]{53, 59}, array[2]{22, 29}, array[2]{10, 16}, array[2]{28, 37}, array[2]{13, 25}, array[2]{0, 4}, array[2]{41, 43}, array[2]{22, 27}, array[2]{9, 15}, array[2]{29, 38}, array[2]{59, 61}, array[2]{51, 55}, array[2]{1, 5}, array[2]{35, 36}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.23;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[60]{<5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33, 5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(-sqrt(5) + 7)/33, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/66, 5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66>*Factor, <5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/66, -5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/33>*Factor, <0, 5*(-5 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, -55/82 - 21*sqrt(5)/82>*Factor, <5*(75/41 + 173*sqrt(5)/205)*(-sqrt(5) + 7)/44, 5*(-19 + 9*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(-19 + 9*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44>*Factor, <5*(-1 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/12, 21*sqrt(5)/82 + 55/82, 5*(-1 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/6>*Factor, <5*(-7 + sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44, 5*(-9*sqrt(5) + 19)*(-173*sqrt(5)/205 - 75/41)/44, 5*(-19 + 9*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(-5 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, 21*sqrt(5)/82 + 55/82, 0>*Factor, <5*(-1 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/12, 21*sqrt(5)/82 + 55/82, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6>*Factor, <5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33>*Factor, <5*(-7 + sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44, 5*(-19 + 9*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44, 5*(-9*sqrt(5) + 19)*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/12, 21*sqrt(5)/82 + 55/82>*Factor, <-5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 5*(-sqrt(5) + 7)*(-108*sqrt(5)/205 - 39/41)/33, 5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 5*(39/41 + 108*sqrt(5)/205)*(-sqrt(5) + 7)/33, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/66>*Factor, <5*(-3 + 2*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/22, 5*(-5*sqrt(5) + 13)*(-173*sqrt(5)/205 - 75/41)/22, 5*(-13 + 5*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(75/41 + 173*sqrt(5)/205)*(-13*sqrt(5) + 25)/44, 5*(75/41 + 173*sqrt(5)/205)*(-2*sqrt(5) + 3)/22, 0>*Factor, <5*(-7 + sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(75/41 + 173*sqrt(5)/205)*(-9*sqrt(5) + 19)/44, 5*(-19 + 9*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44>*Factor, <-5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 0, 5*(-7*sqrt(5) + 5)*(-108*sqrt(5)/205 - 39/41)/66>*Factor, <5*(-3 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/12, 5*(-33/41 - 63*sqrt(5)/205)*(1 + sqrt(5))/12, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 3)/12>*Factor, <5*(-3 + 2*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/33, -5*(-108*sqrt(5)/205 - 39/41)*(sqrt(5) + 4)/33, 5*(-2*sqrt(5) + 3)*(-108*sqrt(5)/205 - 39/41)/33>*Factor, <5*(-sqrt(5) + 3)*(63*sqrt(5)/205 + 33/41)/12, 5*(1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, 5*(-3 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12>*Factor, <0, 5*(-sqrt(5) + 5)*(63*sqrt(5)/205 + 33/41)/12, -55/82 - 21*sqrt(5)/82>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33, 5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33>*Factor, <5*(-sqrt(5) + 7)*(-173*sqrt(5)/205 - 75/41)/44, 5*(-19 + 9*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44, 5*(-19 + 9*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <-55/82 - 21*sqrt(5)/82, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6, 5*(-1 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/12>*Factor, <5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, -5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 5*(-sqrt(5) + 7)*(-108*sqrt(5)/205 - 39/41)/33>*Factor, <5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/33, 5*(-sqrt(5) + 7)*(-108*sqrt(5)/205 - 39/41)/66, 5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/66>*Factor, <5*(-7 + sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(-19 + 9*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(75/41 + 173*sqrt(5)/205)*(-9*sqrt(5) + 19)/44>*Factor, <5*(-sqrt(5) + 3)*(63*sqrt(5)/205 + 33/41)/12, 5*(-sqrt(5) + 3)*(63*sqrt(5)/205 + 33/41)/12, -5*(1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12>*Factor, <5*(-sqrt(5) + 3)*(63*sqrt(5)/205 + 33/41)/12, 5*(-3 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, -5*(1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12>*Factor, <5*(-7*sqrt(5) + 5)*(-108*sqrt(5)/205 - 39/41)/66, 5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 0>*Factor, <-5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(-7 + sqrt(5))*(39/41 + 108*sqrt(5)/205)/66>*Factor, <5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, 5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33>*Factor, <5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, -5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33, 5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(-3 + 2*sqrt(5))*(39/41 + 108*sqrt(5)/205)/33, -5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33>*Factor, <5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/12, 21*sqrt(5)/82 + 55/82, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6>*Factor, <5*(-5*sqrt(5) + 13)*(-173*sqrt(5)/205 - 75/41)/22, 5*(-13 + 5*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44, 5*(-2*sqrt(5) + 3)*(-173*sqrt(5)/205 - 75/41)/22>*Factor, <5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 3)/12, 5*(-33/41 - 63*sqrt(5)/205)*(1 + sqrt(5))/12, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 3)/12>*Factor, <5*(75/41 + 173*sqrt(5)/205)*(-9*sqrt(5) + 19)/44, 5*(-7 + sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(-19 + 9*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44>*Factor, <5*(-3 + 2*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/22, 0, 5*(-25 + 13*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(-13 + 5*sqrt(5))*(75/41 + 173*sqrt(5)/205)/22, 5*(75/41 + 173*sqrt(5)/205)*(-5*sqrt(5) + 13)/44, 5*(75/41 + 173*sqrt(5)/205)*(-2*sqrt(5) + 3)/22>*Factor, <5*(-sqrt(5) + 7)*(-173*sqrt(5)/205 - 75/41)/44, 5*(-9*sqrt(5) + 19)*(-173*sqrt(5)/205 - 75/41)/44, 5*(-9*sqrt(5) + 19)*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, -5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(-sqrt(5) + 7)/66, -5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 5*(39/41 + 108*sqrt(5)/205)*(-sqrt(5) + 7)/33>*Factor, <0, 5*(-5 + 7*sqrt(5))*(39/41 + 108*sqrt(5)/205)/66, 5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66>*Factor, <-55/82 - 21*sqrt(5)/82, 5*(-1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/6, 5*(-1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12>*Factor, <5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 5*(-sqrt(5) + 7)*(-108*sqrt(5)/205 - 39/41)/33>*Factor, <5*(-5 + 7*sqrt(5))*(39/41 + 108*sqrt(5)/205)/66, 5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 0>*Factor, <5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/33, 5*(-7 + sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, 5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(1 + 3*sqrt(5))/66, 0, 5*(39/41 + 108*sqrt(5)/205)*(-7*sqrt(5) + 5)/66>*Factor, <5*(-13 + 5*sqrt(5))*(75/41 + 173*sqrt(5)/205)/22, 5*(-13 + 5*sqrt(5))*(75/41 + 173*sqrt(5)/205)/44, 5*(-3 + 2*sqrt(5))*(75/41 + 173*sqrt(5)/205)/22>*Factor, <5*(-1 + sqrt(5))*(-33/41 - 63*sqrt(5)/205)/12, -55/82 - 21*sqrt(5)/82, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6>*Factor, <5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(39/41 + 108*sqrt(5)/205)*(-2*sqrt(5) + 3)/33, 5*(39/41 + 108*sqrt(5)/205)*(sqrt(5) + 4)/33>*Factor, <0, 5*(-5 + 7*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66, -5*(1 + 3*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/66>*Factor, <5*(-3 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, 5*(1 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12, 5*(-3 + sqrt(5))*(63*sqrt(5)/205 + 33/41)/12>*Factor, <5*(-5*sqrt(5) + 13)*(-173*sqrt(5)/205 - 75/41)/22, 5*(-5*sqrt(5) + 13)*(-173*sqrt(5)/205 - 75/41)/44, 5*(-3 + 2*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/22>*Factor, <5*(-3 + 2*sqrt(5))*(-173*sqrt(5)/205 - 75/41)/22, 0, 5*(-13*sqrt(5) + 25)*(-173*sqrt(5)/205 - 75/41)/44>*Factor, <5*(-3 + 2*sqrt(5))*(-108*sqrt(5)/205 - 39/41)/33, 5*(-2*sqrt(5) + 3)*(-108*sqrt(5)/205 - 39/41)/33, -5*(-108*sqrt(5)/205 - 39/41)*(sqrt(5) + 4)/33>*Factor, <21*sqrt(5)/82 + 55/82, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/6, 5*(-33/41 - 63*sqrt(5)/205)*(-sqrt(5) + 1)/12>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[60]{array[5]{P[35], P[40], P[48], P[36], P[35]}, array[5]{P[54], P[58], P[44], P[50], P[54]}, array[5]{P[9], P[21], P[28], P[15], P[9]}, array[5]{P[26], P[21], P[28], P[37], P[26]}, array[5]{P[58], P[56], P[60], P[61], P[58]}, array[5]{P[11], P[23], P[32], P[17], P[11]}, array[5]{P[61], P[57], P[55], P[60], P[61]}, array[5]{P[2], P[7], P[14], P[8], P[2]}, array[5]{P[18], P[12], P[24], P[33], P[18]}, array[5]{P[42], P[31], P[33], P[46], P[42]}, array[5]{P[54], P[58], P[61], P[59], P[54]}, array[5]{P[56], P[52], P[46], P[58], P[56]}, array[5]{P[47], P[54], P[50], P[38], P[47]}, array[5]{P[48], P[55], P[51], P[39], P[48]}, array[5]{P[10], P[22], P[13], P[6], P[10]}, array[5]{P[5], P[13], P[6], P[1], P[5]}, array[5]{P[0], P[4], P[6], P[1], P[0]}, array[5]{P[44], P[42], P[46], P[58], P[44]}, array[5]{P[37], P[26], P[25], P[47], P[37]}, array[5]{P[24], P[35], P[36], P[14], P[24]}, array[5]{P[48], P[39], P[34], P[36], P[48]}, array[5]{P[34], P[23], P[32], P[39], P[34]}, array[5]{P[53], P[57], P[61], P[59], P[53]}, array[5]{P[3], P[0], P[1], P[5], P[3]}, array[5]{P[7], P[11], P[23], P[14], P[7]}, array[5]{P[51], P[39], P[32], P[45], P[51]}, array[5]{P[49], P[53], P[57], P[43], P[49]}, array[5]{P[47], P[37], P[49], P[53], P[47]}, array[5]{P[7], P[3], P[0], P[2], P[7]}, array[5]{P[41], P[30], P[32], P[45], P[41]}, array[5]{P[43], P[28], P[30], P[41], P[43]}, array[5]{P[54], P[59], P[53], P[47], P[54]}, array[5]{P[9], P[5], P[13], P[21], P[9]}, array[5]{P[29], P[44], P[42], P[31], P[29]}, array[5]{P[38], P[27], P[25], P[47], P[38]}, array[5]{P[17], P[19], P[30], P[32], P[17]}, array[5]{P[33], P[46], P[52], P[40], P[33]}, array[5]{P[4], P[8], P[12], P[18], P[4]}, array[5]{P[13], P[25], P[26], P[21], P[13]}, array[5]{P[22], P[13], P[25], P[27], P[22]}, array[5]{P[3], P[15], P[19], P[17], P[3]}, array[5]{P[17], P[3], P[7], P[11], P[17]}, array[5]{P[8], P[4], P[0], P[2], P[8]}, array[5]{P[19], P[15], P[28], P[30], P[19]}, array[5]{P[29], P[38], P[50], P[44], P[29]}, array[5]{P[35], P[40], P[33], P[24], P[35]}, array[5]{P[14], P[8], P[12], P[24], P[14]}, array[5]{P[37], P[28], P[43], P[49], P[37]}, array[5]{P[48], P[55], P[60], P[56], P[48]}, array[5]{P[57], P[45], P[51], P[55], P[57]}, array[5]{P[41], P[43], P[57], P[45], P[41]}, array[5]{P[4], P[16], P[10], P[6], P[4]}, array[5]{P[16], P[10], P[22], P[29], P[16]}, array[5]{P[31], P[20], P[16], P[29], P[31]}, array[5]{P[22], P[29], P[38], P[27], P[22]}, array[5]{P[23], P[34], P[36], P[14], P[23]}, array[5]{P[3], P[15], P[9], P[5], P[3]}, array[5]{P[16], P[4], P[18], P[20], P[16]}, array[5]{P[18], P[20], P[31], P[33], P[18]}, array[5]{P[40], P[48], P[56], P[52], P[40]}};
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




