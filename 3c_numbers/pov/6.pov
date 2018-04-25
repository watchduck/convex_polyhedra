#include "polyhedra_davinci.inc"

#declare Factor = 2.8;
#declare Abs = array[1]{ (1)*Factor, }
#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare UncoloredEdges = array[12]{array[2]{3, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{2, 6}, array[2]{0, 1}, array[2]{0, 4}, array[2]{4, 5}, array[2]{5, 7}, array[2]{2, 3}, array[2]{6, 7}, array[2]{1, 5}, array[2]{0, 2}};

#declare FaceNormalPoints = array[6]{<1, 0, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <0, 0, 1>*Factor, <0, 1, 0>*Factor, <-1, 0, 0>*Factor};

#include "numbers_footer.inc"
