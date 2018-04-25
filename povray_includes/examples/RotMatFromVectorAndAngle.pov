#include "light_and_axes.inc"
#include "RotMatFromVectorAndAngle.inc"

// The points are taken from the 62 vertices of the deltoidal hexecontahedron:
// https://commons.wikimedia.org/wiki/File:Polyhedron_small_rhombi_12-20_dual,_numbers.png

#declare Factor = 1;
#declare Abs = array[10]{ (0)*Factor, (3*sqrt(5)/44 + 45/44)*Factor, (-sqrt(5)/2 + 5/2)*Factor, (15/22 + 6*sqrt(5)/11)*Factor, (3*sqrt(5)/10 + 3/2)*Factor, (sqrt(5))*Factor, (27*sqrt(5)/44 + 75/44)*Factor, (3/2 + 9*sqrt(5)/10)*Factor, (sqrt(5)/2 + 5/2)*Factor, (15/11 + 12*sqrt(5)/11)*Factor }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <Abs[0],-Abs[9],Abs[0]>, <Abs[0],-Abs[8],-Abs[2]>, <Abs[0],-Abs[8],Abs[2]>, <Abs[0],-Abs[4],-Abs[7]>, <Abs[0],-Abs[4],Abs[7]>, <Abs[0],Abs[0],-Abs[9]>, <Abs[0],Abs[0],Abs[9]>, <Abs[0],Abs[4],-Abs[7]>, <Abs[0],Abs[4],Abs[7]>, <Abs[0],Abs[8],-Abs[2]>, <Abs[0],Abs[8],Abs[2]>, <Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }



#declare PRot = P[32];
#declare PRotNorm = vnormalize(P[32]);

#declare P0 = P[30];
#declare P1 = P[45];
#declare P2 = P[39];
#declare P3 = P[23];
#declare P4 = P[17];

cylinder{PRot, <0,0,0>, .01 }
sphere {PRot, .1  pigment{color Yellow}  }
sphere {<0,0,0>, .1}

polygon{ 5, P0, P1, P2, P3, P4  pigment{color rgbt<1, 1, 0, .2>} }


sphere{P0, .1  pigment{color Blue}  }

sphere{
    P0, .1
    RotMatFromVectorAndAngle(PRotNorm, 2*pi/5)
    pigment{color Red}
}









