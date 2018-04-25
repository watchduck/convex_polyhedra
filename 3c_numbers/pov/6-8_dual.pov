#include "polyhedra_davinci.inc"


#declare Factor = 4;
#declare Abs = array[3]{ (0)*Factor, (3*sqrt(2)/8)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[24]{array[2]{3, 8}, array[2]{11, 13}, array[2]{0, 3}, array[2]{0, 1}, array[2]{7, 10}, array[2]{8, 12}, array[2]{2, 5}, array[2]{10, 13}, array[2]{3, 6}, array[2]{12, 13}, array[2]{8, 11}, array[2]{7, 12}, array[2]{0, 2}, array[2]{1, 6}, array[2]{5, 9}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{6, 9}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 11}};


#declare FaceNormalPoints = array[12]{<3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <-3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor, <3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <-3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor, <0, -3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <0, -3*sqrt(2)/8, -3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, -3*sqrt(2)/8>*Factor};


#include "numbers_footer.inc"
