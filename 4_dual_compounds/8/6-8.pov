#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = sqrt(6);

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare Faces = array[14]{array[4]{P[7], P[2], P[3], P[7]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[10], P[5], P[8], P[10]}, array[4]{P[11], P[10], P[7], P[11]}, array[4]{P[6], P[1], P[3], P[6]}, array[4]{P[9], P[4], P[8], P[9]}, array[4]{P[9], P[6], P[11], P[9]}, array[5]{P[11], P[10], P[8], P[9], P[11]}, array[5]{P[7], P[3], P[6], P[11], P[7]}, array[5]{P[4], P[1], P[6], P[9], P[4]}, array[5]{P[0], P[5], P[8], P[4], P[0]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[5], P[2], P[7], P[10], P[5]}};

#declare Edges = array[24]{array[2]{8, 10}, array[2]{1, 3}, array[2]{0, 5}, array[2]{0, 1}, array[2]{7, 10}, array[2]{5, 8}, array[2]{2, 5}, array[2]{3, 6}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 9}, array[2]{4, 8}, array[2]{6, 9}, array[2]{10, 11}, array[2]{9, 11}, array[2]{8, 9}, array[2]{6, 11}};

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

#declare Factor = 2*sqrt(3);

#declare Abs = array[3]{ (0.0)*Factor, (3*sqrt(2)/8)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare Faces = array[12]{array[5]{P[12], P[8], P[11], P[13], P[12]}, array[5]{P[0], P[3], P[6], P[1], P[0]}, array[5]{P[13], P[9], P[5], P[10], P[13]}, array[5]{P[6], P[11], P[13], P[9], P[6]}, array[5]{P[4], P[8], P[12], P[7], P[4]}, array[5]{P[4], P[8], P[3], P[0], P[4]}, array[5]{P[7], P[4], P[0], P[2], P[7]}, array[5]{P[1], P[0], P[2], P[5], P[1]}, array[5]{P[5], P[2], P[7], P[10], P[5]}, array[5]{P[12], P[7], P[10], P[13], P[12]}, array[5]{P[5], P[9], P[6], P[1], P[5]}, array[5]{P[6], P[11], P[8], P[3], P[6]}};

#declare Edges = array[24]{array[2]{3, 8}, array[2]{11, 13}, array[2]{0, 3}, array[2]{0, 1}, array[2]{7, 10}, array[2]{8, 12}, array[2]{2, 5}, array[2]{10, 13}, array[2]{3, 6}, array[2]{12, 13}, array[2]{8, 11}, array[2]{7, 12}, array[2]{0, 2}, array[2]{1, 6}, array[2]{5, 9}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{6, 9}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 11}};

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
