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



#declare Abs = array[1]{ (1), }
#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }
union{
    #for( Index, 0, 7 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        cylinder{  
            <0, 0, 0>,
            Point*1.1,
            RadEdge / 3   
        }
    #end
    texture{ TYellow }
}



#declare Abs = array[2]{ (0), (1), }
#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }
union{
    #for( Index, 0, 5 )
        #declare Point = vnormalize(P[Index]) * SphereRadius;
        cylinder{  
            <0, 0, 0>,
            Point*1.1,
            RadEdge / 3   
        }
    #end
    texture{ TRed }
}



#declare Abs = array[2]{ (0), (1), }
#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }
union{
    #for( Index, 0, 11 )
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
