#include "polyhedra_colors.inc"
#include "LongCylinder.inc"


#declare SphereRadius = 3;

sphere{ <0, 0, 0>, SphereRadius   texture{ TSphere }  }




LongCylinder(<-1, 0, 0>, <1, 0, 0>, RadEdge / 4, Black)
LongCylinder(<0, -1, 0>, <0, 1, 0>, RadEdge / 4, Black)
LongCylinder(<0, 0, -1>, <0, 0, 1>, RadEdge / 4, Black)





#declare Abs = array[5]{ (0), (0.5), (1/4 + sqrt(5)/4), (pow(1/2 + sqrt(5)/2, 2)/2), (1/2 + sqrt(5)/2), }
#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }
union{
    #for( Index, 0, 29 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        sphere{ Point , RadVert }
    #end
    texture{ TBlue }
}
