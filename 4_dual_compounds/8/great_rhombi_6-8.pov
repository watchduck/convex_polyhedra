#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 3/sqrt(6*sqrt(2) + 12);

#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }

#declare Faces = array[26]{array[7]{P[9], P[17], P[19], P[11], P[3], P[1], P[9]}, array[9]{P[33], P[32], P[24], P[16], P[8], P[9], P[17], P[25], P[33]}, array[9]{P[43], P[41], P[40], P[42], P[44], P[46], P[47], P[45], P[43]}, array[9]{P[30], P[38], P[39], P[31], P[23], P[15], P[14], P[22], P[30]}, array[7]{P[5], P[13], P[21], P[23], P[15], P[7], P[5]}, array[5]{P[2], P[4], P[12], P[10], P[2]}, array[7]{P[31], P[29], P[37], P[45], P[47], P[39], P[31]}, array[9]{P[36], P[34], P[26], P[18], P[10], P[12], P[20], P[28], P[36]}, array[7]{P[18], P[16], P[8], P[0], P[2], P[10], P[18]}, array[7]{P[34], P[26], P[24], P[32], P[40], P[42], P[34]}, array[7]{P[28], P[30], P[38], P[46], P[44], P[36], P[28]}, array[7]{P[27], P[35], P[43], P[41], P[33], P[25], P[27]}, array[7]{P[4], P[6], P[14], P[22], P[20], P[12], P[4]}, array[5]{P[38], P[39], P[47], P[46], P[38]}, array[5]{P[0], P[8], P[9], P[1], P[0]}, array[9]{P[7], P[5], P[3], P[1], P[0], P[2], P[4], P[6], P[7]}, array[9]{P[35], P[37], P[29], P[21], P[13], P[11], P[19], P[27], P[35]}, array[5]{P[7], P[15], P[14], P[6], P[7]}, array[5]{P[32], P[33], P[41], P[40], P[32]}, array[5]{P[18], P[16], P[24], P[26], P[18]}, array[5]{P[5], P[13], P[11], P[3], P[5]}, array[5]{P[35], P[43], P[45], P[37], P[35]}, array[5]{P[34], P[36], P[44], P[42], P[34]}, array[5]{P[22], P[30], P[28], P[20], P[22]}, array[5]{P[21], P[23], P[31], P[29], P[21]}, array[5]{P[19], P[17], P[25], P[27], P[19]}};

#declare Edges = array[72]{array[2]{11, 19}, array[2]{32, 40}, array[2]{19, 27}, array[2]{45, 47}, array[2]{11, 13}, array[2]{21, 23}, array[2]{5, 7}, array[2]{42, 44}, array[2]{22, 30}, array[2]{18, 26}, array[2]{40, 41}, array[2]{40, 42}, array[2]{17, 19}, array[2]{3, 5}, array[2]{16, 18}, array[2]{24, 32}, array[2]{2, 4}, array[2]{8, 9}, array[2]{14, 15}, array[2]{1, 3}, array[2]{26, 34}, array[2]{17, 25}, array[2]{13, 21}, array[2]{29, 31}, array[2]{10, 18}, array[2]{4, 12}, array[2]{43, 45}, array[2]{38, 39}, array[2]{0, 2}, array[2]{8, 16}, array[2]{1, 9}, array[2]{27, 35}, array[2]{44, 46}, array[2]{46, 47}, array[2]{32, 33}, array[2]{34, 42}, array[2]{38, 46}, array[2]{5, 13}, array[2]{3, 11}, array[2]{30, 38}, array[2]{0, 8}, array[2]{37, 45}, array[2]{10, 12}, array[2]{16, 24}, array[2]{39, 47}, array[2]{28, 30}, array[2]{20, 28}, array[2]{23, 31}, array[2]{9, 17}, array[2]{29, 37}, array[2]{31, 39}, array[2]{14, 22}, array[2]{36, 44}, array[2]{4, 6}, array[2]{0, 1}, array[2]{34, 36}, array[2]{25, 33}, array[2]{6, 7}, array[2]{12, 20}, array[2]{35, 37}, array[2]{25, 27}, array[2]{20, 22}, array[2]{33, 41}, array[2]{15, 23}, array[2]{6, 14}, array[2]{7, 15}, array[2]{41, 43}, array[2]{21, 29}, array[2]{2, 10}, array[2]{28, 36}, array[2]{24, 26}, array[2]{35, 43}};

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

#declare Factor = 6/sqrt(6*sqrt(2) + 12);

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare Faces = array[48]{array[4]{P[3], P[8], P[0], P[3]}, array[4]{P[3], P[8], P[13], P[3]}, array[4]{P[23], P[20], P[25], P[23]}, array[4]{P[23], P[20], P[13], P[23]}, array[4]{P[15], P[8], P[13], P[15]}, array[4]{P[15], P[20], P[13], P[15]}, array[4]{P[15], P[8], P[16], P[15]}, array[4]{P[15], P[20], P[16], P[15]}, array[4]{P[2], P[7], P[0], P[2]}, array[4]{P[2], P[7], P[12], P[2]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[7], P[0], P[4]}, array[4]{P[4], P[8], P[16], P[4]}, array[4]{P[4], P[7], P[16], P[4]}, array[4]{P[22], P[19], P[25], P[22]}, array[4]{P[22], P[19], P[12], P[22]}, array[4]{P[24], P[20], P[25], P[24]}, array[4]{P[24], P[19], P[25], P[24]}, array[4]{P[24], P[20], P[16], P[24]}, array[4]{P[24], P[19], P[16], P[24]}, array[4]{P[14], P[7], P[12], P[14]}, array[4]{P[14], P[19], P[12], P[14]}, array[4]{P[14], P[7], P[16], P[14]}, array[4]{P[14], P[19], P[16], P[14]}, array[4]{P[6], P[3], P[13], P[6]}, array[4]{P[6], P[3], P[0], P[6]}, array[4]{P[18], P[23], P[13], P[18]}, array[4]{P[18], P[23], P[25], P[18]}, array[4]{P[1], P[6], P[0], P[1]}, array[4]{P[1], P[6], P[9], P[1]}, array[4]{P[21], P[18], P[25], P[21]}, array[4]{P[21], P[18], P[9], P[21]}, array[4]{P[11], P[6], P[13], P[11]}, array[4]{P[11], P[18], P[13], P[11]}, array[4]{P[11], P[6], P[9], P[11]}, array[4]{P[11], P[18], P[9], P[11]}, array[4]{P[5], P[2], P[12], P[5]}, array[4]{P[5], P[1], P[9], P[5]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[5], P[1], P[0], P[5]}, array[4]{P[17], P[22], P[12], P[17]}, array[4]{P[17], P[21], P[9], P[17]}, array[4]{P[17], P[22], P[25], P[17]}, array[4]{P[17], P[21], P[25], P[17]}, array[4]{P[10], P[5], P[9], P[10]}, array[4]{P[10], P[17], P[9], P[10]}, array[4]{P[10], P[5], P[12], P[10]}, array[4]{P[10], P[17], P[12], P[10]}};

#declare Edges = array[72]{array[2]{20, 23}, array[2]{0, 5}, array[2]{11, 13}, array[2]{8, 13}, array[2]{19, 22}, array[2]{2, 5}, array[2]{9, 21}, array[2]{16, 20}, array[2]{2, 12}, array[2]{13, 18}, array[2]{6, 9}, array[2]{5, 12}, array[2]{15, 16}, array[2]{9, 11}, array[2]{3, 13}, array[2]{7, 14}, array[2]{17, 25}, array[2]{0, 3}, array[2]{12, 17}, array[2]{9, 18}, array[2]{22, 25}, array[2]{13, 15}, array[2]{12, 19}, array[2]{0, 2}, array[2]{1, 6}, array[2]{10, 17}, array[2]{8, 16}, array[2]{24, 25}, array[2]{18, 23}, array[2]{1, 9}, array[2]{14, 19}, array[2]{4, 8}, array[2]{20, 25}, array[2]{15, 20}, array[2]{6, 11}, array[2]{8, 15}, array[2]{3, 8}, array[2]{20, 24}, array[2]{19, 25}, array[2]{0, 8}, array[2]{0, 7}, array[2]{7, 12}, array[2]{19, 24}, array[2]{0, 6}, array[2]{10, 12}, array[2]{5, 9}, array[2]{9, 10}, array[2]{16, 24}, array[2]{7, 16}, array[2]{23, 25}, array[2]{2, 7}, array[2]{9, 17}, array[2]{5, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{21, 25}, array[2]{17, 22}, array[2]{6, 13}, array[2]{0, 1}, array[2]{4, 16}, array[2]{12, 22}, array[2]{3, 6}, array[2]{16, 19}, array[2]{12, 14}, array[2]{13, 20}, array[2]{18, 25}, array[2]{13, 23}, array[2]{0, 4}, array[2]{11, 18}, array[2]{17, 21}, array[2]{18, 21}, array[2]{1, 5}};

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
