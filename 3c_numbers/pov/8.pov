#include "polyhedra_davinci.inc"


#declare Factor = 4.3;
#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[12]{array[2]{1, 3}, array[2]{3, 5}, array[2]{0, 3}, array[2]{4, 5}, array[2]{0, 4}, array[2]{0, 1}, array[2]{1, 2}, array[2]{2, 4}, array[2]{2, 5}, array[2]{1, 5}, array[2]{3, 4}, array[2]{0, 2}};


#declare FaceNormalPoints = array[8]{<-1/3, 1/3, 1/3>*Factor, <1/3, 1/3, 1/3>*Factor, <-1/3, 1/3, -1/3>*Factor, <1/3, 1/3, -1/3>*Factor, <1/3, -1/3, 1/3>*Factor, <-1/3, -1/3, 1/3>*Factor, <-1/3, -1/3, -1/3>*Factor, <1/3, -1/3, -1/3>*Factor};


#include "numbers_footer.inc"
