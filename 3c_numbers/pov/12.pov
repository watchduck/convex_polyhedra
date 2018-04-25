#include "polyhedra_davinci.inc"


#declare Factor = 2.48;
#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[30]{array[2]{4, 6}, array[2]{11, 17}, array[2]{3, 9}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 5}, array[2]{5, 7}, array[2]{7, 13}, array[2]{6, 12}, array[2]{12, 14}, array[2]{16, 19}, array[2]{13, 15}, array[2]{5, 11}, array[2]{0, 2}, array[2]{10, 16}, array[2]{3, 7}, array[2]{14, 18}, array[2]{17, 19}, array[2]{2, 8}, array[2]{18, 19}, array[2]{2, 6}, array[2]{13, 17}, array[2]{12, 16}, array[2]{1, 4}, array[2]{9, 15}, array[2]{4, 10}, array[2]{8, 14}, array[2]{10, 11}, array[2]{15, 18}, array[2]{8, 9}};


#declare FaceNormalPoints = array[12]{<(-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4), -3*sqrt(5)/10 - 1/2, 0>*Factor, <1/2 + 3*sqrt(5)/10, 0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20)>*Factor, <0, (-3 + sqrt(5))*(sqrt(5)/5 + 1/2), (-sqrt(5) + 1)*(sqrt(5)/5 + 1/2)>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1), 0>*Factor, <0, (-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1)>*Factor, <1/2 + 3*sqrt(5)/10, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-3 + sqrt(5))*(sqrt(5)/5 + 1/2), (-sqrt(5) + 1)*(sqrt(5)/5 + 1/2), 0>*Factor, <0, (-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1)>*Factor, <0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), -3*sqrt(5)/10 - 1/2>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4)>*Factor, <(-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1/2 - sqrt(5)/5)*(-sqrt(5) + 1), 0>*Factor};


#include "numbers_footer.inc"
