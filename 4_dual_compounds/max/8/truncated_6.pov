#include "polyhedra_with_duals.inc"

#declare ScaleFactor = 1.015;

///////////////////////////////////////// Archimedean

#declare Factor = ScaleFactor * 3/((-2 + 2*sqrt(2))*(sqrt(2)/2 + 1));

#declare Abs = array[2]{ (-1 + sqrt(2))*Factor, (1)*Factor}

#declare P = array[24]{ <-Abs[1],-Abs[1],-Abs[0]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],-Abs[0],-Abs[1]>, <-Abs[1],-Abs[0],Abs[1]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],-Abs[0]>, <-Abs[1],Abs[1],Abs[0]>, <-Abs[0],-Abs[1],-Abs[1]>, <-Abs[0],-Abs[1],Abs[1]>, <-Abs[0],Abs[1],-Abs[1]>, <-Abs[0],Abs[1],Abs[1]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],-Abs[0]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[1]>, <Abs[1],-Abs[0],Abs[1]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],-Abs[0]>, <Abs[1],Abs[1],Abs[0]>}

#declare Faces = array[14]{array[4]{P[8], P[2], P[0], P[8]}, array[4]{P[1], P[9], P[3], P[1]}, array[4]{P[4], P[10], P[6], P[4]}, array[4]{P[7], P[5], P[11], P[7]}, array[4]{P[13], P[17], P[19], P[13]}, array[4]{P[23], P[21], P[15], P[23]}, array[4]{P[12], P[18], P[16], P[12]}, array[4]{P[14], P[20], P[22], P[14]}, array[9]{P[22], P[14], P[10], P[6], P[7], P[11], P[15], P[23], P[22]}, array[9]{P[12], P[8], P[0], P[1], P[9], P[13], P[17], P[16], P[12]}, array[9]{P[19], P[17], P[16], P[18], P[20], P[22], P[23], P[21], P[19]}, array[9]{P[9], P[3], P[5], P[11], P[15], P[21], P[19], P[13], P[9]}, array[9]{P[4], P[2], P[8], P[12], P[18], P[20], P[14], P[10], P[4]}, array[9]{P[7], P[5], P[3], P[1], P[0], P[2], P[4], P[6], P[7]}};

#declare Edges = array[36]{array[2]{0, 8}, array[2]{6, 10}, array[2]{15, 21}, array[2]{21, 23}, array[2]{5, 7}, array[2]{10, 14}, array[2]{17, 19}, array[2]{3, 5}, array[2]{16, 18}, array[2]{12, 16}, array[2]{2, 4}, array[2]{14, 22}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{0, 1}, array[2]{8, 12}, array[2]{6, 7}, array[2]{19, 21}, array[2]{13, 19}, array[2]{5, 11}, array[2]{7, 11}, array[2]{0, 2}, array[2]{18, 20}, array[2]{20, 22}, array[2]{2, 8}, array[2]{16, 17}, array[2]{15, 23}, array[2]{1, 9}, array[2]{14, 20}, array[2]{13, 17}, array[2]{4, 10}, array[2]{11, 15}, array[2]{12, 18}, array[2]{9, 13}, array[2]{22, 23}};

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

#declare Factor = ScaleFactor * 3/(sqrt(2)/2 + 1);

#declare Abs = array[3]{ (0.0)*Factor, (1.0)*Factor, (1 + sqrt(2))*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare Faces = array[24]{array[4]{P[4], P[7], P[0], P[4]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[7], P[8], P[4]}, array[4]{P[12], P[7], P[13], P[12]}, array[4]{P[12], P[8], P[13], P[12]}, array[4]{P[12], P[7], P[8], P[12]}, array[4]{P[3], P[6], P[0], P[3]}, array[4]{P[3], P[8], P[0], P[3]}, array[4]{P[3], P[6], P[8], P[3]}, array[4]{P[11], P[6], P[13], P[11]}, array[4]{P[11], P[8], P[13], P[11]}, array[4]{P[11], P[6], P[8], P[11]}, array[4]{P[10], P[7], P[13], P[10]}, array[4]{P[10], P[5], P[13], P[10]}, array[4]{P[10], P[5], P[7], P[10]}, array[4]{P[2], P[7], P[0], P[2]}, array[4]{P[2], P[5], P[0], P[2]}, array[4]{P[2], P[5], P[7], P[2]}, array[4]{P[1], P[6], P[0], P[1]}, array[4]{P[1], P[5], P[0], P[1]}, array[4]{P[1], P[5], P[6], P[1]}, array[4]{P[9], P[6], P[13], P[9]}, array[4]{P[9], P[5], P[13], P[9]}, array[4]{P[9], P[5], P[6], P[9]}};

#declare Edges = array[36]{array[2]{3, 8}, array[2]{0, 5}, array[2]{11, 13}, array[2]{0, 8}, array[2]{7, 10}, array[2]{8, 13}, array[2]{5, 7}, array[2]{2, 5}, array[2]{10, 13}, array[2]{0, 7}, array[2]{12, 13}, array[2]{7, 12}, array[2]{8, 11}, array[2]{0, 6}, array[2]{5, 9}, array[2]{5, 6}, array[2]{7, 8}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{6, 9}, array[2]{6, 13}, array[2]{0, 3}, array[2]{0, 1}, array[2]{8, 12}, array[2]{3, 6}, array[2]{7, 13}, array[2]{6, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{0, 4}, array[2]{6, 8}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{5, 13}};

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
