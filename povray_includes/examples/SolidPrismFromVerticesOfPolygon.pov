#include "light_and_axes.inc"
#include "SolidPrismFromVerticesOfPolygon.inc"

// The points are taken from the 62 vertices of the deltoidal hexecontahedron:
// https://commons.wikimedia.org/wiki/File:Polyhedron_small_rhombi_12-20_dual,_numbers.png

#declare Factor = 1;
#declare Abs = array[10]{ (0)*Factor, (3*sqrt(5)/44 + 45/44)*Factor, (-sqrt(5)/2 + 5/2)*Factor, (15/22 + 6*sqrt(5)/11)*Factor, (3*sqrt(5)/10 + 3/2)*Factor, (sqrt(5))*Factor, (27*sqrt(5)/44 + 75/44)*Factor, (3/2 + 9*sqrt(5)/10)*Factor, (sqrt(5)/2 + 5/2)*Factor, (15/11 + 12*sqrt(5)/11)*Factor }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <Abs[0],-Abs[9],Abs[0]>, <Abs[0],-Abs[8],-Abs[2]>, <Abs[0],-Abs[8],Abs[2]>, <Abs[0],-Abs[4],-Abs[7]>, <Abs[0],-Abs[4],Abs[7]>, <Abs[0],Abs[0],-Abs[9]>, <Abs[0],Abs[0],Abs[9]>, <Abs[0],Abs[4],-Abs[7]>, <Abs[0],Abs[4],Abs[7]>, <Abs[0],Abs[8],-Abs[2]>, <Abs[0],Abs[8],Abs[2]>, <Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare Points = array[6]{ P[30], P[45], P[39], P[23], P[17], P[30] }

object{
    SolidPrismFromVerticesOfPolygon(Points, 0, .2)
    pigment{color rgbt<1, .5, 0, .3>}
}
