#include "polyhedra_davinci.inc"


#declare Factor = 2.7;
#declare Abs = array[3]{ (0)*Factor, (3*sqrt(2)/4)*Factor, (9*sqrt(2)/8)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[36]{array[2]{11, 12}, array[2]{3, 8}, array[2]{3, 11}, array[2]{11, 13}, array[2]{1, 2}, array[2]{7, 10}, array[2]{2, 5}, array[2]{10, 13}, array[2]{12, 13}, array[2]{8, 11}, array[2]{7, 12}, array[2]{10, 12}, array[2]{5, 9}, array[2]{9, 10}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{2, 4}, array[2]{6, 9}, array[2]{9, 11}, array[2]{3, 4}, array[2]{1, 3}, array[2]{0, 3}, array[2]{0, 1}, array[2]{8, 12}, array[2]{3, 6}, array[2]{4, 12}, array[2]{0, 2}, array[2]{1, 6}, array[2]{1, 9}, array[2]{0, 4}, array[2]{2, 10}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 11}};


#declare FaceNormalPoints = array[24]{<0, 9*sqrt(2)/10, 9*sqrt(2)/20>*Factor, <0, 9*sqrt(2)/20, 9*sqrt(2)/10>*Factor, <-9*sqrt(2)/10, 9*sqrt(2)/20, 0>*Factor, <-9*sqrt(2)/20, 9*sqrt(2)/10, 0>*Factor, <9*sqrt(2)/10, 9*sqrt(2)/20, 0>*Factor, <9*sqrt(2)/20, 9*sqrt(2)/10, 0>*Factor, <0, 9*sqrt(2)/10, -9*sqrt(2)/20>*Factor, <0, 9*sqrt(2)/20, -9*sqrt(2)/10>*Factor, <9*sqrt(2)/10, 0, 9*sqrt(2)/20>*Factor, <9*sqrt(2)/20, 0, 9*sqrt(2)/10>*Factor, <-9*sqrt(2)/10, 0, 9*sqrt(2)/20>*Factor, <-9*sqrt(2)/20, 0, 9*sqrt(2)/10>*Factor, <0, -9*sqrt(2)/20, 9*sqrt(2)/10>*Factor, <0, -9*sqrt(2)/10, 9*sqrt(2)/20>*Factor, <-9*sqrt(2)/10, 0, -9*sqrt(2)/20>*Factor, <-9*sqrt(2)/20, 0, -9*sqrt(2)/10>*Factor, <-9*sqrt(2)/10, -9*sqrt(2)/20, 0>*Factor, <-9*sqrt(2)/20, -9*sqrt(2)/10, 0>*Factor, <9*sqrt(2)/10, 0, -9*sqrt(2)/20>*Factor, <9*sqrt(2)/20, 0, -9*sqrt(2)/10>*Factor, <9*sqrt(2)/10, -9*sqrt(2)/20, 0>*Factor, <9*sqrt(2)/20, -9*sqrt(2)/10, 0>*Factor, <0, -9*sqrt(2)/20, -9*sqrt(2)/10>*Factor, <0, -9*sqrt(2)/10, -9*sqrt(2)/20>*Factor};


#include "numbers_footer.inc"
