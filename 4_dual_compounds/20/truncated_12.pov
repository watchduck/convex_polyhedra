#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 3/((-1 + sqrt(5))*(5/4 + 3*sqrt(5)/4));

#declare Abs = array[7]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5)/2 + 3/2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],Abs[0]>, <-Abs[6],Abs[1],Abs[0]>, <-Abs[5],-Abs[2],-Abs[1]>, <-Abs[5],-Abs[2],Abs[1]>, <-Abs[5],Abs[2],-Abs[1]>, <-Abs[5],Abs[2],Abs[1]>, <-Abs[4],-Abs[3],-Abs[2]>, <-Abs[4],-Abs[3],Abs[2]>, <-Abs[4],Abs[3],-Abs[2]>, <-Abs[4],Abs[3],Abs[2]>, <-Abs[3],-Abs[2],-Abs[4]>, <-Abs[3],-Abs[2],Abs[4]>, <-Abs[3],Abs[2],-Abs[4]>, <-Abs[3],Abs[2],Abs[4]>, <-Abs[2],-Abs[4],-Abs[3]>, <-Abs[2],-Abs[4],Abs[3]>, <-Abs[2],-Abs[1],-Abs[5]>, <-Abs[2],-Abs[1],Abs[5]>, <-Abs[2],Abs[1],-Abs[5]>, <-Abs[2],Abs[1],Abs[5]>, <-Abs[2],Abs[4],-Abs[3]>, <-Abs[2],Abs[4],Abs[3]>, <-Abs[1],-Abs[5],-Abs[2]>, <-Abs[1],-Abs[5],Abs[2]>, <-Abs[1],Abs[0],-Abs[6]>, <-Abs[1],Abs[0],Abs[6]>, <-Abs[1],Abs[5],-Abs[2]>, <-Abs[1],Abs[5],Abs[2]>, <Abs[0],-Abs[6],-Abs[1]>, <Abs[0],-Abs[6],Abs[1]>, <Abs[0],Abs[6],-Abs[1]>, <Abs[0],Abs[6],Abs[1]>, <Abs[1],-Abs[5],-Abs[2]>, <Abs[1],-Abs[5],Abs[2]>, <Abs[1],Abs[0],-Abs[6]>, <Abs[1],Abs[0],Abs[6]>, <Abs[1],Abs[5],-Abs[2]>, <Abs[1],Abs[5],Abs[2]>, <Abs[2],-Abs[4],-Abs[3]>, <Abs[2],-Abs[4],Abs[3]>, <Abs[2],-Abs[1],-Abs[5]>, <Abs[2],-Abs[1],Abs[5]>, <Abs[2],Abs[1],-Abs[5]>, <Abs[2],Abs[1],Abs[5]>, <Abs[2],Abs[4],-Abs[3]>, <Abs[2],Abs[4],Abs[3]>, <Abs[3],-Abs[2],-Abs[4]>, <Abs[3],-Abs[2],Abs[4]>, <Abs[3],Abs[2],-Abs[4]>, <Abs[3],Abs[2],Abs[4]>, <Abs[4],-Abs[3],-Abs[2]>, <Abs[4],-Abs[3],Abs[2]>, <Abs[4],Abs[3],-Abs[2]>, <Abs[4],Abs[3],Abs[2]>, <Abs[5],-Abs[2],-Abs[1]>, <Abs[5],-Abs[2],Abs[1]>, <Abs[5],Abs[2],-Abs[1]>, <Abs[5],Abs[2],Abs[1]>, <Abs[6],-Abs[1],Abs[0]>, <Abs[6],Abs[1],Abs[0]>, }

#declare Faces = array[32]{array[4]{P[19], P[17], P[25], P[19]}, array[4]{P[33], P[23], P[29], P[33]}, array[4]{P[37], P[27], P[31], P[37]}, array[4]{P[1], P[5], P[4], P[1]}, array[4]{P[12], P[20], P[8], P[12]}, array[4]{P[16], P[18], P[24], P[16]}, array[4]{P[26], P[36], P[30], P[26]}, array[4]{P[44], P[52], P[48], P[44]}, array[4]{P[13], P[21], P[9], P[13]}, array[4]{P[59], P[57], P[56], P[59]}, array[4]{P[49], P[53], P[45], P[49]}, array[4]{P[2], P[3], P[0], P[2]}, array[4]{P[34], P[42], P[40], P[34]}, array[4]{P[55], P[54], P[58], P[55]}, array[4]{P[50], P[46], P[38], P[50]}, array[4]{P[39], P[51], P[47], P[39]}, array[4]{P[10], P[14], P[6], P[10]}, array[4]{P[41], P[35], P[43], P[41]}, array[4]{P[15], P[7], P[11], P[15]}, array[4]{P[28], P[32], P[22], P[28]}, array[11]{P[37], P[31], P[30], P[36], P[44], P[52], P[56], P[57], P[53], P[45], P[37]}, array[11]{P[25], P[17], P[11], P[15], P[23], P[33], P[39], P[47], P[41], P[35], P[25]}, array[11]{P[38], P[46], P[40], P[34], P[24], P[16], P[10], P[14], P[22], P[32], P[38]}, array[11]{P[18], P[24], P[34], P[42], P[48], P[44], P[36], P[26], P[20], P[12], P[18]}, array[11]{P[1], P[0], P[3], P[7], P[11], P[17], P[19], P[13], P[9], P[5], P[1]}, array[11]{P[35], P[25], P[19], P[13], P[21], P[27], P[37], P[45], P[49], P[43], P[35]}, array[11]{P[20], P[26], P[30], P[31], P[27], P[21], P[9], P[5], P[4], P[8], P[20]}, array[11]{P[51], P[39], P[33], P[29], P[28], P[32], P[38], P[50], P[54], P[55], P[51]}, array[11]{P[40], P[42], P[48], P[52], P[56], P[59], P[58], P[54], P[50], P[46], P[40]}, array[11]{P[12], P[8], P[4], P[1], P[0], P[2], P[6], P[10], P[16], P[18], P[12]}, array[11]{P[28], P[29], P[23], P[15], P[7], P[3], P[2], P[6], P[14], P[22], P[28]}, array[11]{P[53], P[49], P[43], P[41], P[47], P[51], P[55], P[58], P[59], P[57], P[53]}};

#declare Edges = array[90]{array[2]{52, 56}, array[2]{28, 32}, array[2]{47, 51}, array[2]{54, 58}, array[2]{41, 47}, array[2]{9, 21}, array[2]{45, 53}, array[2]{40, 46}, array[2]{40, 42}, array[2]{17, 19}, array[2]{55, 58}, array[2]{46, 50}, array[2]{27, 31}, array[2]{18, 24}, array[2]{43, 49}, array[2]{2, 6}, array[2]{16, 18}, array[2]{50, 54}, array[2]{2, 3}, array[2]{42, 48}, array[2]{26, 36}, array[2]{25, 35}, array[2]{28, 29}, array[2]{53, 57}, array[2]{21, 27}, array[2]{22, 32}, array[2]{51, 55}, array[2]{17, 25}, array[2]{13, 21}, array[2]{58, 59}, array[2]{0, 3}, array[2]{48, 52}, array[2]{38, 50}, array[2]{8, 12}, array[2]{56, 59}, array[2]{34, 40}, array[2]{23, 33}, array[2]{13, 19}, array[2]{7, 11}, array[2]{0, 2}, array[2]{12, 18}, array[2]{9, 13}, array[2]{4, 8}, array[2]{34, 42}, array[2]{38, 46}, array[2]{54, 55}, array[2]{20, 26}, array[2]{19, 25}, array[2]{6, 10}, array[2]{33, 39}, array[2]{10, 14}, array[2]{37, 45}, array[2]{32, 38}, array[2]{45, 49}, array[2]{5, 9}, array[2]{49, 53}, array[2]{29, 33}, array[2]{30, 31}, array[2]{3, 7}, array[2]{16, 24}, array[2]{39, 47}, array[2]{24, 34}, array[2]{4, 5}, array[2]{56, 57}, array[2]{31, 37}, array[2]{14, 22}, array[2]{36, 44}, array[2]{26, 30}, array[2]{11, 17}, array[2]{30, 36}, array[2]{39, 51}, array[2]{0, 1}, array[2]{23, 29}, array[2]{12, 20}, array[2]{8, 20}, array[2]{44, 48}, array[2]{22, 28}, array[2]{44, 52}, array[2]{10, 16}, array[2]{57, 59}, array[2]{6, 14}, array[2]{15, 23}, array[2]{7, 15}, array[2]{41, 43}, array[2]{35, 41}, array[2]{1, 4}, array[2]{11, 15}, array[2]{35, 43}, array[2]{1, 5}, array[2]{27, 37}};

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

#declare Factor = 3/(5/4 + 3*sqrt(5)/4);

#declare Abs = array[6]{ (0.0)*Factor, (5*sqrt(5)/44 + 35/44)*Factor, (15/22 + 5*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (25*sqrt(5)/44 + 65/44)*Factor, (5/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],Abs[0],-Abs[3]>, <-Abs[5],Abs[0],Abs[3]>, <-Abs[4],-Abs[1],Abs[0]>, <-Abs[4],Abs[1],Abs[0]>, <-Abs[3],-Abs[5],Abs[0]>, <-Abs[3],Abs[5],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[4]>, <-Abs[1],Abs[0],Abs[4]>, <-Abs[0],-Abs[4],-Abs[1]>, <-Abs[0],-Abs[4],Abs[1]>, <-Abs[0],-Abs[3],-Abs[5]>, <-Abs[0],-Abs[3],Abs[5]>, <-Abs[0],Abs[3],-Abs[5]>, <-Abs[0],Abs[3],Abs[5]>, <-Abs[0],Abs[4],-Abs[1]>, <-Abs[0],Abs[4],Abs[1]>, <Abs[1],Abs[0],-Abs[4]>, <Abs[1],Abs[0],Abs[4]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[5],Abs[0]>, <Abs[3],Abs[5],Abs[0]>, <Abs[4],-Abs[1],Abs[0]>, <Abs[4],Abs[1],Abs[0]>, <Abs[5],Abs[0],-Abs[3]>, <Abs[5],Abs[0],Abs[3]>, }

#declare Faces = array[60]{array[4]{P[8], P[5], P[0], P[8]}, array[4]{P[8], P[16], P[0], P[8]}, array[4]{P[8], P[16], P[5], P[8]}, array[4]{P[3], P[5], P[0], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[1], P[5], P[3]}, array[4]{P[17], P[27], P[25], P[17]}, array[4]{P[22], P[26], P[30], P[22]}, array[4]{P[13], P[26], P[15], P[13]}, array[4]{P[29], P[27], P[30], P[29]}, array[4]{P[24], P[16], P[30], P[24]}, array[4]{P[24], P[27], P[30], P[24]}, array[4]{P[24], P[27], P[16], P[24]}, array[4]{P[18], P[16], P[5], P[18]}, array[4]{P[18], P[27], P[5], P[18]}, array[4]{P[18], P[27], P[16], P[18]}, array[4]{P[11], P[1], P[15], P[11]}, array[4]{P[11], P[17], P[15], P[11]}, array[4]{P[11], P[17], P[1], P[11]}, array[4]{P[9], P[1], P[5], P[9]}, array[4]{P[9], P[17], P[5], P[9]}, array[4]{P[9], P[17], P[1], P[9]}, array[4]{P[19], P[27], P[5], P[19]}, array[4]{P[19], P[17], P[5], P[19]}, array[4]{P[19], P[17], P[27], P[19]}, array[4]{P[14], P[6], P[0], P[14]}, array[4]{P[14], P[22], P[30], P[14]}, array[4]{P[14], P[26], P[12], P[14]}, array[4]{P[14], P[22], P[26], P[14]}, array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[4], P[13], P[15], P[4]}, array[4]{P[4], P[14], P[12], P[4]}, array[4]{P[4], P[14], P[6], P[4]}, array[4]{P[4], P[26], P[12], P[4]}, array[4]{P[4], P[13], P[26], P[4]}, array[4]{P[31], P[17], P[25], P[31]}, array[4]{P[31], P[27], P[25], P[31]}, array[4]{P[31], P[29], P[27], P[31]}, array[4]{P[31], P[29], P[30], P[31]}, array[4]{P[10], P[16], P[0], P[10]}, array[4]{P[10], P[14], P[0], P[10]}, array[4]{P[10], P[14], P[16], P[10]}, array[4]{P[20], P[16], P[30], P[20]}, array[4]{P[20], P[14], P[30], P[20]}, array[4]{P[20], P[14], P[16], P[20]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[1], P[2]}, array[4]{P[7], P[1], P[15], P[7]}, array[4]{P[7], P[4], P[15], P[7]}, array[4]{P[7], P[4], P[1], P[7]}, array[4]{P[23], P[26], P[15], P[23]}, array[4]{P[23], P[31], P[15], P[23]}, array[4]{P[23], P[31], P[26], P[23]}, array[4]{P[21], P[17], P[15], P[21]}, array[4]{P[21], P[31], P[15], P[21]}, array[4]{P[21], P[31], P[17], P[21]}, array[4]{P[28], P[26], P[30], P[28]}, array[4]{P[28], P[31], P[30], P[28]}, array[4]{P[28], P[31], P[26], P[28]}};

#declare Edges = array[90]{array[2]{16, 27}, array[2]{19, 27}, array[2]{0, 5}, array[2]{28, 31}, array[2]{22, 30}, array[2]{0, 16}, array[2]{24, 30}, array[2]{20, 30}, array[2]{27, 29}, array[2]{17, 19}, array[2]{3, 5}, array[2]{5, 27}, array[2]{27, 31}, array[2]{16, 20}, array[2]{16, 18}, array[2]{12, 26}, array[2]{15, 26}, array[2]{5, 19}, array[2]{2, 4}, array[2]{24, 27}, array[2]{1, 3}, array[2]{5, 16}, array[2]{17, 25}, array[2]{0, 3}, array[2]{29, 31}, array[2]{18, 27}, array[2]{14, 30}, array[2]{5, 8}, array[2]{4, 12}, array[2]{13, 15}, array[2]{0, 2}, array[2]{8, 16}, array[2]{26, 31}, array[2]{1, 9}, array[2]{15, 17}, array[2]{16, 30}, array[2]{0, 14}, array[2]{22, 26}, array[2]{21, 31}, array[2]{25, 31}, array[2]{26, 28}, array[2]{1, 17}, array[2]{0, 8}, array[2]{1, 2}, array[2]{15, 21}, array[2]{10, 14}, array[2]{4, 26}, array[2]{0, 6}, array[2]{15, 31}, array[2]{4, 15}, array[2]{5, 9}, array[2]{30, 31}, array[2]{16, 24}, array[2]{28, 30}, array[2]{23, 31}, array[2]{9, 17}, array[2]{0, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{4, 14}, array[2]{5, 17}, array[2]{14, 22}, array[2]{1, 11}, array[2]{17, 27}, array[2]{26, 30}, array[2]{29, 30}, array[2]{4, 6}, array[2]{1, 7}, array[2]{11, 17}, array[2]{0, 1}, array[2]{14, 26}, array[2]{23, 26}, array[2]{17, 31}, array[2]{25, 27}, array[2]{12, 14}, array[2]{10, 16}, array[2]{5, 18}, array[2]{6, 14}, array[2]{15, 23}, array[2]{14, 20}, array[2]{7, 15}, array[2]{0, 4}, array[2]{1, 4}, array[2]{1, 15}, array[2]{13, 26}, array[2]{17, 21}, array[2]{11, 15}, array[2]{1, 5}, array[2]{4, 13}, array[2]{27, 30}};

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
