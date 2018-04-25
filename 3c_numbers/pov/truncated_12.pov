#include "polyhedra_davinci.inc"


#declare Factor = 1.17;
#declare Abs = array[7]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5)/2 + 3/2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],Abs[0]>, <-Abs[6],Abs[1],Abs[0]>, <-Abs[5],-Abs[2],-Abs[1]>, <-Abs[5],-Abs[2],Abs[1]>, <-Abs[5],Abs[2],-Abs[1]>, <-Abs[5],Abs[2],Abs[1]>, <-Abs[4],-Abs[3],-Abs[2]>, <-Abs[4],-Abs[3],Abs[2]>, <-Abs[4],Abs[3],-Abs[2]>, <-Abs[4],Abs[3],Abs[2]>, <-Abs[3],-Abs[2],-Abs[4]>, <-Abs[3],-Abs[2],Abs[4]>, <-Abs[3],Abs[2],-Abs[4]>, <-Abs[3],Abs[2],Abs[4]>, <-Abs[2],-Abs[4],-Abs[3]>, <-Abs[2],-Abs[4],Abs[3]>, <-Abs[2],-Abs[1],-Abs[5]>, <-Abs[2],-Abs[1],Abs[5]>, <-Abs[2],Abs[1],-Abs[5]>, <-Abs[2],Abs[1],Abs[5]>, <-Abs[2],Abs[4],-Abs[3]>, <-Abs[2],Abs[4],Abs[3]>, <-Abs[1],-Abs[5],-Abs[2]>, <-Abs[1],-Abs[5],Abs[2]>, <-Abs[1],Abs[0],-Abs[6]>, <-Abs[1],Abs[0],Abs[6]>, <-Abs[1],Abs[5],-Abs[2]>, <-Abs[1],Abs[5],Abs[2]>, <Abs[0],-Abs[6],-Abs[1]>, <Abs[0],-Abs[6],Abs[1]>, <Abs[0],Abs[6],-Abs[1]>, <Abs[0],Abs[6],Abs[1]>, <Abs[1],-Abs[5],-Abs[2]>, <Abs[1],-Abs[5],Abs[2]>, <Abs[1],Abs[0],-Abs[6]>, <Abs[1],Abs[0],Abs[6]>, <Abs[1],Abs[5],-Abs[2]>, <Abs[1],Abs[5],Abs[2]>, <Abs[2],-Abs[4],-Abs[3]>, <Abs[2],-Abs[4],Abs[3]>, <Abs[2],-Abs[1],-Abs[5]>, <Abs[2],-Abs[1],Abs[5]>, <Abs[2],Abs[1],-Abs[5]>, <Abs[2],Abs[1],Abs[5]>, <Abs[2],Abs[4],-Abs[3]>, <Abs[2],Abs[4],Abs[3]>, <Abs[3],-Abs[2],-Abs[4]>, <Abs[3],-Abs[2],Abs[4]>, <Abs[3],Abs[2],-Abs[4]>, <Abs[3],Abs[2],Abs[4]>, <Abs[4],-Abs[3],-Abs[2]>, <Abs[4],-Abs[3],Abs[2]>, <Abs[4],Abs[3],-Abs[2]>, <Abs[4],Abs[3],Abs[2]>, <Abs[5],-Abs[2],-Abs[1]>, <Abs[5],-Abs[2],Abs[1]>, <Abs[5],Abs[2],-Abs[1]>, <Abs[5],Abs[2],Abs[1]>, <Abs[6],-Abs[1],Abs[0]>, <Abs[6],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[90]{array[2]{52, 56}, array[2]{28, 32}, array[2]{47, 51}, array[2]{54, 58}, array[2]{41, 47}, array[2]{9, 21}, array[2]{45, 53}, array[2]{40, 46}, array[2]{40, 42}, array[2]{17, 19}, array[2]{55, 58}, array[2]{46, 50}, array[2]{27, 31}, array[2]{18, 24}, array[2]{43, 49}, array[2]{2, 6}, array[2]{16, 18}, array[2]{50, 54}, array[2]{2, 3}, array[2]{42, 48}, array[2]{26, 36}, array[2]{25, 35}, array[2]{28, 29}, array[2]{53, 57}, array[2]{21, 27}, array[2]{22, 32}, array[2]{51, 55}, array[2]{17, 25}, array[2]{13, 21}, array[2]{58, 59}, array[2]{0, 3}, array[2]{48, 52}, array[2]{38, 50}, array[2]{8, 12}, array[2]{56, 59}, array[2]{34, 40}, array[2]{23, 33}, array[2]{13, 19}, array[2]{7, 11}, array[2]{0, 2}, array[2]{12, 18}, array[2]{9, 13}, array[2]{4, 8}, array[2]{34, 42}, array[2]{38, 46}, array[2]{54, 55}, array[2]{20, 26}, array[2]{19, 25}, array[2]{6, 10}, array[2]{33, 39}, array[2]{10, 14}, array[2]{37, 45}, array[2]{32, 38}, array[2]{45, 49}, array[2]{5, 9}, array[2]{49, 53}, array[2]{29, 33}, array[2]{30, 31}, array[2]{3, 7}, array[2]{16, 24}, array[2]{39, 47}, array[2]{24, 34}, array[2]{4, 5}, array[2]{56, 57}, array[2]{31, 37}, array[2]{14, 22}, array[2]{36, 44}, array[2]{26, 30}, array[2]{11, 17}, array[2]{30, 36}, array[2]{39, 51}, array[2]{0, 1}, array[2]{23, 29}, array[2]{12, 20}, array[2]{8, 20}, array[2]{44, 48}, array[2]{22, 28}, array[2]{44, 52}, array[2]{10, 16}, array[2]{57, 59}, array[2]{6, 14}, array[2]{15, 23}, array[2]{7, 15}, array[2]{41, 43}, array[2]{35, 41}, array[2]{1, 4}, array[2]{11, 15}, array[2]{35, 43}, array[2]{1, 5}, array[2]{27, 37}};


#declare FaceNormalPoints = array[32]{<2*(-2 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), 0, (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <0, (-sqrt(5) + 1)*(7*sqrt(5)/12 + 17/12), 2*(-2 + sqrt(5))*(7*sqrt(5)/12 + 17/12)>*Factor, <0, (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 1), 2*(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 2)>*Factor, <(-17/12 - 7*sqrt(5)/12)*(-1 + sqrt(5)), 2*(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 2), 0>*Factor, <(-3 + sqrt(5))*(7*sqrt(5)/12 + 17/12), (-sqrt(5) + 3)*(7*sqrt(5)/12 + 17/12), (-3 + sqrt(5))*(7*sqrt(5)/12 + 17/12)>*Factor, <2*(-2 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), 0, (-17/12 - 7*sqrt(5)/12)*(-1 + sqrt(5))>*Factor, <0, (-1 + sqrt(5))*(7*sqrt(5)/12 + 17/12), 2*(-sqrt(5) + 2)*(7*sqrt(5)/12 + 17/12)>*Factor, <(-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), (-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3)>*Factor, <(-3 + sqrt(5))*(7*sqrt(5)/12 + 17/12), (-sqrt(5) + 3)*(7*sqrt(5)/12 + 17/12), (-sqrt(5) + 3)*(7*sqrt(5)/12 + 17/12)>*Factor, <(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 1), 2*(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 2), 0>*Factor, <(-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), (-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), (-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12)>*Factor, <(-17/12 - 7*sqrt(5)/12)*(-1 + sqrt(5)), 2*(-2 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), 0>*Factor, <2*(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 2), 0, (-17/12 - 7*sqrt(5)/12)*(-1 + sqrt(5))>*Factor, <(-1 + sqrt(5))*(7*sqrt(5)/12 + 17/12), 2*(-sqrt(5) + 2)*(7*sqrt(5)/12 + 17/12), 0>*Factor, <(-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3)>*Factor, <(-sqrt(5) + 3)*(7*sqrt(5)/12 + 17/12), (-3 + sqrt(5))*(7*sqrt(5)/12 + 17/12), (-sqrt(5) + 3)*(7*sqrt(5)/12 + 17/12)>*Factor, <(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3)>*Factor, <2*(-2 + sqrt(5))*(7*sqrt(5)/12 + 17/12), 0, (-1 + sqrt(5))*(7*sqrt(5)/12 + 17/12)>*Factor, <(-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3), (-17/12 - 7*sqrt(5)/12)*(-sqrt(5) + 3), (-3 + sqrt(5))*(-17/12 - 7*sqrt(5)/12)>*Factor, <0, (-17/12 - 7*sqrt(5)/12)*(-1 + sqrt(5)), 2*(-2 + sqrt(5))*(-17/12 - 7*sqrt(5)/12)>*Factor, <2*(-3/8 - sqrt(5)/8)*(-sqrt(5) + 1), sqrt(5)/2 + 3/2, 0>*Factor, <0, -sqrt(5)/2 - 1/2, (1/4 + sqrt(5)/4)*(1 + sqrt(5))>*Factor, <0, -sqrt(5)/2 - 1/2, 2*(1 + sqrt(5))*(-sqrt(5)/8 - 1/8)>*Factor, <0, 1/2 + sqrt(5)/2, (1 + sqrt(5))*(-sqrt(5)/4 - 1/4)>*Factor, <-3/2 - sqrt(5)/2, 0, (-3/4 - sqrt(5)/4)*(-sqrt(5) + 1)>*Factor, <0, (-1 + sqrt(5))*(sqrt(5)/4 + 3/4), sqrt(5)/2 + 3/2>*Factor, <(-sqrt(5) + 5)*(-3*sqrt(5)/20 - 1/4), -2*sqrt(5)*(-3*sqrt(5)/20 - 1/4), 0>*Factor, <2*(-1 + sqrt(5))*(sqrt(5)/8 + 3/8), -3/2 - sqrt(5)/2, 0>*Factor, <-2*(2 + sqrt(5))*(-sqrt(5)/4 + 1/4), 0, (-sqrt(5)/4 + 1/4)*(sqrt(5) + 3)>*Factor, <2*(1 + sqrt(5))*(-sqrt(5)/8 - 1/8), 0, -sqrt(5)/2 - 1/2>*Factor, <-sqrt(5)/2 - 1/2, -(1/4 + sqrt(5)/4)*(1 + sqrt(5)), 0>*Factor, <sqrt(5)/2 + 3/2, 0, 2*(-1 + sqrt(5))*(sqrt(5)/8 + 3/8)>*Factor};


#include "numbers_footer.inc"
