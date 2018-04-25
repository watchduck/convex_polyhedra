#include "polyhedra_davinci.inc"

#declare Factor = 3.2;
#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[24]{array[2]{8, 10}, array[2]{1, 3}, array[2]{0, 5}, array[2]{0, 1}, array[2]{7, 10}, array[2]{5, 8}, array[2]{2, 5}, array[2]{3, 6}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 9}, array[2]{4, 8}, array[2]{6, 9}, array[2]{10, 11}, array[2]{9, 11}, array[2]{8, 9}, array[2]{6, 11}};

#declare FaceNormalPoints = array[14]{<-2/3, 2/3, 2/3>*Factor, <-2/3, -2/3, 2/3>*Factor, <-2/3, -2/3, -2/3>*Factor, <2/3, -2/3, 2/3>*Factor, <2/3, 2/3, 2/3>*Factor, <-2/3, 2/3, -2/3>*Factor, <2/3, -2/3, -2/3>*Factor, <2/3, 2/3, -2/3>*Factor, <1, 0, 0>*Factor, <0, 1, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <-1, 0, 0>*Factor, <0, 0, 1>*Factor};


#include "numbers_footer.inc"
