#include "polyhedra_davinci.inc"


#declare Factor = 2.25;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }


#declare UncoloredEdges = array[30]{array[2]{7, 9}, array[2]{1, 7}, array[2]{8, 10}, array[2]{1, 3}, array[2]{4, 6}, array[2]{10, 11}, array[2]{3, 9}, array[2]{1, 2}, array[2]{0, 3}, array[2]{0, 1}, array[2]{6, 10}, array[2]{5, 8}, array[2]{5, 7}, array[2]{2, 5}, array[2]{3, 6}, array[2]{8, 11}, array[2]{0, 6}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{3, 7}, array[2]{9, 10}, array[2]{2, 8}, array[2]{0, 4}, array[2]{2, 4}, array[2]{4, 10}, array[2]{6, 9}, array[2]{4, 8}, array[2]{9, 11}, array[2]{1, 5}};


#declare FaceNormalPoints = array[20]{<-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <(-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12)>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12)>*Factor, <(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor};


#include "numbers_footer.inc"
