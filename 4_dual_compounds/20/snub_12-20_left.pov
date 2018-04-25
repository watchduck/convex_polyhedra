#include "polyhedra_with_duals.inc"



///////////////////////////////////////// Archimedean

#declare Factor = 1.4305784620308741;

#declare Abs = array[15]{ (0.19289371135235903)*Factor, (0.33092102472984425)*Factor, (0.3748216581145623)*Factor, (0.5677153694669214)*Factor, (0.6430296059140725)*Factor, (0.7283351769571915)*Factor, (0.8475500467890608)*Factor, (1.1031568350717538)*Factor, (1.2495037884630271)*Factor, (1.4152654162559821)*Factor, (1.4540242293380155)*Factor, (1.6469179406903744)*Factor, (1.7461864409858263)*Factor, (1.9778389654202186)*Factor, (2.0970538352520878)*Factor, }

#declare P = array[60]{ <Abs[2],-Abs[1],Abs[14]>, <Abs[2],Abs[1],-Abs[14]>, <-Abs[2],Abs[1],Abs[14]>, <-Abs[2],-Abs[1],-Abs[14]>, <Abs[14],-Abs[2],Abs[1]>, <Abs[14],Abs[2],-Abs[1]>, <-Abs[14],Abs[2],Abs[1]>, <-Abs[14],-Abs[2],-Abs[1]>, <Abs[1],-Abs[14],Abs[2]>, <Abs[1],Abs[14],-Abs[2]>, <-Abs[1],Abs[14],Abs[2]>, <-Abs[1],-Abs[14],-Abs[2]>, <Abs[3],Abs[4],Abs[13]>, <Abs[3],-Abs[4],-Abs[13]>, <-Abs[3],-Abs[4],Abs[13]>, <-Abs[3],Abs[4],-Abs[13]>, <Abs[13],Abs[3],Abs[4]>, <Abs[13],-Abs[3],-Abs[4]>, <-Abs[13],-Abs[3],Abs[4]>, <-Abs[13],Abs[3],-Abs[4]>, <Abs[4],Abs[13],Abs[3]>, <Abs[4],-Abs[13],-Abs[3]>, <-Abs[4],-Abs[13],Abs[3]>, <-Abs[4],Abs[13],-Abs[3]>, <Abs[0],-Abs[8],Abs[12]>, <Abs[0],Abs[8],-Abs[12]>, <-Abs[0],Abs[8],Abs[12]>, <-Abs[0],-Abs[8],-Abs[12]>, <Abs[12],-Abs[0],Abs[8]>, <Abs[12],Abs[0],-Abs[8]>, <-Abs[12],Abs[0],Abs[8]>, <-Abs[12],-Abs[0],-Abs[8]>, <Abs[8],-Abs[12],Abs[0]>, <Abs[8],Abs[12],-Abs[0]>, <-Abs[8],Abs[12],Abs[0]>, <-Abs[8],-Abs[12],-Abs[0]>, <Abs[7],-Abs[6],Abs[11]>, <Abs[7],Abs[6],-Abs[11]>, <-Abs[7],Abs[6],Abs[11]>, <-Abs[7],-Abs[6],-Abs[11]>, <Abs[11],-Abs[7],Abs[6]>, <Abs[11],Abs[7],-Abs[6]>, <-Abs[11],Abs[7],Abs[6]>, <-Abs[11],-Abs[7],-Abs[6]>, <Abs[6],-Abs[11],Abs[7]>, <Abs[6],Abs[11],-Abs[7]>, <-Abs[6],Abs[11],Abs[7]>, <-Abs[6],-Abs[11],-Abs[7]>, <Abs[9],Abs[5],Abs[10]>, <Abs[9],-Abs[5],-Abs[10]>, <-Abs[9],-Abs[5],Abs[10]>, <-Abs[9],Abs[5],-Abs[10]>, <Abs[10],Abs[9],Abs[5]>, <Abs[10],-Abs[9],-Abs[5]>, <-Abs[10],-Abs[9],Abs[5]>, <-Abs[10],Abs[9],-Abs[5]>, <Abs[5],Abs[10],Abs[9]>, <Abs[5],-Abs[10],-Abs[9]>, <-Abs[5],-Abs[10],Abs[9]>, <-Abs[5],Abs[10],-Abs[9]>, }

#declare Faces = array[92]{array[6]{P[0], P[36], P[28], P[48], P[12], P[0]}, array[6]{P[1], P[37], P[29], P[49], P[13], P[1]}, array[6]{P[2], P[38], P[30], P[50], P[14], P[2]}, array[6]{P[3], P[39], P[31], P[51], P[15], P[3]}, array[6]{P[4], P[40], P[32], P[53], P[17], P[4]}, array[6]{P[5], P[41], P[33], P[52], P[16], P[5]}, array[6]{P[6], P[42], P[34], P[55], P[19], P[6]}, array[6]{P[7], P[43], P[35], P[54], P[18], P[7]}, array[6]{P[8], P[44], P[24], P[58], P[22], P[8]}, array[6]{P[9], P[45], P[25], P[59], P[23], P[9]}, array[6]{P[10], P[46], P[26], P[56], P[20], P[10]}, array[6]{P[11], P[47], P[27], P[57], P[21], P[11]}, array[4]{P[0], P[2], P[14], P[0]}, array[4]{P[1], P[3], P[15], P[1]}, array[4]{P[2], P[0], P[12], P[2]}, array[4]{P[3], P[1], P[13], P[3]}, array[4]{P[4], P[5], P[16], P[4]}, array[4]{P[5], P[4], P[17], P[5]}, array[4]{P[6], P[7], P[18], P[6]}, array[4]{P[7], P[6], P[19], P[7]}, array[4]{P[8], P[11], P[21], P[8]}, array[4]{P[9], P[10], P[20], P[9]}, array[4]{P[10], P[9], P[23], P[10]}, array[4]{P[11], P[8], P[22], P[11]}, array[4]{P[12], P[48], P[56], P[12]}, array[4]{P[13], P[49], P[57], P[13]}, array[4]{P[14], P[50], P[58], P[14]}, array[4]{P[15], P[51], P[59], P[15]}, array[4]{P[16], P[52], P[48], P[16]}, array[4]{P[17], P[53], P[49], P[17]}, array[4]{P[18], P[54], P[50], P[18]}, array[4]{P[19], P[55], P[51], P[19]}, array[4]{P[20], P[56], P[52], P[20]}, array[4]{P[21], P[57], P[53], P[21]}, array[4]{P[22], P[58], P[54], P[22]}, array[4]{P[23], P[59], P[55], P[23]}, array[4]{P[24], P[44], P[36], P[24]}, array[4]{P[25], P[45], P[37], P[25]}, array[4]{P[26], P[46], P[38], P[26]}, array[4]{P[27], P[47], P[39], P[27]}, array[4]{P[28], P[36], P[40], P[28]}, array[4]{P[29], P[37], P[41], P[29]}, array[4]{P[30], P[38], P[42], P[30]}, array[4]{P[31], P[39], P[43], P[31]}, array[4]{P[32], P[40], P[44], P[32]}, array[4]{P[33], P[41], P[45], P[33]}, array[4]{P[34], P[42], P[46], P[34]}, array[4]{P[35], P[43], P[47], P[35]}, array[4]{P[36], P[0], P[24], P[36]}, array[4]{P[37], P[1], P[25], P[37]}, array[4]{P[38], P[2], P[26], P[38]}, array[4]{P[39], P[3], P[27], P[39]}, array[4]{P[40], P[4], P[28], P[40]}, array[4]{P[41], P[5], P[29], P[41]}, array[4]{P[42], P[6], P[30], P[42]}, array[4]{P[43], P[7], P[31], P[43]}, array[4]{P[44], P[8], P[32], P[44]}, array[4]{P[45], P[9], P[33], P[45]}, array[4]{P[46], P[10], P[34], P[46]}, array[4]{P[47], P[11], P[35], P[47]}, array[4]{P[48], P[28], P[16], P[48]}, array[4]{P[49], P[29], P[17], P[49]}, array[4]{P[50], P[30], P[18], P[50]}, array[4]{P[51], P[31], P[19], P[51]}, array[4]{P[52], P[33], P[20], P[52]}, array[4]{P[53], P[32], P[21], P[53]}, array[4]{P[54], P[35], P[22], P[54]}, array[4]{P[55], P[34], P[23], P[55]}, array[4]{P[56], P[26], P[12], P[56]}, array[4]{P[57], P[27], P[13], P[57]}, array[4]{P[58], P[24], P[14], P[58]}, array[4]{P[59], P[25], P[15], P[59]}, array[4]{P[24], P[0], P[14], P[24]}, array[4]{P[25], P[1], P[15], P[25]}, array[4]{P[26], P[2], P[12], P[26]}, array[4]{P[27], P[3], P[13], P[27]}, array[4]{P[28], P[4], P[16], P[28]}, array[4]{P[29], P[5], P[17], P[29]}, array[4]{P[30], P[6], P[18], P[30]}, array[4]{P[31], P[7], P[19], P[31]}, array[4]{P[32], P[8], P[21], P[32]}, array[4]{P[33], P[9], P[20], P[33]}, array[4]{P[34], P[10], P[23], P[34]}, array[4]{P[35], P[11], P[22], P[35]}, array[4]{P[36], P[44], P[40], P[36]}, array[4]{P[37], P[45], P[41], P[37]}, array[4]{P[38], P[46], P[42], P[38]}, array[4]{P[39], P[47], P[43], P[39]}, array[4]{P[48], P[52], P[56], P[48]}, array[4]{P[49], P[53], P[57], P[49]}, array[4]{P[50], P[54], P[58], P[50]}, array[4]{P[51], P[55], P[59], P[51]}}

#declare Edges = array[150]{array[2]{30, 42}, array[2]{26, 56}, array[2]{28, 4}, array[2]{21, 53}, array[2]{39, 47}, array[2]{3, 1}, array[2]{26, 12}, array[2]{22, 8}, array[2]{8, 44}, array[2]{9, 20}, array[2]{7, 18}, array[2]{31, 43}, array[2]{6, 30}, array[2]{27, 57}, array[2]{18, 54}, array[2]{13, 57}, array[2]{13, 49}, array[2]{30, 50}, array[2]{23, 10}, array[2]{51, 59}, array[2]{19, 51}, array[2]{6, 42}, array[2]{29, 17}, array[2]{1, 37}, array[2]{7, 19}, array[2]{52, 16}, array[2]{0, 12}, array[2]{0, 36}, array[2]{38, 2}, array[2]{19, 55}, array[2]{48, 52}, array[2]{42, 38}, array[2]{6, 18}, array[2]{15, 1}, array[2]{8, 21}, array[2]{55, 23}, array[2]{43, 47}, array[2]{41, 29}, array[2]{20, 52}, array[2]{57, 49}, array[2]{41, 5}, array[2]{39, 27}, array[2]{55, 51}, array[2]{34, 46}, array[2]{3, 27}, array[2]{35, 47}, array[2]{57, 53}, array[2]{19, 31}, array[2]{46, 26}, array[2]{48, 16}, array[2]{6, 19}, array[2]{56, 48}, array[2]{35, 11}, array[2]{27, 13}, array[2]{31, 51}, array[2]{48, 28}, array[2]{2, 12}, array[2]{25, 37}, array[2]{44, 32}, array[2]{50, 14}, array[2]{36, 40}, array[2]{47, 11}, array[2]{14, 0}, array[2]{22, 11}, array[2]{9, 33}, array[2]{45, 37}, array[2]{25, 1}, array[2]{28, 16}, array[2]{7, 6}, array[2]{38, 26}, array[2]{47, 27}, array[2]{8, 32}, array[2]{14, 24}, array[2]{32, 40}, array[2]{2, 0}, array[2]{55, 59}, array[2]{15, 3}, array[2]{36, 28}, array[2]{25, 45}, array[2]{43, 39}, array[2]{54, 58}, array[2]{29, 5}, array[2]{14, 2}, array[2]{40, 28}, array[2]{18, 50}, array[2]{16, 4}, array[2]{11, 8}, array[2]{49, 17}, array[2]{7, 31}, array[2]{38, 46}, array[2]{34, 23}, array[2]{54, 35}, array[2]{58, 24}, array[2]{17, 4}, array[2]{45, 41}, array[2]{54, 22}, array[2]{30, 38}, array[2]{7, 43}, array[2]{10, 9}, array[2]{2, 26}, array[2]{50, 58}, array[2]{31, 39}, array[2]{3, 13}, array[2]{39, 3}, array[2]{46, 10}, array[2]{21, 32}, array[2]{35, 22}, array[2]{49, 53}, array[2]{58, 14}, array[2]{20, 56}, array[2]{32, 53}, array[2]{20, 33}, array[2]{11, 21}, array[2]{44, 36}, array[2]{37, 29}, array[2]{21, 57}, array[2]{58, 22}, array[2]{16, 5}, array[2]{43, 35}, array[2]{9, 45}, array[2]{59, 25}, array[2]{37, 41}, array[2]{24, 44}, array[2]{33, 52}, array[2]{17, 5}, array[2]{45, 33}, array[2]{51, 15}, array[2]{44, 40}, array[2]{42, 46}, array[2]{59, 23}, array[2]{12, 48}, array[2]{33, 41}, array[2]{59, 15}, array[2]{54, 50}, array[2]{10, 20}, array[2]{42, 34}, array[2]{56, 52}, array[2]{12, 56}, array[2]{24, 36}, array[2]{4, 5}, array[2]{34, 10}, array[2]{15, 25}, array[2]{18, 30}, array[2]{49, 29}, array[2]{23, 9}, array[2]{1, 13}, array[2]{53, 17}, array[2]{55, 34}, array[2]{24, 0}, array[2]{40, 4}}

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
    rotate 90*z
    scale -x
}


///////////////////////////////////////// Catalan

#declare Factor = 1.4305784620308741;

#declare Abs = array[21]{ (0)*Factor, (0.19289371135235903)*Factor, (0.21848337012732122)*Factor, (0.3748216581145623)*Factor, (0.5677153694669214)*Factor, (0.7283351769571915)*Factor, (0.7554672605165956)*Factor, (0.8249575526762758)*Factor, (0.9212288883095505)*Factor, (0.9599877013915838)*Factor, (1.1370661338605041)*Factor, (1.167123436475334)*Factor, (1.2223717049036231)*Factor, (1.2720962825758122)*Factor, (1.527703070858505)*Factor, (1.6469179406903744)*Factor, (1.7461864409858263)*Factor, (1.8654013108176957)*Factor, (1.8884453892836692)*Factor, (1.9778389654202186)*Factor, (2.0970538352520878)*Factor, }

#declare P = array[92]{ <-Abs[1],-Abs[2],-Abs[20]>, <-Abs[1],Abs[2],Abs[20]>, <Abs[1],Abs[2],-Abs[20]>, <Abs[1],-Abs[2],Abs[20]>, <-Abs[20],-Abs[1],-Abs[2]>, <-Abs[20],Abs[1],Abs[2]>, <Abs[20],Abs[1],-Abs[2]>, <Abs[20],-Abs[1],Abs[2]>, <-Abs[2],-Abs[20],-Abs[1]>, <-Abs[2],Abs[20],Abs[1]>, <Abs[2],Abs[20],-Abs[1]>, <Abs[2],-Abs[20],Abs[1]>, <Abs[0],-Abs[6],-Abs[19]>, <Abs[0],-Abs[6],Abs[19]>, <Abs[0],Abs[6],-Abs[19]>, <Abs[0],Abs[6],Abs[19]>, <-Abs[19],Abs[0],-Abs[6]>, <-Abs[19],Abs[0],Abs[6]>, <Abs[19],Abs[0],-Abs[6]>, <Abs[19],Abs[0],Abs[6]>, <-Abs[6],-Abs[19],Abs[0]>, <-Abs[6],Abs[19],Abs[0]>, <Abs[6],-Abs[19],Abs[0]>, <Abs[6],Abs[19],Abs[0]>, <-Abs[11],Abs[0],-Abs[18]>, <-Abs[11],Abs[0],Abs[18]>, <Abs[11],Abs[0],-Abs[18]>, <Abs[11],Abs[0],Abs[18]>, <-Abs[18],-Abs[11],Abs[0]>, <-Abs[18],Abs[11],Abs[0]>, <Abs[18],-Abs[11],Abs[0]>, <Abs[18],Abs[11],Abs[0]>, <Abs[0],-Abs[18],-Abs[11]>, <Abs[0],-Abs[18],Abs[11]>, <Abs[0],Abs[18],-Abs[11]>, <Abs[0],Abs[18],Abs[11]>, <-Abs[4],Abs[7],-Abs[17]>, <-Abs[4],-Abs[7],Abs[17]>, <Abs[4],-Abs[7],-Abs[17]>, <Abs[4],Abs[7],Abs[17]>, <-Abs[17],Abs[4],-Abs[7]>, <-Abs[17],-Abs[4],Abs[7]>, <Abs[17],-Abs[4],-Abs[7]>, <Abs[17],Abs[4],Abs[7]>, <-Abs[7],Abs[17],-Abs[4]>, <-Abs[7],-Abs[17],Abs[4]>, <Abs[7],-Abs[17],-Abs[4]>, <Abs[7],Abs[17],Abs[4]>, <-Abs[3],-Abs[10],-Abs[16]>, <-Abs[3],Abs[10],Abs[16]>, <Abs[3],Abs[10],-Abs[16]>, <Abs[3],-Abs[10],Abs[16]>, <-Abs[16],-Abs[3],-Abs[10]>, <-Abs[16],Abs[3],Abs[10]>, <Abs[16],Abs[3],-Abs[10]>, <Abs[16],-Abs[3],Abs[10]>, <-Abs[10],-Abs[16],-Abs[3]>, <-Abs[10],Abs[16],Abs[3]>, <Abs[10],Abs[16],-Abs[3]>, <Abs[10],-Abs[16],Abs[3]>, <-Abs[8],-Abs[9],-Abs[15]>, <-Abs[8],Abs[9],Abs[15]>, <Abs[8],Abs[9],-Abs[15]>, <Abs[8],-Abs[9],Abs[15]>, <-Abs[15],-Abs[8],-Abs[9]>, <-Abs[15],Abs[8],Abs[9]>, <Abs[15],Abs[8],-Abs[9]>, <Abs[15],-Abs[8],Abs[9]>, <-Abs[9],-Abs[15],-Abs[8]>, <-Abs[9],Abs[15],Abs[8]>, <Abs[9],Abs[15],-Abs[8]>, <Abs[9],-Abs[15],Abs[8]>, <-Abs[5],Abs[13],-Abs[14]>, <-Abs[5],-Abs[13],Abs[14]>, <Abs[5],-Abs[13],-Abs[14]>, <Abs[5],Abs[13],Abs[14]>, <-Abs[14],Abs[5],-Abs[13]>, <-Abs[14],-Abs[5],Abs[13]>, <Abs[14],-Abs[5],-Abs[13]>, <Abs[14],Abs[5],Abs[13]>, <-Abs[13],Abs[14],-Abs[5]>, <-Abs[13],-Abs[14],Abs[5]>, <Abs[13],-Abs[14],-Abs[5]>, <Abs[13],Abs[14],Abs[5]>, <-Abs[12],-Abs[12],-Abs[12]>, <-Abs[12],-Abs[12],Abs[12]>, <-Abs[12],Abs[12],-Abs[12]>, <-Abs[12],Abs[12],Abs[12]>, <Abs[12],-Abs[12],-Abs[12]>, <Abs[12],-Abs[12],Abs[12]>, <Abs[12],Abs[12],-Abs[12]>, <Abs[12],Abs[12],Abs[12]>, }


#declare Edges = array[150]{array[2]{80, 44}, array[2]{5, 29}, array[2]{62, 26}, array[2]{25, 61}, array[2]{43, 31}, array[2]{82, 30}, array[2]{25, 37}, array[2]{16, 52}, array[2]{39, 27}, array[2]{47, 83}, array[2]{28, 41}, array[2]{61, 49}, array[2]{38, 74}, array[2]{28, 64}, array[2]{32, 46}, array[2]{63, 27}, array[2]{90, 66}, array[2]{77, 25}, array[2]{91, 83}, array[2]{1, 15}, array[2]{80, 86}, array[2]{55, 19}, array[2]{31, 6}, array[2]{53, 25}, array[2]{72, 36}, array[2]{63, 89}, array[2]{72, 34}, array[2]{44, 34}, array[2]{69, 35}, array[2]{73, 37}, array[2]{7, 6}, array[2]{70, 90}, array[2]{88, 82}, array[2]{52, 24}, array[2]{29, 40}, array[2]{44, 21}, array[2]{76, 86}, array[2]{12, 38}, array[2]{19, 7}, array[2]{14, 2}, array[2]{62, 90}, array[2]{88, 78}, array[2]{52, 64}, array[2]{23, 58}, array[2]{14, 50}, array[2]{75, 91}, array[2]{34, 70}, array[2]{51, 63}, array[2]{18, 6}, array[2]{10, 23}, array[2]{4, 28}, array[2]{85, 73}, array[2]{24, 36}, array[2]{49, 15}, array[2]{13, 3}, array[2]{26, 78}, array[2]{50, 62}, array[2]{48, 32}, array[2]{71, 59}, array[2]{36, 14}, array[2]{27, 79}, array[2]{79, 43}, array[2]{91, 79}, array[2]{2, 26}, array[2]{1, 3}, array[2]{0, 2}, array[2]{81, 45}, array[2]{73, 33}, array[2]{64, 84}, array[2]{45, 20}, array[2]{39, 75}, array[2]{35, 47}, array[2]{45, 33}, array[2]{67, 30}, array[2]{25, 1}, array[2]{8, 32}, array[2]{65, 87}, array[2]{24, 0}, array[2]{76, 24}, array[2]{74, 88}, array[2]{30, 7}, array[2]{46, 82}, array[2]{70, 58}, array[2]{59, 30}, array[2]{87, 69}, array[2]{3, 27}, array[2]{41, 77}, array[2]{37, 13}, array[2]{29, 65}, array[2]{16, 40}, array[2]{40, 76}, array[2]{5, 17}, array[2]{23, 47}, array[2]{33, 71}, array[2]{4, 5}, array[2]{17, 41}, array[2]{26, 54}, array[2]{43, 19}, array[2]{78, 42}, array[2]{24, 60}, array[2]{77, 85}, array[2]{87, 61}, array[2]{49, 35}, array[2]{27, 55}, array[2]{13, 51}, array[2]{29, 80}, array[2]{67, 55}, array[2]{33, 11}, array[2]{9, 10}, array[2]{0, 12}, array[2]{89, 67}, array[2]{57, 69}, array[2]{84, 68}, array[2]{9, 35}, array[2]{66, 54}, array[2]{53, 65}, array[2]{86, 72}, array[2]{84, 60}, array[2]{35, 75}, array[2]{56, 68}, array[2]{20, 8}, array[2]{60, 48}, array[2]{17, 53}, array[2]{22, 46}, array[2]{66, 31}, array[2]{42, 30}, array[2]{57, 21}, array[2]{48, 12}, array[2]{71, 89}, array[2]{34, 10}, array[2]{34, 50}, array[2]{28, 56}, array[2]{54, 18}, array[2]{68, 32}, array[2]{29, 57}, array[2]{21, 9}, array[2]{11, 22}, array[2]{58, 31}, array[2]{28, 81}, array[2]{83, 31}, array[2]{4, 16}, array[2]{38, 26}, array[2]{22, 59}, array[2]{33, 51}, array[2]{56, 20}, array[2]{15, 39}, array[2]{8, 11}, array[2]{81, 85}, array[2]{32, 74}, array[2]{42, 18}};

#declare Faces = array[60]{
    array[6]{P[24], P[36], P[14], P[2], P[0], P[24]},
    array[6]{P[24], P[76], P[86], P[72], P[36], P[24]},
    array[6]{P[24], P[52], P[16], P[40], P[76], P[24]},
    array[6]{P[24], P[60], P[84], P[64], P[52], P[24]},
    array[6]{P[24], P[0], P[12], P[48], P[60], P[24]},
    array[6]{P[25], P[37], P[13], P[3], P[1], P[25]},
    array[6]{P[25], P[77], P[85], P[73], P[37], P[25]},
    array[6]{P[25], P[53], P[17], P[41], P[77], P[25]},
    array[6]{P[25], P[61], P[87], P[65], P[53], P[25]},
    array[6]{P[25], P[1], P[15], P[49], P[61], P[25]},
    array[6]{P[26], P[38], P[12], P[0], P[2], P[26]},
    array[6]{P[26], P[78], P[88], P[74], P[38], P[26]},
    array[6]{P[26], P[54], P[18], P[42], P[78], P[26]},
    array[6]{P[26], P[62], P[90], P[66], P[54], P[26]},
    array[6]{P[26], P[2], P[14], P[50], P[62], P[26]},
    array[6]{P[27], P[39], P[15], P[1], P[3], P[27]},
    array[6]{P[27], P[79], P[91], P[75], P[39], P[27]},
    array[6]{P[27], P[55], P[19], P[43], P[79], P[27]},
    array[6]{P[27], P[63], P[89], P[67], P[55], P[27]},
    array[6]{P[27], P[3], P[13], P[51], P[63], P[27]},
    array[6]{P[28], P[41], P[17], P[5], P[4], P[28]},
    array[6]{P[28], P[81], P[85], P[77], P[41], P[28]},
    array[6]{P[28], P[56], P[20], P[45], P[81], P[28]},
    array[6]{P[28], P[64], P[84], P[68], P[56], P[28]},
    array[6]{P[28], P[4], P[16], P[52], P[64], P[28]},
    array[6]{P[29], P[40], P[16], P[4], P[5], P[29]},
    array[6]{P[29], P[80], P[86], P[76], P[40], P[29]},
    array[6]{P[29], P[57], P[21], P[44], P[80], P[29]},
    array[6]{P[29], P[65], P[87], P[69], P[57], P[29]},
    array[6]{P[29], P[5], P[17], P[53], P[65], P[29]},
    array[6]{P[30], P[42], P[18], P[6], P[7], P[30]},
    array[6]{P[30], P[82], P[88], P[78], P[42], P[30]},
    array[6]{P[30], P[59], P[22], P[46], P[82], P[30]},
    array[6]{P[30], P[67], P[89], P[71], P[59], P[30]},
    array[6]{P[30], P[7], P[19], P[55], P[67], P[30]},
    array[6]{P[31], P[43], P[19], P[7], P[6], P[31]},
    array[6]{P[31], P[83], P[91], P[79], P[43], P[31]},
    array[6]{P[31], P[58], P[23], P[47], P[83], P[31]},
    array[6]{P[31], P[66], P[90], P[70], P[58], P[31]},
    array[6]{P[31], P[6], P[18], P[54], P[66], P[31]},
    array[6]{P[32], P[46], P[22], P[11], P[8], P[32]},
    array[6]{P[32], P[74], P[88], P[82], P[46], P[32]},
    array[6]{P[32], P[48], P[12], P[38], P[74], P[32]},
    array[6]{P[32], P[68], P[84], P[60], P[48], P[32]},
    array[6]{P[32], P[8], P[20], P[56], P[68], P[32]},
    array[6]{P[33], P[45], P[20], P[8], P[11], P[33]},
    array[6]{P[33], P[73], P[85], P[81], P[45], P[33]},
    array[6]{P[33], P[51], P[13], P[37], P[73], P[33]},
    array[6]{P[33], P[71], P[89], P[63], P[51], P[33]},
    array[6]{P[33], P[11], P[22], P[59], P[71], P[33]},
    array[6]{P[34], P[44], P[21], P[9], P[10], P[34]},
    array[6]{P[34], P[72], P[86], P[80], P[44], P[34]},
    array[6]{P[34], P[50], P[14], P[36], P[72], P[34]},
    array[6]{P[34], P[70], P[90], P[62], P[50], P[34]},
    array[6]{P[34], P[10], P[23], P[58], P[70], P[34]},
    array[6]{P[35], P[47], P[23], P[10], P[9], P[35]},
    array[6]{P[35], P[75], P[91], P[83], P[47], P[35]},
    array[6]{P[35], P[49], P[15], P[39], P[75], P[35]},
    array[6]{P[35], P[69], P[87], P[61], P[49], P[35]},
    array[6]{P[35], P[9], P[21], P[57], P[69], P[35]}
}

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
