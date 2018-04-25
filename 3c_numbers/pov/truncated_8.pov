#include "polyhedra_davinci.inc"


#declare Factor = 1.9;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[36]{array[2]{8, 10}, array[2]{21, 23}, array[2]{15, 19}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{19, 23}, array[2]{9, 16}, array[2]{5, 10}, array[2]{2, 3}, array[2]{4, 9}, array[2]{13, 18}, array[2]{5, 12}, array[2]{9, 11}, array[2]{18, 22}, array[2]{6, 13}, array[2]{1, 3}, array[2]{7, 14}, array[2]{0, 1}, array[2]{12, 17}, array[2]{20, 21}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 17}, array[2]{20, 22}, array[2]{8, 16}, array[2]{7, 15}, array[2]{0, 4}, array[2]{14, 19}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{1, 5}, array[2]{22, 23}, array[2]{6, 11}};


#declare FaceNormalPoints = array[14]{<-1, 1, 1>*Factor, <-1, -1, -1>*Factor, <1, 1, -1>*Factor, <0, 2, 0>*Factor, <1, 1, 1>*Factor, <-1, -1, 1>*Factor, <-1, 1, -1>*Factor, <1, -1, -1>*Factor, <1, -1, 1>*Factor, <2, 0, 0>*Factor, <0, -2, 0>*Factor, <0, 0, -2>*Factor, <-2, 0, 0>*Factor, <0, 0, 2>*Factor};


#include "numbers_footer.inc"
