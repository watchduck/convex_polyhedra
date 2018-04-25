#include "polyhedra_davinci.inc"


#declare Factor = 3;
#declare Abs = array[2]{ (9*sqrt(2)/20)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[8]{ <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, }


#declare UncoloredEdges = array[18]{array[2]{1, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{0, 1}, array[2]{1, 2}, array[2]{0, 3}, array[2]{5, 7}, array[2]{6, 7}, array[2]{0, 7}, array[2]{0, 6}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{5, 6}, array[2]{2, 6}, array[2]{0, 4}, array[2]{4, 7}, array[2]{1, 5}};


#declare FaceNormalPoints = array[12]{<-9*sqrt(2)/44, -27*sqrt(2)/44, -9*sqrt(2)/44>*Factor, <-27*sqrt(2)/44, -9*sqrt(2)/44, -9*sqrt(2)/44>*Factor, <-9*sqrt(2)/44, -9*sqrt(2)/44, -27*sqrt(2)/44>*Factor, <9*sqrt(2)/44, -27*sqrt(2)/44, 9*sqrt(2)/44>*Factor, <9*sqrt(2)/44, -9*sqrt(2)/44, 27*sqrt(2)/44>*Factor, <27*sqrt(2)/44, -9*sqrt(2)/44, 9*sqrt(2)/44>*Factor, <-27*sqrt(2)/44, 9*sqrt(2)/44, 9*sqrt(2)/44>*Factor, <-9*sqrt(2)/44, 9*sqrt(2)/44, 27*sqrt(2)/44>*Factor, <-9*sqrt(2)/44, 27*sqrt(2)/44, 9*sqrt(2)/44>*Factor, <9*sqrt(2)/44, 9*sqrt(2)/44, -27*sqrt(2)/44>*Factor, <27*sqrt(2)/44, 9*sqrt(2)/44, -9*sqrt(2)/44>*Factor, <9*sqrt(2)/44, 27*sqrt(2)/44, -9*sqrt(2)/44>*Factor};


#include "numbers_footer.inc"
