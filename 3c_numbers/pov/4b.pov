#include "polyhedra_davinci.inc"

#declare Factor = 3.15;
#declare Abs = array[1]{ (1)*Factor, }
#declare P = array[4]{ <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare UncoloredEdges = array[6]{array[2]{2, 3}, array[2]{1, 3}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 2}, array[2]{0, 2}};

#declare FaceNormalPoints = array[4]{<-1/3, -1/3, -1/3>*Factor, <1/3, -1/3, 1/3>*Factor, <-1/3, 1/3, 1/3>*Factor, <1/3, 1/3, -1/3>*Factor};

#include "numbers_footer.inc"
