#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 3*sqrt(2);

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare Faces = array[8]{array[4]{P[3], P[4], P[0], P[3]}, array[4]{P[3], P[4], P[5], P[3]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[5], P[2]}, array[4]{P[1], P[3], P[5], P[1]}, array[4]{P[1], P[3], P[0], P[1]}, array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[1], P[2], P[5], P[1]}};

#declare Edges = array[12]{array[2]{1, 3}, array[2]{3, 5}, array[2]{0, 3}, array[2]{4, 5}, array[2]{0, 4}, array[2]{0, 1}, array[2]{1, 2}, array[2]{2, 4}, array[2]{2, 5}, array[2]{1, 5}, array[2]{3, 4}, array[2]{0, 2}};

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    texture{ Wood14_with_turbulence_lightened }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color DarkGray }
}


///////////////////////////////////////// Catalan

#declare Factor = 3*sqrt(2)/2;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare Faces = array[6]{array[5]{P[7], P[5], P[4], P[6], P[7]}, array[5]{P[0], P[2], P[6], P[4], P[0]}, array[5]{P[4], P[0], P[1], P[5], P[4]}, array[5]{P[1], P[5], P[7], P[3], P[1]}, array[5]{P[7], P[3], P[2], P[6], P[7]}, array[5]{P[0], P[2], P[3], P[1], P[0]}};

#declare Edges = array[12]{array[2]{3, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{2, 6}, array[2]{0, 1}, array[2]{0, 4}, array[2]{4, 5}, array[2]{5, 7}, array[2]{2, 3}, array[2]{6, 7}, array[2]{1, 5}, array[2]{0, 2}};

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    texture{ Wood14_with_turbulence_calm }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color LightGray }
}
