#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 1.66;
#declare Abs = array[6]{ (0)*Factor, (-3/4 + 3*sqrt(5)/4)*Factor, (9*sqrt(5)/76 + 81/76)*Factor, (1.5)*Factor, (63/76 + 45*sqrt(5)/76)*Factor, (3/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],-Abs[1],Abs[0]>, <-Abs[5],Abs[1],Abs[0]>, <-Abs[4],Abs[0],-Abs[2]>, <-Abs[4],Abs[0],Abs[2]>, <-Abs[3],-Abs[3],-Abs[3]>, <-Abs[3],-Abs[3],Abs[3]>, <-Abs[3],Abs[3],-Abs[3]>, <-Abs[3],Abs[3],Abs[3]>, <-Abs[2],-Abs[4],Abs[0]>, <-Abs[2],Abs[4],Abs[0]>, <-Abs[1],Abs[0],-Abs[5]>, <-Abs[1],Abs[0],Abs[5]>, <Abs[0],-Abs[5],-Abs[1]>, <Abs[0],-Abs[5],Abs[1]>, <Abs[0],-Abs[2],-Abs[4]>, <Abs[0],-Abs[2],Abs[4]>, <Abs[0],Abs[2],-Abs[4]>, <Abs[0],Abs[2],Abs[4]>, <Abs[0],Abs[5],-Abs[1]>, <Abs[0],Abs[5],Abs[1]>, <Abs[1],Abs[0],-Abs[5]>, <Abs[1],Abs[0],Abs[5]>, <Abs[2],-Abs[4],Abs[0]>, <Abs[2],Abs[4],Abs[0]>, <Abs[3],-Abs[3],-Abs[3]>, <Abs[3],-Abs[3],Abs[3]>, <Abs[3],Abs[3],-Abs[3]>, <Abs[3],Abs[3],Abs[3]>, <Abs[4],Abs[0],-Abs[2]>, <Abs[4],Abs[0],Abs[2]>, <Abs[5],-Abs[1],Abs[0]>, <Abs[5],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[90]{array[2]{7, 9}, array[2]{19, 27}, array[2]{0, 5}, array[2]{8, 13}, array[2]{28, 31}, array[2]{22, 30}, array[2]{18, 26}, array[2]{12, 13}, array[2]{24, 30}, array[2]{11, 21}, array[2]{27, 29}, array[2]{16, 20}, array[2]{3, 5}, array[2]{6, 18}, array[2]{27, 31}, array[2]{17, 19}, array[2]{2, 6}, array[2]{16, 18}, array[2]{2, 4}, array[2]{6, 9}, array[2]{6, 16}, array[2]{21, 27}, array[2]{1, 3}, array[2]{0, 3}, array[2]{29, 31}, array[2]{25, 30}, array[2]{5, 8}, array[2]{8, 12}, array[2]{9, 18}, array[2]{22, 24}, array[2]{22, 25}, array[2]{4, 12}, array[2]{5, 11}, array[2]{13, 15}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{26, 31}, array[2]{12, 24}, array[2]{18, 19}, array[2]{18, 23}, array[2]{1, 9}, array[2]{4, 8}, array[2]{26, 28}, array[2]{5, 13}, array[2]{25, 29}, array[2]{3, 11}, array[2]{20, 24}, array[2]{20, 26}, array[2]{0, 8}, array[2]{1, 2}, array[2]{6, 10}, array[2]{15, 21}, array[2]{10, 14}, array[2]{23, 27}, array[2]{24, 28}, array[2]{16, 26}, array[2]{3, 7}, array[2]{30, 31}, array[2]{28, 30}, array[2]{20, 28}, array[2]{19, 23}, array[2]{14, 24}, array[2]{23, 31}, array[2]{7, 17}, array[2]{4, 14}, array[2]{21, 25}, array[2]{13, 22}, array[2]{1, 7}, array[2]{10, 20}, array[2]{29, 30}, array[2]{17, 27}, array[2]{11, 17}, array[2]{0, 1}, array[2]{23, 26}, array[2]{12, 22}, array[2]{5, 15}, array[2]{15, 25}, array[2]{12, 14}, array[2]{10, 16}, array[2]{13, 25}, array[2]{14, 20}, array[2]{9, 19}, array[2]{0, 4}, array[2]{21, 29}, array[2]{2, 10}, array[2]{7, 19}, array[2]{4, 10}, array[2]{17, 21}, array[2]{11, 15}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.25;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[60]{<9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38, 9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38>*Factor, <9*(-sqrt(5) + 10)*(37*sqrt(5)/218 + 123/218)/38, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38>*Factor, <9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 27*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 0>*Factor, <9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 27*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 0>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-sqrt(5) + 10)/38, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38, 9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76>*Factor, <9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38, 9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-sqrt(5) + 10)*(37*sqrt(5)/218 + 123/218)/38>*Factor, <27*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 0, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <-9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38>*Factor, <9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-123/218 - 37*sqrt(5)/218)*(-sqrt(5) + 10)/38, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19>*Factor, <9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, -9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38>*Factor, <0, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 27*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/19, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76, 9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, -9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76, 9*(-123/218 - 37*sqrt(5)/218)*(-sqrt(5) + 10)/38>*Factor, <9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/19, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38, -9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-sqrt(5) + 10)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <27*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 0, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <9*(-sqrt(5) + 10)*(37*sqrt(5)/218 + 123/218)/38, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/19, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <27*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 0, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76>*Factor, <-9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-123/218 - 37*sqrt(5)/218)*(-sqrt(5) + 10)/38>*Factor, <-9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/19>*Factor, <9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76, 9*(-10 + sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/19>*Factor, <0, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76, 27*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/38, -9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76>*Factor, <9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, -9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-sqrt(5) + 10)*(37*sqrt(5)/218 + 123/218)/38, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/19>*Factor, <9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/19>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76>*Factor, <0, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 27*(-1 + 2*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-11 + 3*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76, 27*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 0>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76, 27*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 0>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19, 9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76, 9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38>*Factor, <27*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 0, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76>*Factor, <-9*(-123/218 - 37*sqrt(5)/218)*(7 + 5*sqrt(5))/76, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/38, 9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38>*Factor, <9*(-2*sqrt(5) + 1)*(37*sqrt(5)/218 + 123/218)/38, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76>*Factor, <0, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/76, 27*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38>*Factor, <9*(-1 + 2*sqrt(5))*(37*sqrt(5)/218 + 123/218)/38, 9*(-3*sqrt(5) + 11)*(37*sqrt(5)/218 + 123/218)/38, 9*(7 + 5*sqrt(5))*(37*sqrt(5)/218 + 123/218)/76>*Factor, <9*(-11 + 3*sqrt(5))*(-123/218 - 37*sqrt(5)/218)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19>*Factor, <9*(-123/218 - 37*sqrt(5)/218)*(-3*sqrt(5) + 11)/76, 9*(-10 + sqrt(5))*(-123/218 - 37*sqrt(5)/218)/38, 9*(-123/218 - 37*sqrt(5)/218)*(-2*sqrt(5) + 1)/19>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[60]{array[4]{P[8], P[5], P[0], P[8]}, array[4]{P[8], P[5], P[13], P[8]}, array[4]{P[25], P[22], P[30], P[25]}, array[4]{P[25], P[22], P[13], P[25]}, array[4]{P[23], P[26], P[18], P[23]}, array[4]{P[12], P[8], P[13], P[12]}, array[4]{P[12], P[22], P[13], P[12]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[10], P[14], P[4]}, array[4]{P[4], P[12], P[14], P[4]}, array[4]{P[4], P[12], P[8], P[4]}, array[4]{P[3], P[5], P[11], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[5], P[0], P[3]}, array[4]{P[3], P[7], P[11], P[3]}, array[4]{P[3], P[7], P[1], P[3]}, array[4]{P[24], P[28], P[30], P[24]}, array[4]{P[24], P[22], P[30], P[24]}, array[4]{P[24], P[12], P[14], P[24]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[20], P[10], P[14], P[20]}, array[4]{P[20], P[28], P[26], P[20]}, array[4]{P[20], P[24], P[14], P[20]}, array[4]{P[20], P[24], P[28], P[20]}, array[4]{P[9], P[7], P[1], P[9]}, array[4]{P[9], P[6], P[18], P[9]}, array[4]{P[9], P[6], P[1], P[9]}, array[4]{P[31], P[28], P[26], P[31]}, array[4]{P[31], P[23], P[26], P[31]}, array[4]{P[31], P[28], P[30], P[31]}, array[4]{P[31], P[23], P[27], P[31]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[2], P[6], P[1], P[2]}, array[4]{P[2], P[6], P[10], P[2]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[10], P[2]}, array[4]{P[15], P[5], P[11], P[15]}, array[4]{P[15], P[5], P[13], P[15]}, array[4]{P[15], P[25], P[13], P[15]}, array[4]{P[15], P[21], P[11], P[15]}, array[4]{P[15], P[21], P[25], P[15]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[16], P[6], P[18], P[16]}, array[4]{P[16], P[26], P[18], P[16]}, array[4]{P[16], P[20], P[26], P[16]}, array[4]{P[16], P[20], P[10], P[16]}, array[4]{P[19], P[23], P[27], P[19]}, array[4]{P[19], P[9], P[7], P[19]}, array[4]{P[19], P[23], P[18], P[19]}, array[4]{P[19], P[9], P[18], P[19]}, array[4]{P[29], P[21], P[25], P[29]}, array[4]{P[29], P[21], P[27], P[29]}, array[4]{P[29], P[25], P[30], P[29]}, array[4]{P[29], P[31], P[30], P[29]}, array[4]{P[29], P[31], P[27], P[29]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[17], P[21], P[11], P[17]}, array[4]{P[17], P[21], P[27], P[17]}, array[4]{P[17], P[19], P[27], P[17]}, array[4]{P[17], P[19], P[7], P[17]}};
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




