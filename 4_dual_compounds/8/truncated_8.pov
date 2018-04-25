#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = sqrt(2);

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor}

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }

#declare Faces = array[14]{array[7]{P[2], P[6], P[13], P[15], P[7], P[3], P[2]}, array[7]{P[4], P[0], P[1], P[5], P[10], P[8], P[4]}, array[7]{P[17], P[12], P[14], P[19], P[23], P[21], P[17]}, array[5]{P[19], P[15], P[7], P[14], P[19]}, array[7]{P[13], P[18], P[22], P[23], P[19], P[15], P[13]}, array[7]{P[9], P[4], P[0], P[2], P[6], P[11], P[9]}, array[7]{P[14], P[7], P[3], P[1], P[5], P[12], P[14]}, array[7]{P[20], P[16], P[8], P[10], P[17], P[21], P[20]}, array[7]{P[9], P[16], P[20], P[22], P[18], P[11], P[9]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[16], P[8], P[4], P[9], P[16]}, array[5]{P[12], P[5], P[10], P[17], P[12]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[13], P[6], P[11], P[18], P[13]}};

#declare Edges = array[36]{array[2]{8, 10}, array[2]{21, 23}, array[2]{15, 19}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{19, 23}, array[2]{9, 16}, array[2]{5, 10}, array[2]{2, 3}, array[2]{4, 9}, array[2]{13, 18}, array[2]{5, 12}, array[2]{9, 11}, array[2]{18, 22}, array[2]{6, 13}, array[2]{1, 3}, array[2]{7, 14}, array[2]{0, 1}, array[2]{12, 17}, array[2]{20, 21}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 17}, array[2]{20, 22}, array[2]{8, 16}, array[2]{7, 15}, array[2]{0, 4}, array[2]{14, 19}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{1, 5}, array[2]{22, 23}, array[2]{6, 11}};

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

#declare Factor = 2;

#declare Abs = array[3]{ (0.0)*Factor, (3*sqrt(2)/4)*Factor, (9*sqrt(2)/8)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare Faces = array[24]{array[4]{P[12], P[4], P[8], P[12]}, array[4]{P[12], P[4], P[7], P[12]}, array[4]{P[3], P[4], P[0], P[3]}, array[4]{P[3], P[4], P[8], P[3]}, array[4]{P[11], P[12], P[13], P[11]}, array[4]{P[11], P[12], P[8], P[11]}, array[4]{P[11], P[3], P[8], P[11]}, array[4]{P[11], P[3], P[6], P[11]}, array[4]{P[10], P[12], P[13], P[10]}, array[4]{P[10], P[12], P[7], P[10]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[7], P[2]}, array[4]{P[2], P[10], P[7], P[2]}, array[4]{P[2], P[10], P[5], P[2]}, array[4]{P[1], P[3], P[0], P[1]}, array[4]{P[1], P[3], P[6], P[1]}, array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[1], P[2], P[5], P[1]}, array[4]{P[9], P[11], P[13], P[9]}, array[4]{P[9], P[11], P[6], P[9]}, array[4]{P[9], P[10], P[13], P[9]}, array[4]{P[9], P[10], P[5], P[9]}, array[4]{P[9], P[1], P[6], P[9]}, array[4]{P[9], P[1], P[5], P[9]}};

#declare Edges = array[36]{array[2]{11, 12}, array[2]{3, 8}, array[2]{3, 11}, array[2]{11, 13}, array[2]{1, 2}, array[2]{7, 10}, array[2]{2, 5}, array[2]{10, 13}, array[2]{12, 13}, array[2]{8, 11}, array[2]{7, 12}, array[2]{10, 12}, array[2]{5, 9}, array[2]{9, 10}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{2, 4}, array[2]{6, 9}, array[2]{9, 11}, array[2]{3, 4}, array[2]{1, 3}, array[2]{0, 3}, array[2]{0, 1}, array[2]{8, 12}, array[2]{3, 6}, array[2]{4, 12}, array[2]{0, 2}, array[2]{1, 6}, array[2]{1, 9}, array[2]{0, 4}, array[2]{2, 10}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 11}};

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
