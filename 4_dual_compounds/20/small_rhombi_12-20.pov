#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 3/sqrt(4*sqrt(5) + 10);

#declare Abs = array[7]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, (pow(1/2 + sqrt(5)/2, 2))*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (pow(1/2 + sqrt(5)/2, 3))*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],-Abs[1]>, <-Abs[6],-Abs[1],Abs[1]>, <-Abs[6],Abs[1],-Abs[1]>, <-Abs[6],Abs[1],Abs[1]>, <-Abs[5],-Abs[3],Abs[0]>, <-Abs[5],Abs[3],Abs[0]>, <-Abs[4],-Abs[2],-Abs[3]>, <-Abs[4],-Abs[2],Abs[3]>, <-Abs[4],Abs[2],-Abs[3]>, <-Abs[4],Abs[2],Abs[3]>, <-Abs[3],-Abs[4],-Abs[2]>, <-Abs[3],-Abs[4],Abs[2]>, <-Abs[3],Abs[0],-Abs[5]>, <-Abs[3],Abs[0],Abs[5]>, <-Abs[3],Abs[4],-Abs[2]>, <-Abs[3],Abs[4],Abs[2]>, <-Abs[2],-Abs[3],-Abs[4]>, <-Abs[2],-Abs[3],Abs[4]>, <-Abs[2],Abs[3],-Abs[4]>, <-Abs[2],Abs[3],Abs[4]>, <-Abs[1],-Abs[6],-Abs[1]>, <-Abs[1],-Abs[6],Abs[1]>, <-Abs[1],-Abs[1],-Abs[6]>, <-Abs[1],-Abs[1],Abs[6]>, <-Abs[1],Abs[1],-Abs[6]>, <-Abs[1],Abs[1],Abs[6]>, <-Abs[1],Abs[6],-Abs[1]>, <-Abs[1],Abs[6],Abs[1]>, <Abs[0],-Abs[5],-Abs[3]>, <Abs[0],-Abs[5],Abs[3]>, <Abs[0],Abs[5],-Abs[3]>, <Abs[0],Abs[5],Abs[3]>, <Abs[1],-Abs[6],-Abs[1]>, <Abs[1],-Abs[6],Abs[1]>, <Abs[1],-Abs[1],-Abs[6]>, <Abs[1],-Abs[1],Abs[6]>, <Abs[1],Abs[1],-Abs[6]>, <Abs[1],Abs[1],Abs[6]>, <Abs[1],Abs[6],-Abs[1]>, <Abs[1],Abs[6],Abs[1]>, <Abs[2],-Abs[3],-Abs[4]>, <Abs[2],-Abs[3],Abs[4]>, <Abs[2],Abs[3],-Abs[4]>, <Abs[2],Abs[3],Abs[4]>, <Abs[3],-Abs[4],-Abs[2]>, <Abs[3],-Abs[4],Abs[2]>, <Abs[3],Abs[0],-Abs[5]>, <Abs[3],Abs[0],Abs[5]>, <Abs[3],Abs[4],-Abs[2]>, <Abs[3],Abs[4],Abs[2]>, <Abs[4],-Abs[2],-Abs[3]>, <Abs[4],-Abs[2],Abs[3]>, <Abs[4],Abs[2],-Abs[3]>, <Abs[4],Abs[2],Abs[3]>, <Abs[5],-Abs[3],Abs[0]>, <Abs[5],Abs[3],Abs[0]>, <Abs[6],-Abs[1],-Abs[1]>, <Abs[6],-Abs[1],Abs[1]>, <Abs[6],Abs[1],-Abs[1]>, <Abs[6],Abs[1],Abs[1]>, }

#declare Faces = array[62]{array[4]{P[13], P[25], P[23], P[13]}, array[4]{P[5], P[3], P[2], P[5]}, array[4]{P[37], P[35], P[47], P[37]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[34], P[36], P[46], P[34]}, array[4]{P[48], P[52], P[42], P[48]}, array[4]{P[31], P[39], P[27], P[31]}, array[4]{P[49], P[53], P[43], P[49]}, array[4]{P[15], P[19], P[9], P[15]}, array[4]{P[59], P[58], P[55], P[59]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[14], P[18], P[8], P[14]}, array[4]{P[54], P[57], P[56], P[54]}, array[4]{P[38], P[30], P[26], P[38]}, array[4]{P[29], P[21], P[33], P[29]}, array[4]{P[44], P[50], P[40], P[44]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[32], P[28], P[20], P[32]}, array[4]{P[41], P[45], P[51], P[41]}, array[5]{P[31], P[43], P[49], P[39], P[31]}, array[5]{P[32], P[28], P[40], P[44], P[32]}, array[5]{P[13], P[23], P[17], P[7], P[13]}, array[5]{P[26], P[38], P[39], P[27], P[26]}, array[6]{P[34], P[22], P[16], P[28], P[40], P[34]}, array[5]{P[53], P[49], P[55], P[59], P[53]}, array[5]{P[57], P[56], P[58], P[59], P[57]}, array[5]{P[16], P[6], P[12], P[22], P[16]}, array[6]{P[9], P[3], P[1], P[7], P[13], P[9]}, array[5]{P[5], P[15], P[9], P[3], P[5]}, array[5]{P[45], P[54], P[57], P[51], P[45]}, array[5]{P[20], P[10], P[16], P[28], P[20]}, array[6]{P[37], P[25], P[19], P[31], P[43], P[37]}, array[6]{P[32], P[33], P[45], P[54], P[44], P[32]}, array[5]{P[54], P[44], P[50], P[56], P[54]}, array[6]{P[38], P[48], P[55], P[49], P[39], P[38]}, array[5]{P[30], P[38], P[48], P[42], P[30]}, array[6]{P[27], P[15], P[5], P[14], P[26], P[27]}, array[6]{P[47], P[51], P[57], P[59], P[53], P[47]}, array[6]{P[50], P[46], P[52], P[58], P[56], P[50]}, array[5]{P[22], P[34], P[36], P[24], P[22]}, array[6]{P[30], P[18], P[24], P[36], P[42], P[30]}, array[5]{P[33], P[29], P[41], P[45], P[33]}, array[5]{P[20], P[32], P[33], P[21], P[20]}, array[5]{P[27], P[15], P[19], P[31], P[27]}, array[5]{P[4], P[10], P[6], P[0], P[4]}, array[5]{P[35], P[47], P[51], P[41], P[35]}, array[6]{P[35], P[23], P[17], P[29], P[41], P[35]}, array[5]{P[21], P[11], P[17], P[29], P[21]}, array[5]{P[9], P[19], P[25], P[13], P[9]}, array[5]{P[4], P[1], P[7], P[11], P[4]}, array[5]{P[14], P[26], P[30], P[18], P[14]}, array[5]{P[8], P[14], P[5], P[2], P[8]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[6]{P[10], P[20], P[21], P[11], P[4], P[10]}, array[5]{P[43], P[53], P[47], P[37], P[43]}, array[5]{P[34], P[40], P[50], P[46], P[34]}, array[6]{P[2], P[0], P[6], P[12], P[8], P[2]}, array[5]{P[48], P[55], P[58], P[52], P[48]}, array[5]{P[35], P[23], P[25], P[37], P[35]}, array[5]{P[18], P[8], P[12], P[24], P[18]}, array[5]{P[42], P[36], P[46], P[52], P[42]}};

#declare Edges = array[120]{array[2]{5, 14}, array[2]{40, 44}, array[2]{28, 32}, array[2]{47, 51}, array[2]{36, 42}, array[2]{2, 5}, array[2]{36, 46}, array[2]{6, 12}, array[2]{17, 29}, array[2]{55, 59}, array[2]{26, 27}, array[2]{11, 21}, array[2]{43, 49}, array[2]{3, 5}, array[2]{55, 58}, array[2]{27, 31}, array[2]{46, 50}, array[2]{18, 24}, array[2]{21, 33}, array[2]{2, 3}, array[2]{42, 48}, array[2]{41, 45}, array[2]{39, 49}, array[2]{8, 14}, array[2]{44, 50}, array[2]{40, 50}, array[2]{6, 16}, array[2]{1, 3}, array[2]{43, 53}, array[2]{3, 9}, array[2]{58, 59}, array[2]{23, 35}, array[2]{35, 47}, array[2]{48, 52}, array[2]{33, 45}, array[2]{8, 12}, array[2]{56, 58}, array[2]{22, 24}, array[2]{7, 13}, array[2]{34, 40}, array[2]{37, 43}, array[2]{52, 58}, array[2]{41, 51}, array[2]{20, 21}, array[2]{37, 47}, array[2]{38, 39}, array[2]{7, 11}, array[2]{16, 28}, array[2]{0, 2}, array[2]{14, 18}, array[2]{17, 23}, array[2]{25, 37}, array[2]{50, 56}, array[2]{12, 24}, array[2]{2, 8}, array[2]{26, 38}, array[2]{29, 41}, array[2]{9, 13}, array[2]{32, 33}, array[2]{19, 25}, array[2]{54, 56}, array[2]{6, 10}, array[2]{30, 38}, array[2]{51, 57}, array[2]{15, 19}, array[2]{27, 39}, array[2]{0, 6}, array[2]{47, 53}, array[2]{49, 53}, array[2]{29, 33}, array[2]{20, 32}, array[2]{24, 36}, array[2]{20, 28}, array[2]{23, 25}, array[2]{45, 51}, array[2]{44, 54}, array[2]{7, 17}, array[2]{56, 57}, array[2]{31, 39}, array[2]{19, 31}, array[2]{15, 27}, array[2]{46, 52}, array[2]{18, 30}, array[2]{42, 52}, array[2]{30, 42}, array[2]{34, 46}, array[2]{1, 7}, array[2]{26, 30}, array[2]{10, 20}, array[2]{38, 48}, array[2]{11, 17}, array[2]{28, 40}, array[2]{45, 54}, array[2]{0, 1}, array[2]{48, 55}, array[2]{14, 26}, array[2]{34, 36}, array[2]{35, 37}, array[2]{12, 22}, array[2]{16, 22}, array[2]{32, 44}, array[2]{5, 15}, array[2]{54, 57}, array[2]{53, 59}, array[2]{4, 11}, array[2]{8, 18}, array[2]{10, 16}, array[2]{31, 43}, array[2]{57, 59}, array[2]{13, 25}, array[2]{9, 19}, array[2]{13, 23}, array[2]{0, 4}, array[2]{21, 29}, array[2]{35, 41}, array[2]{1, 4}, array[2]{9, 15}, array[2]{49, 55}, array[2]{4, 10}, array[2]{22, 34}};

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

#declare Factor = 6/sqrt(4*sqrt(5) + 10);

#declare Abs = array[10]{ (0.0)*Factor, (-sqrt(5)/4 + 5/4)*Factor, (sqrt(5)/22 + 15/22)*Factor, (sqrt(5)/2)*Factor, (sqrt(5)/6 + 5/6)*Factor, (5/11 + 4*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (5/6 + sqrt(5)/2)*Factor, (9*sqrt(5)/22 + 25/22)*Factor, (sqrt(5))*Factor, }

#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare Faces = array[60]{array[5]{P[35], P[40], P[48], P[36], P[35]}, array[5]{P[54], P[58], P[44], P[50], P[54]}, array[5]{P[9], P[21], P[28], P[15], P[9]}, array[5]{P[26], P[21], P[28], P[37], P[26]}, array[5]{P[58], P[56], P[60], P[61], P[58]}, array[5]{P[11], P[23], P[32], P[17], P[11]}, array[5]{P[61], P[57], P[55], P[60], P[61]}, array[5]{P[2], P[7], P[14], P[8], P[2]}, array[5]{P[18], P[12], P[24], P[33], P[18]}, array[5]{P[42], P[31], P[33], P[46], P[42]}, array[5]{P[54], P[58], P[61], P[59], P[54]}, array[5]{P[56], P[52], P[46], P[58], P[56]}, array[5]{P[47], P[54], P[50], P[38], P[47]}, array[5]{P[48], P[55], P[51], P[39], P[48]}, array[5]{P[10], P[22], P[13], P[6], P[10]}, array[5]{P[5], P[13], P[6], P[1], P[5]}, array[5]{P[0], P[4], P[6], P[1], P[0]}, array[5]{P[44], P[42], P[46], P[58], P[44]}, array[5]{P[37], P[26], P[25], P[47], P[37]}, array[5]{P[24], P[35], P[36], P[14], P[24]}, array[5]{P[48], P[39], P[34], P[36], P[48]}, array[5]{P[34], P[23], P[32], P[39], P[34]}, array[5]{P[53], P[57], P[61], P[59], P[53]}, array[5]{P[3], P[0], P[1], P[5], P[3]}, array[5]{P[7], P[11], P[23], P[14], P[7]}, array[5]{P[51], P[39], P[32], P[45], P[51]}, array[5]{P[49], P[53], P[57], P[43], P[49]}, array[5]{P[47], P[37], P[49], P[53], P[47]}, array[5]{P[7], P[3], P[0], P[2], P[7]}, array[5]{P[41], P[30], P[32], P[45], P[41]}, array[5]{P[43], P[28], P[30], P[41], P[43]}, array[5]{P[54], P[59], P[53], P[47], P[54]}, array[5]{P[9], P[5], P[13], P[21], P[9]}, array[5]{P[29], P[44], P[42], P[31], P[29]}, array[5]{P[38], P[27], P[25], P[47], P[38]}, array[5]{P[17], P[19], P[30], P[32], P[17]}, array[5]{P[33], P[46], P[52], P[40], P[33]}, array[5]{P[4], P[8], P[12], P[18], P[4]}, array[5]{P[13], P[25], P[26], P[21], P[13]}, array[5]{P[22], P[13], P[25], P[27], P[22]}, array[5]{P[3], P[15], P[19], P[17], P[3]}, array[5]{P[17], P[3], P[7], P[11], P[17]}, array[5]{P[8], P[4], P[0], P[2], P[8]}, array[5]{P[19], P[15], P[28], P[30], P[19]}, array[5]{P[29], P[38], P[50], P[44], P[29]}, array[5]{P[35], P[40], P[33], P[24], P[35]}, array[5]{P[14], P[8], P[12], P[24], P[14]}, array[5]{P[37], P[28], P[43], P[49], P[37]}, array[5]{P[48], P[55], P[60], P[56], P[48]}, array[5]{P[57], P[45], P[51], P[55], P[57]}, array[5]{P[41], P[43], P[57], P[45], P[41]}, array[5]{P[4], P[16], P[10], P[6], P[4]}, array[5]{P[16], P[10], P[22], P[29], P[16]}, array[5]{P[31], P[20], P[16], P[29], P[31]}, array[5]{P[22], P[29], P[38], P[27], P[22]}, array[5]{P[23], P[34], P[36], P[14], P[23]}, array[5]{P[3], P[15], P[9], P[5], P[3]}, array[5]{P[16], P[4], P[18], P[20], P[16]}, array[5]{P[18], P[20], P[31], P[33], P[18]}, array[5]{P[40], P[48], P[56], P[52], P[40]}};

#declare Edges = array[120]{array[2]{33, 46}, array[2]{52, 56}, array[2]{28, 43}, array[2]{56, 60}, array[2]{54, 58}, array[2]{9, 21}, array[2]{42, 44}, array[2]{33, 40}, array[2]{55, 60}, array[2]{32, 39}, array[2]{57, 61}, array[2]{38, 47}, array[2]{14, 36}, array[2]{43, 49}, array[2]{3, 5}, array[2]{17, 19}, array[2]{16, 20}, array[2]{35, 40}, array[2]{3, 15}, array[2]{50, 54}, array[2]{41, 45}, array[2]{39, 48}, array[2]{53, 57}, array[2]{21, 26}, array[2]{8, 14}, array[2]{44, 50}, array[2]{10, 22}, array[2]{48, 56}, array[2]{37, 49}, array[2]{29, 44}, array[2]{7, 14}, array[2]{13, 21}, array[2]{31, 33}, array[2]{14, 23}, array[2]{40, 48}, array[2]{55, 57}, array[2]{38, 50}, array[2]{42, 46}, array[2]{0, 3}, array[2]{29, 31}, array[2]{8, 12}, array[2]{56, 58}, array[2]{4, 18}, array[2]{54, 59}, array[2]{11, 23}, array[2]{34, 39}, array[2]{60, 61}, array[2]{37, 47}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{16, 29}, array[2]{26, 37}, array[2]{18, 20}, array[2]{2, 8}, array[2]{12, 24}, array[2]{30, 41}, array[2]{30, 32}, array[2]{12, 18}, array[2]{4, 8}, array[2]{20, 31}, array[2]{5, 13}, array[2]{15, 28}, array[2]{58, 61}, array[2]{18, 33}, array[2]{6, 10}, array[2]{32, 45}, array[2]{31, 42}, array[2]{17, 32}, array[2]{15, 19}, array[2]{45, 57}, array[2]{23, 32}, array[2]{25, 26}, array[2]{47, 53}, array[2]{19, 30}, array[2]{43, 57}, array[2]{49, 53}, array[2]{3, 7}, array[2]{5, 9}, array[2]{28, 30}, array[2]{45, 51}, array[2]{14, 24}, array[2]{2, 7}, array[2]{40, 52}, array[2]{46, 52}, array[2]{24, 33}, array[2]{25, 47}, array[2]{13, 22}, array[2]{36, 48}, array[2]{47, 54}, array[2]{46, 58}, array[2]{6, 13}, array[2]{4, 6}, array[2]{11, 17}, array[2]{23, 34}, array[2]{27, 38}, array[2]{39, 51}, array[2]{0, 1}, array[2]{44, 58}, array[2]{48, 55}, array[2]{24, 35}, array[2]{21, 28}, array[2]{34, 36}, array[2]{3, 17}, array[2]{4, 16}, array[2]{25, 27}, array[2]{53, 59}, array[2]{22, 29}, array[2]{10, 16}, array[2]{28, 37}, array[2]{13, 25}, array[2]{0, 4}, array[2]{41, 43}, array[2]{22, 27}, array[2]{9, 15}, array[2]{29, 38}, array[2]{59, 61}, array[2]{51, 55}, array[2]{1, 5}, array[2]{35, 36}};

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
