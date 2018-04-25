#include "polyhedra_with_duals.inc"

#declare ScaleFactor = 1.3;

///////////////////////////////////////// Archimedean

#declare Factor = ScaleFactor * 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare Faces = array[32]{array[4]{P[20], P[12], P[16], P[20]}, array[4]{P[19], P[11], P[16], P[19]}, array[4]{P[4], P[8], P[12], P[4]}, array[4]{P[10], P[18], P[13], P[10]}, array[4]{P[9], P[17], P[13], P[9]}, array[4]{P[3], P[7], P[11], P[3]}, array[4]{P[3], P[4], P[0], P[3]}, array[4]{P[28], P[24], P[20], P[28]}, array[4]{P[22], P[24], P[15], P[22]}, array[4]{P[21], P[23], P[14], P[21]}, array[4]{P[6], P[8], P[15], P[6]}, array[4]{P[5], P[7], P[14], P[5]}, array[4]{P[1], P[5], P[9], P[1]}, array[4]{P[27], P[23], P[19], P[27]}, array[4]{P[27], P[28], P[29], P[27]}, array[4]{P[26], P[22], P[18], P[26]}, array[4]{P[2], P[6], P[10], P[2]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[25], P[21], P[17], P[25]}, array[4]{P[25], P[26], P[29], P[25]}, array[6]{P[17], P[9], P[5], P[14], P[21], P[17]}, array[6]{P[1], P[5], P[7], P[3], P[0], P[1]}, array[6]{P[7], P[14], P[23], P[19], P[11], P[7]}, array[6]{P[12], P[8], P[15], P[24], P[20], P[12]}, array[6]{P[10], P[6], P[15], P[22], P[18], P[10]}, array[6]{P[24], P[28], P[29], P[26], P[22], P[24]}, array[6]{P[29], P[25], P[21], P[23], P[27], P[29]}, array[6]{P[0], P[2], P[6], P[8], P[4], P[0]}, array[6]{P[13], P[17], P[25], P[26], P[18], P[13]}, array[6]{P[28], P[20], P[16], P[19], P[27], P[28]}, array[6]{P[13], P[9], P[1], P[2], P[10], P[13]}, array[6]{P[4], P[12], P[16], P[11], P[3], P[4]}};

#declare Edges = array[60]{array[2]{8, 15}, array[2]{3, 11}, array[2]{20, 24}, array[2]{11, 19}, array[2]{5, 14}, array[2]{19, 27}, array[2]{25, 29}, array[2]{6, 10}, array[2]{15, 24}, array[2]{1, 2}, array[2]{21, 23}, array[2]{5, 7}, array[2]{10, 13}, array[2]{23, 27}, array[2]{18, 26}, array[2]{24, 28}, array[2]{25, 26}, array[2]{26, 29}, array[2]{27, 29}, array[2]{5, 9}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{20, 28}, array[2]{19, 23}, array[2]{9, 17}, array[2]{12, 16}, array[2]{11, 16}, array[2]{28, 29}, array[2]{13, 18}, array[2]{21, 25}, array[2]{14, 21}, array[2]{3, 4}, array[2]{18, 22}, array[2]{7, 14}, array[2]{17, 25}, array[2]{14, 23}, array[2]{0, 3}, array[2]{0, 1}, array[2]{8, 12}, array[2]{12, 20}, array[2]{10, 18}, array[2]{22, 24}, array[2]{4, 12}, array[2]{16, 19}, array[2]{7, 11}, array[2]{0, 2}, array[2]{15, 22}, array[2]{27, 28}, array[2]{1, 9}, array[2]{0, 4}, array[2]{13, 17}, array[2]{6, 8}, array[2]{2, 10}, array[2]{17, 21}, array[2]{22, 26}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 15}};

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

#declare Factor = ScaleFactor * 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(5)/4)*Factor, (sqrt(5)/8 + 5/8)*Factor, (5/8 + 3*sqrt(5)/8)*Factor, }

#declare P = array[32]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[0],-Abs[2]>, <-Abs[3],Abs[0],Abs[2]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[3],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <-Abs[0],-Abs[3],-Abs[1]>, <-Abs[0],-Abs[3],Abs[1]>, <-Abs[0],-Abs[2],-Abs[3]>, <-Abs[0],-Abs[2],Abs[3]>, <-Abs[0],Abs[2],-Abs[3]>, <-Abs[0],Abs[2],Abs[3]>, <-Abs[0],Abs[3],-Abs[1]>, <-Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[3],Abs[0]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[0],-Abs[2]>, <Abs[3],Abs[0],Abs[2]>, <Abs[3],Abs[1],Abs[0]>, }

#declare Faces = array[30]{array[5]{P[0], P[1], P[5], P[4], P[0]}, array[5]{P[20], P[16], P[25], P[29], P[20]}, array[5]{P[22], P[28], P[30], P[24], P[22]}, array[5]{P[20], P[14], P[23], P[29], P[20]}, array[5]{P[17], P[19], P[27], P[26], P[17]}, array[5]{P[18], P[9], P[19], P[27], P[18]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[3], P[9], P[7], P[1], P[3]}, array[5]{P[16], P[25], P[27], P[18], P[16]}, array[5]{P[22], P[12], P[14], P[23], P[22]}, array[5]{P[17], P[8], P[2], P[11], P[17]}, array[5]{P[1], P[7], P[16], P[10], P[1]}, array[5]{P[27], P[31], P[30], P[26], P[27]}, array[5]{P[17], P[21], P[30], P[26], P[17]}, array[5]{P[16], P[10], P[14], P[20], P[16]}, array[5]{P[24], P[30], P[21], P[15], P[24]}, array[5]{P[22], P[28], P[29], P[23], P[22]}, array[5]{P[17], P[21], P[15], P[11], P[17]}, array[5]{P[4], P[12], P[14], P[5], P[4]}, array[5]{P[2], P[6], P[15], P[11], P[2]}, array[5]{P[29], P[31], P[30], P[28], P[29]}, array[5]{P[14], P[5], P[1], P[10], P[14]}, array[5]{P[31], P[29], P[25], P[27], P[31]}, array[5]{P[17], P[8], P[9], P[19], P[17]}, array[5]{P[8], P[2], P[3], P[9], P[8]}, array[5]{P[13], P[22], P[24], P[15], P[13]}, array[5]{P[18], P[9], P[7], P[16], P[18]}, array[5]{P[13], P[15], P[6], P[4], P[13]}, array[5]{P[4], P[12], P[22], P[13], P[4]}, array[5]{P[4], P[0], P[2], P[6], P[4]}};

#declare Edges = array[60]{array[2]{7, 9}, array[2]{25, 29}, array[2]{5, 14}, array[2]{19, 27}, array[2]{2, 11}, array[2]{15, 21}, array[2]{15, 24}, array[2]{24, 30}, array[2]{10, 14}, array[2]{26, 27}, array[2]{21, 30}, array[2]{16, 20}, array[2]{17, 19}, array[2]{17, 26}, array[2]{30, 31}, array[2]{27, 31}, array[2]{7, 16}, array[2]{28, 30}, array[2]{2, 6}, array[2]{4, 5}, array[2]{16, 18}, array[2]{2, 3}, array[2]{28, 29}, array[2]{13, 22}, array[2]{8, 9}, array[2]{1, 7}, array[2]{26, 30}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{11, 17}, array[2]{14, 23}, array[2]{0, 1}, array[2]{1, 10}, array[2]{18, 27}, array[2]{29, 31}, array[2]{23, 29}, array[2]{9, 18}, array[2]{12, 22}, array[2]{22, 24}, array[2]{22, 28}, array[2]{16, 25}, array[2]{25, 27}, array[2]{4, 12}, array[2]{12, 14}, array[2]{20, 29}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 16}, array[2]{8, 17}, array[2]{2, 8}, array[2]{14, 20}, array[2]{9, 19}, array[2]{0, 4}, array[2]{17, 21}, array[2]{11, 15}, array[2]{1, 5}, array[2]{22, 23}, array[2]{4, 13}, array[2]{6, 15}};

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
