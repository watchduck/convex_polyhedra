#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 3/(1/2 + sqrt(5)/2);

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare Faces = array[20]{array[4]{P[6], P[3], P[0], P[6]}, array[4]{P[8], P[2], P[5], P[8]}, array[4]{P[1], P[2], P[5], P[1]}, array[4]{P[1], P[3], P[0], P[1]}, array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[1], P[7], P[3], P[1]}, array[4]{P[1], P[7], P[5], P[1]}, array[4]{P[9], P[6], P[10], P[9]}, array[4]{P[9], P[7], P[3], P[9]}, array[4]{P[9], P[6], P[3], P[9]}, array[4]{P[4], P[2], P[0], P[4]}, array[4]{P[4], P[6], P[10], P[4]}, array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[4], P[8], P[10], P[4]}, array[4]{P[4], P[8], P[2], P[4]}, array[4]{P[11], P[7], P[5], P[11]}, array[4]{P[11], P[8], P[5], P[11]}, array[4]{P[11], P[8], P[10], P[11]}, array[4]{P[11], P[9], P[10], P[11]}, array[4]{P[11], P[9], P[7], P[11]}};

#declare Edges = array[30]{array[2]{7, 9}, array[2]{1, 7}, array[2]{8, 10}, array[2]{1, 3}, array[2]{4, 6}, array[2]{10, 11}, array[2]{3, 9}, array[2]{1, 2}, array[2]{0, 3}, array[2]{0, 1}, array[2]{6, 10}, array[2]{5, 8}, array[2]{5, 7}, array[2]{2, 5}, array[2]{3, 6}, array[2]{8, 11}, array[2]{0, 6}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{3, 7}, array[2]{9, 10}, array[2]{2, 8}, array[2]{0, 4}, array[2]{2, 4}, array[2]{4, 10}, array[2]{6, 9}, array[2]{4, 8}, array[2]{9, 11}, array[2]{1, 5}};

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
    rotate 90*z
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
    rotate 90*z
}


///////////////////////////////////////// Catalan

#declare Factor = 3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4));

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare Faces = array[12]{array[6]{P[9], P[15], P[18], P[14], P[8], P[9]}, array[6]{P[13], P[17], P[19], P[18], P[15], P[13]}, array[6]{P[2], P[6], P[12], P[14], P[8], P[2]}, array[6]{P[4], P[1], P[0], P[2], P[6], P[4]}, array[6]{P[19], P[16], P[10], P[11], P[17], P[19]}, array[6]{P[3], P[7], P[13], P[15], P[9], P[3]}, array[6]{P[18], P[19], P[16], P[12], P[14], P[18]}, array[6]{P[3], P[0], P[2], P[8], P[9], P[3]}, array[6]{P[13], P[17], P[11], P[5], P[7], P[13]}, array[6]{P[4], P[6], P[12], P[16], P[10], P[4]}, array[6]{P[1], P[5], P[7], P[3], P[0], P[1]}, array[6]{P[10], P[4], P[1], P[5], P[11], P[10]}};

#declare Edges = array[30]{array[2]{4, 6}, array[2]{11, 17}, array[2]{3, 9}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 5}, array[2]{5, 7}, array[2]{7, 13}, array[2]{6, 12}, array[2]{12, 14}, array[2]{16, 19}, array[2]{13, 15}, array[2]{5, 11}, array[2]{0, 2}, array[2]{10, 16}, array[2]{3, 7}, array[2]{14, 18}, array[2]{17, 19}, array[2]{2, 8}, array[2]{18, 19}, array[2]{2, 6}, array[2]{13, 17}, array[2]{12, 16}, array[2]{1, 4}, array[2]{9, 15}, array[2]{4, 10}, array[2]{8, 14}, array[2]{10, 11}, array[2]{15, 18}, array[2]{8, 9}};

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
    rotate 90*z
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
    rotate 90*z
}
