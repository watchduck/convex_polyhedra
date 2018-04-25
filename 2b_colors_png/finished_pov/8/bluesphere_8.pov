#include "polyhedra_colors.inc"
#include "LongCylinder.inc"


#declare SphereRadius = 3;

sphere{ <0, 0, 0>, SphereRadius   texture{ TSphere }  }



LongCylinder(<-1, 0, 0>, <1, 0, 0>, RadEdge / 4, Black)
LongCylinder(<0, -1, 0>, <0, 1, 0>, RadEdge / 4, Black)
LongCylinder(<0, 0, -1>, <0, 0, 1>, RadEdge / 4, Black)




#declare Abs = array[2]{ (0), (1), }
#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }
union{
    #for( Index, 0, 11 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        sphere{ Point , RadVert }
    #end
    texture{ TBlue }
}
