#include "polyhedra_davinci.inc"


#declare Factor = 3.1;
#declare Abs = array[2]{ (-1 + sqrt(2))*Factor, (1)*Factor, }

#declare P = array[24]{ <-Abs[1],-Abs[1],-Abs[0]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],-Abs[0],-Abs[1]>, <-Abs[1],-Abs[0],Abs[1]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],-Abs[0]>, <-Abs[1],Abs[1],Abs[0]>, <-Abs[0],-Abs[1],-Abs[1]>, <-Abs[0],-Abs[1],Abs[1]>, <-Abs[0],Abs[1],-Abs[1]>, <-Abs[0],Abs[1],Abs[1]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],-Abs[0]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[1]>, <Abs[1],-Abs[0],Abs[1]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],-Abs[0]>, <Abs[1],Abs[1],Abs[0]>, }


#declare UncoloredEdges = array[36]{array[2]{0, 8}, array[2]{6, 10}, array[2]{15, 21}, array[2]{21, 23}, array[2]{5, 7}, array[2]{10, 14}, array[2]{17, 19}, array[2]{3, 5}, array[2]{16, 18}, array[2]{12, 16}, array[2]{2, 4}, array[2]{14, 22}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{0, 1}, array[2]{8, 12}, array[2]{6, 7}, array[2]{19, 21}, array[2]{13, 19}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{18, 20}, array[2]{20, 22}, array[2]{2, 8}, array[2]{16, 17}, array[2]{15, 23}, array[2]{1, 9}, array[2]{14, 20}, array[2]{13, 17}, array[2]{4, 10}, array[2]{11, 15}, array[2]{12, 18}, array[2]{9, 13}, array[2]{22, 23}};


#declare FaceNormalPoints = array[14]{<2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6)>*Factor, <pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <(7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6), (7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2)>*Factor, <2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), 2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6)>*Factor, <2*(-3 + 2*sqrt(2))*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6), pow(-sqrt(2) + 2, 2)*(-5*sqrt(2)/6 - 7/6)>*Factor, <(7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), (7/6 + 5*sqrt(2)/6)*pow(-sqrt(2) + 2, 2), 2*(-3 + 2*sqrt(2))*(7/6 + 5*sqrt(2)/6)>*Factor, <0, 2*(-3*sqrt(2) + 4)*(-3*sqrt(2)/4 - 1), 0>*Factor, <0, 4*(1/4 + sqrt(2)/4)*(-sqrt(2) + 1), 0>*Factor, <2*(-sqrt(2) + 2)*(sqrt(2)/4 + 1/2), 0, 0>*Factor, <0, 0, 2*(-sqrt(2) + 2)*(sqrt(2)/4 + 1/2)>*Factor, <0, 0, 2*(1 + 3*sqrt(2)/4)*(-3*sqrt(2) + 4)>*Factor, <2*(-4 + 3*sqrt(2))*(-3*sqrt(2)/4 - 1), 0, 0>*Factor};


#include "numbers_footer.inc"
