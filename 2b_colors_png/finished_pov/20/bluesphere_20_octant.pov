#include "polyhedra_colors.inc"


#declare SphereRadius = 3;

sphere{ <0, 0, 0>, SphereRadius   texture{ TSphere }  }



#declare PlaneZ = polygon{ 
    5, <-100, -100, 0>, <100, -100, 0>, <100, 100, 0>, <-100, 100, 0>, <-100, -100, 0>
}
#declare PlaneY = object{ PlaneZ rotate 90*x }
#declare PlaneX = object{ PlaneZ rotate 90*y }
union{
    object{PlaneX} object{PlaneY} object{PlaneZ} 
    pigment{ color White }
}



#declare Abs = array[4]{ (0), (1/(1/2 + sqrt(5)/2)), (1), (1/2 + sqrt(5)/2), }
#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }
union{
    #for( Index, 0, 19 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        cylinder{  
            <0, 0, 0>,
            Point*1.1,
            RadEdge / 3
        }
    #end
    texture{ TYellow }
}




#declare Abs = array[3]{ (0), (1), (1/2 + sqrt(5)/2), }
#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }
union{
    #for( Index, 0, 11 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        cylinder{  
            <0, 0, 0>,
            Point*1.1,
            RadEdge / 3
        }
    #end
    texture{ TRed }
}



#declare Abs = array[5]{ (0), (0.5), (1/4 + sqrt(5)/4), (pow(1/2 + sqrt(5)/2, 2)/2), (1/2 + sqrt(5)/2), }
#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }
union{
    #for( Index, 0, 29 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        //sphere{ Point , RadVert }
        cylinder{  
            <0, 0, 0>,
            Point*1.1,
            RadEdge / 3
        }
    #end
    texture{ TBlue }
}
