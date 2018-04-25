#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = 1.26;
#declare Abs = array[6]{ (0)*Factor, (5*sqrt(5)/44 + 35/44)*Factor, (15/22 + 5*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (25*sqrt(5)/44 + 65/44)*Factor, (5/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],Abs[0],-Abs[3]>, <-Abs[5],Abs[0],Abs[3]>, <-Abs[4],-Abs[1],Abs[0]>, <-Abs[4],Abs[1],Abs[0]>, <-Abs[3],-Abs[5],Abs[0]>, <-Abs[3],Abs[5],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[4]>, <-Abs[1],Abs[0],Abs[4]>, <Abs[0],-Abs[4],-Abs[1]>, <Abs[0],-Abs[4],Abs[1]>, <Abs[0],-Abs[3],-Abs[5]>, <Abs[0],-Abs[3],Abs[5]>, <Abs[0],Abs[3],-Abs[5]>, <Abs[0],Abs[3],Abs[5]>, <Abs[0],Abs[4],-Abs[1]>, <Abs[0],Abs[4],Abs[1]>, <Abs[1],Abs[0],-Abs[4]>, <Abs[1],Abs[0],Abs[4]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[5],Abs[0]>, <Abs[3],Abs[5],Abs[0]>, <Abs[4],-Abs[1],Abs[0]>, <Abs[4],Abs[1],Abs[0]>, <Abs[5],Abs[0],-Abs[3]>, <Abs[5],Abs[0],Abs[3]>, }


#declare UncoloredEdges = array[90]{array[2]{16, 27}, array[2]{19, 27}, array[2]{0, 5}, array[2]{28, 31}, array[2]{22, 30}, array[2]{0, 16}, array[2]{24, 30}, array[2]{20, 30}, array[2]{27, 29}, array[2]{17, 19}, array[2]{3, 5}, array[2]{5, 27}, array[2]{27, 31}, array[2]{16, 20}, array[2]{16, 18}, array[2]{12, 26}, array[2]{15, 26}, array[2]{5, 19}, array[2]{2, 4}, array[2]{24, 27}, array[2]{1, 3}, array[2]{5, 16}, array[2]{17, 25}, array[2]{0, 3}, array[2]{29, 31}, array[2]{18, 27}, array[2]{14, 30}, array[2]{5, 8}, array[2]{4, 12}, array[2]{13, 15}, array[2]{0, 2}, array[2]{8, 16}, array[2]{26, 31}, array[2]{1, 9}, array[2]{15, 17}, array[2]{16, 30}, array[2]{0, 14}, array[2]{22, 26}, array[2]{21, 31}, array[2]{25, 31}, array[2]{26, 28}, array[2]{1, 17}, array[2]{0, 8}, array[2]{1, 2}, array[2]{15, 21}, array[2]{10, 14}, array[2]{4, 26}, array[2]{0, 6}, array[2]{15, 31}, array[2]{4, 15}, array[2]{5, 9}, array[2]{30, 31}, array[2]{16, 24}, array[2]{28, 30}, array[2]{23, 31}, array[2]{9, 17}, array[2]{0, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{4, 14}, array[2]{5, 17}, array[2]{14, 22}, array[2]{1, 11}, array[2]{17, 27}, array[2]{26, 30}, array[2]{29, 30}, array[2]{4, 6}, array[2]{1, 7}, array[2]{11, 17}, array[2]{0, 1}, array[2]{14, 26}, array[2]{23, 26}, array[2]{17, 31}, array[2]{25, 27}, array[2]{12, 14}, array[2]{10, 16}, array[2]{5, 18}, array[2]{6, 14}, array[2]{15, 23}, array[2]{14, 20}, array[2]{7, 15}, array[2]{0, 4}, array[2]{1, 4}, array[2]{1, 15}, array[2]{13, 26}, array[2]{17, 21}, array[2]{11, 15}, array[2]{1, 5}, array[2]{4, 13}, array[2]{27, 30}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.25;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[60]{<-5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, 5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, -5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44>*Factor, <5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, 0>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, 5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, -5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, -5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, -5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <0, 5*(31/122 + 27*sqrt(5)/122)*(3*sqrt(5) + 10)/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44>*Factor, <5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11>*Factor, <5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, 0, -5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11>*Factor, <5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, -5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, 5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44>*Factor, <0, -5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44>*Factor, <5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, -5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44>*Factor, <5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, -5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, -5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, 5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, 5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22>*Factor, <0, 5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44>*Factor, <0, 5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, -5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, 5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22>*Factor, <-5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, 0>*Factor, <5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-3*sqrt(5) + 1)*(-27*sqrt(5)/122 - 31/122)/44, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, 0, -5*(31/122 + 27*sqrt(5)/122)*(3*sqrt(5) + 10)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11>*Factor, <-5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11>*Factor, <5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, 0, -5*(31/122 + 27*sqrt(5)/122)*(3*sqrt(5) + 10)/22>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3*sqrt(5) + 10)/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44, 0>*Factor, <5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11, 5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44>*Factor, <-5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44>*Factor, <5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, -5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22>*Factor, <5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, 5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, -5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44, 5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(sqrt(5) + 7)/22, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(5*sqrt(5) + 13)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(5*sqrt(5) + 13)/44, 5*(-27*sqrt(5)/122 - 31/122)*(sqrt(5) + 7)/22, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22>*Factor, <5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, 0, 5*(31/122 + 27*sqrt(5)/122)*(3*sqrt(5) + 10)/22>*Factor, <-5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, -5*(3 + 2*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/11>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44, 5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(31/122 + 27*sqrt(5)/122)*(-3*sqrt(5) + 1)/44>*Factor, <-5*(-27*sqrt(5)/122 - 31/122)*(3*sqrt(5) + 10)/22, 5*(-1 + 3*sqrt(5))*(-27*sqrt(5)/122 - 31/122)/44, 0>*Factor, <5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/11, -5*(31/122 + 27*sqrt(5)/122)*(3 + 2*sqrt(5))/22, 5*(-1 + 3*sqrt(5))*(31/122 + 27*sqrt(5)/122)/44>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[60]{array[4]{P[8], P[5], P[0], P[8]}, array[4]{P[8], P[16], P[0], P[8]}, array[4]{P[8], P[16], P[5], P[8]}, array[4]{P[3], P[5], P[0], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[1], P[5], P[3]}, array[4]{P[17], P[27], P[25], P[17]}, array[4]{P[22], P[26], P[30], P[22]}, array[4]{P[13], P[26], P[15], P[13]}, array[4]{P[29], P[27], P[30], P[29]}, array[4]{P[24], P[16], P[30], P[24]}, array[4]{P[24], P[27], P[30], P[24]}, array[4]{P[24], P[27], P[16], P[24]}, array[4]{P[18], P[16], P[5], P[18]}, array[4]{P[18], P[27], P[5], P[18]}, array[4]{P[18], P[27], P[16], P[18]}, array[4]{P[11], P[1], P[15], P[11]}, array[4]{P[11], P[17], P[15], P[11]}, array[4]{P[11], P[17], P[1], P[11]}, array[4]{P[9], P[1], P[5], P[9]}, array[4]{P[9], P[17], P[5], P[9]}, array[4]{P[9], P[17], P[1], P[9]}, array[4]{P[19], P[27], P[5], P[19]}, array[4]{P[19], P[17], P[5], P[19]}, array[4]{P[19], P[17], P[27], P[19]}, array[4]{P[14], P[6], P[0], P[14]}, array[4]{P[14], P[22], P[30], P[14]}, array[4]{P[14], P[26], P[12], P[14]}, array[4]{P[14], P[22], P[26], P[14]}, array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[4], P[13], P[15], P[4]}, array[4]{P[4], P[14], P[12], P[4]}, array[4]{P[4], P[14], P[6], P[4]}, array[4]{P[4], P[26], P[12], P[4]}, array[4]{P[4], P[13], P[26], P[4]}, array[4]{P[31], P[17], P[25], P[31]}, array[4]{P[31], P[27], P[25], P[31]}, array[4]{P[31], P[29], P[27], P[31]}, array[4]{P[31], P[29], P[30], P[31]}, array[4]{P[10], P[16], P[0], P[10]}, array[4]{P[10], P[14], P[0], P[10]}, array[4]{P[10], P[14], P[16], P[10]}, array[4]{P[20], P[16], P[30], P[20]}, array[4]{P[20], P[14], P[30], P[20]}, array[4]{P[20], P[14], P[16], P[20]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[1], P[2]}, array[4]{P[7], P[1], P[15], P[7]}, array[4]{P[7], P[4], P[15], P[7]}, array[4]{P[7], P[4], P[1], P[7]}, array[4]{P[23], P[26], P[15], P[23]}, array[4]{P[23], P[31], P[15], P[23]}, array[4]{P[23], P[31], P[26], P[23]}, array[4]{P[21], P[17], P[15], P[21]}, array[4]{P[21], P[31], P[15], P[21]}, array[4]{P[21], P[31], P[17], P[21]}, array[4]{P[28], P[26], P[30], P[28]}, array[4]{P[28], P[31], P[30], P[28]}, array[4]{P[28], P[31], P[26], P[28]}};
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




