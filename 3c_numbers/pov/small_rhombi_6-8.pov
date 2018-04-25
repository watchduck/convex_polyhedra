#include "polyhedra_davinci.inc"


#declare Factor = 1.6;
#declare Abs = array[2]{ (1)*Factor, (1 + sqrt(2))*Factor, }

#declare P = array[24]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],-Abs[0],Abs[0]>, <-Abs[1],Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[1],Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],-Abs[0]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[48]{array[2]{7, 9}, array[2]{8, 10}, array[2]{3, 11}, array[2]{11, 19}, array[2]{15, 21}, array[2]{21, 23}, array[2]{5, 7}, array[2]{12, 13}, array[2]{0, 6}, array[2]{17, 19}, array[2]{19, 23}, array[2]{4, 5}, array[2]{16, 18}, array[2]{9, 17}, array[2]{2, 3}, array[2]{14, 16}, array[2]{9, 11}, array[2]{18, 22}, array[2]{1, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{13, 21}, array[2]{0, 1}, array[2]{16, 22}, array[2]{12, 20}, array[2]{10, 18}, array[2]{20, 21}, array[2]{4, 12}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{20, 22}, array[2]{17, 23}, array[2]{8, 16}, array[2]{2, 8}, array[2]{6, 14}, array[2]{18, 19}, array[2]{14, 20}, array[2]{15, 17}, array[2]{0, 4}, array[2]{7, 15}, array[2]{2, 10}, array[2]{6, 8}, array[2]{10, 11}, array[2]{1, 5}, array[2]{22, 23}, array[2]{5, 13}};


#declare FaceNormalPoints = array[26]{<-1 - sqrt(2)/3, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <-1 - sqrt(2)/3, sqrt(2)/3 + 1, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, sqrt(2)/3 + 1, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, sqrt(2)/3 + 1, -1 - sqrt(2)/3>*Factor, <-1 - sqrt(2)/3, sqrt(2)/3 + 1, -1 - sqrt(2)/3>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <-1 - sqrt(2)/3, -1 - sqrt(2)/3, sqrt(2)/3 + 1>*Factor, <sqrt(2)/3 + 1, -1 - sqrt(2)/3, -1 - sqrt(2)/3>*Factor, <-2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4), 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, -2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4), 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <0, -2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <-2*sqrt(2)*(1/4 + sqrt(2)/4), -2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor, <0, 0, -sqrt(2) - 1>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), 0, -2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <0, 1 + sqrt(2), 0>*Factor, <0, 2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4)>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), -2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0>*Factor, <2*sqrt(2)*(-sqrt(2)/4 - 1/4), 0, 2*sqrt(2)*(-sqrt(2)/4 - 1/4)>*Factor, <1 + sqrt(2), 0, 0>*Factor, <-sqrt(2) - 1, 0, 0>*Factor, <0, 0, 1 + sqrt(2)>*Factor, <0, -sqrt(2) - 1, 0>*Factor, <2*sqrt(2)*(1/4 + sqrt(2)/4), 2*sqrt(2)*(1/4 + sqrt(2)/4), 0>*Factor};


#include "numbers_footer.inc"
