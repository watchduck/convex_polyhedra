#include "polyhedra_davinci.inc"


#declare Factor = 1.32;
#declare Abs = array[2]{ (1)*Factor, (3)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, }


#declare UncoloredEdges = array[18]{array[2]{3, 8}, array[2]{6, 10}, array[2]{0, 3}, array[2]{0, 1}, array[2]{7, 10}, array[2]{6, 7}, array[2]{8, 11}, array[2]{0, 2}, array[2]{5, 9}, array[2]{2, 6}, array[2]{4, 5}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 7}, array[2]{10, 11}, array[2]{9, 11}, array[2]{1, 5}, array[2]{8, 9}};


#declare FaceNormalPoints = array[8]{<-5/3, 5/3, 5/3>*Factor, <5/3, -5/3, 5/3>*Factor, <5/3, 5/3, -5/3>*Factor, <-5/3, -5/3, -5/3>*Factor, <1, -1, -1>*Factor, <-1, 1, -1>*Factor, <1, 1, 1>*Factor, <-1, -1, 1>*Factor};


#include "numbers_footer.inc"
