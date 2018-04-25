#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 1;

#declare Abs = array[2]{ (1)*Factor, (3)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, }

#declare Faces = array[8]{array[4]{P[1], P[4], P[5], P[1]}, array[4]{P[7], P[6], P[10], P[7]}, array[4]{P[11], P[9], P[8], P[11]}, array[4]{P[3], P[2], P[0], P[3]}, array[7]{P[8], P[3], P[2], P[6], P[10], P[11], P[8]}, array[7]{P[1], P[0], P[3], P[8], P[9], P[5], P[1]}, array[7]{P[10], P[7], P[4], P[5], P[9], P[11], P[10]}, array[7]{P[7], P[4], P[1], P[0], P[2], P[6], P[7]}};

#declare Edges = array[18]{array[2]{3, 8}, array[2]{6, 10}, array[2]{0, 3}, array[2]{0, 1}, array[2]{7, 10}, array[2]{6, 7}, array[2]{8, 11}, array[2]{0, 2}, array[2]{5, 9}, array[2]{2, 6}, array[2]{4, 5}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 7}, array[2]{10, 11}, array[2]{9, 11}, array[2]{1, 5}, array[2]{8, 9}};

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
    scale -x
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
    scale -x
}


///////////////////////////////////////// Catalan

#declare Factor = 2*sqrt(2);

#declare Abs = array[2]{ (9*sqrt(2)/20)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[8]{ <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, }

#declare Faces = array[12]{array[4]{P[2], P[6], P[0], P[2]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[2], P[1], P[6], P[2]}, array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[4], P[7], P[0], P[4]}, array[4]{P[4], P[7], P[6], P[4]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[7], P[0], P[3]}, array[4]{P[3], P[7], P[1], P[3]}, array[4]{P[5], P[1], P[6], P[5]}, array[4]{P[5], P[7], P[6], P[5]}, array[4]{P[5], P[7], P[1], P[5]}};

#declare Edges = array[18]{array[2]{1, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{0, 1}, array[2]{1, 2}, array[2]{0, 3}, array[2]{5, 7}, array[2]{6, 7}, array[2]{0, 7}, array[2]{0, 6}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{5, 6}, array[2]{2, 6}, array[2]{0, 4}, array[2]{4, 7}, array[2]{1, 5}};

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
    scale -x
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
    scale -x
}
