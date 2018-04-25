#include "small_in_great_rhombi.inc"
#include "RotMatFromVectorAndAngle.inc"


#declare Factor = 1;

#declare Scale = .56;
#declare RadVert = .95 * RadVert / Scale;
#declare RadEdge = .95 * RadEdge / Scale;


union{



//////////////////////////////////////////////////////////////////// small

#declare Abs = array[7]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, pow(1/2 + sqrt(5)/2, 2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, pow(1/2 + sqrt(5)/2, 3)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],-Abs[1]>, <-Abs[6],-Abs[1],Abs[1]>, <-Abs[6],Abs[1],-Abs[1]>, <-Abs[6],Abs[1],Abs[1]>, <-Abs[5],-Abs[3],Abs[0]>, <-Abs[5],Abs[3],Abs[0]>, <-Abs[4],-Abs[2],-Abs[3]>, <-Abs[4],-Abs[2],Abs[3]>, <-Abs[4],Abs[2],-Abs[3]>, <-Abs[4],Abs[2],Abs[3]>, <-Abs[3],-Abs[4],-Abs[2]>, <-Abs[3],-Abs[4],Abs[2]>, <-Abs[3],Abs[0],-Abs[5]>, <-Abs[3],Abs[0],Abs[5]>, <-Abs[3],Abs[4],-Abs[2]>, <-Abs[3],Abs[4],Abs[2]>, <-Abs[2],-Abs[3],-Abs[4]>, <-Abs[2],-Abs[3],Abs[4]>, <-Abs[2],Abs[3],-Abs[4]>, <-Abs[2],Abs[3],Abs[4]>, <-Abs[1],-Abs[6],-Abs[1]>, <-Abs[1],-Abs[6],Abs[1]>, <-Abs[1],-Abs[1],-Abs[6]>, <-Abs[1],-Abs[1],Abs[6]>, <-Abs[1],Abs[1],-Abs[6]>, <-Abs[1],Abs[1],Abs[6]>, <-Abs[1],Abs[6],-Abs[1]>, <-Abs[1],Abs[6],Abs[1]>, <Abs[0],-Abs[5],-Abs[3]>, <Abs[0],-Abs[5],Abs[3]>, <Abs[0],Abs[5],-Abs[3]>, <Abs[0],Abs[5],Abs[3]>, <Abs[1],-Abs[6],-Abs[1]>, <Abs[1],-Abs[6],Abs[1]>, <Abs[1],-Abs[1],-Abs[6]>, <Abs[1],-Abs[1],Abs[6]>, <Abs[1],Abs[1],-Abs[6]>, <Abs[1],Abs[1],Abs[6]>, <Abs[1],Abs[6],-Abs[1]>, <Abs[1],Abs[6],Abs[1]>, <Abs[2],-Abs[3],-Abs[4]>, <Abs[2],-Abs[3],Abs[4]>, <Abs[2],Abs[3],-Abs[4]>, <Abs[2],Abs[3],Abs[4]>, <Abs[3],-Abs[4],-Abs[2]>, <Abs[3],-Abs[4],Abs[2]>, <Abs[3],Abs[0],-Abs[5]>, <Abs[3],Abs[0],Abs[5]>, <Abs[3],Abs[4],-Abs[2]>, <Abs[3],Abs[4],Abs[2]>, <Abs[4],-Abs[2],-Abs[3]>, <Abs[4],-Abs[2],Abs[3]>, <Abs[4],Abs[2],-Abs[3]>, <Abs[4],Abs[2],Abs[3]>, <Abs[5],-Abs[3],Abs[0]>, <Abs[5],Abs[3],Abs[0]>, <Abs[6],-Abs[1],-Abs[1]>, <Abs[6],-Abs[1],Abs[1]>, <Abs[6],Abs[1],-Abs[1]>, <Abs[6],Abs[1],Abs[1]>, }

#declare Edges = array[120]{array[2]{5, 14}, array[2]{40, 44}, array[2]{28, 32}, array[2]{47, 51}, array[2]{36, 42}, array[2]{2, 5}, array[2]{36, 46}, array[2]{6, 12}, array[2]{17, 29}, array[2]{55, 59}, array[2]{26, 27}, array[2]{11, 21}, array[2]{43, 49}, array[2]{3, 5}, array[2]{55, 58}, array[2]{27, 31}, array[2]{46, 50}, array[2]{18, 24}, array[2]{21, 33}, array[2]{2, 3}, array[2]{42, 48}, array[2]{41, 45}, array[2]{39, 49}, array[2]{8, 14}, array[2]{44, 50}, array[2]{40, 50}, array[2]{6, 16}, array[2]{1, 3}, array[2]{43, 53}, array[2]{3, 9}, array[2]{58, 59}, array[2]{23, 35}, array[2]{35, 47}, array[2]{48, 52}, array[2]{33, 45}, array[2]{8, 12}, array[2]{56, 58}, array[2]{22, 24}, array[2]{7, 13}, array[2]{34, 40}, array[2]{37, 43}, array[2]{52, 58}, array[2]{41, 51}, array[2]{20, 21}, array[2]{37, 47}, array[2]{38, 39}, array[2]{7, 11}, array[2]{16, 28}, array[2]{0, 2}, array[2]{14, 18}, array[2]{17, 23}, array[2]{25, 37}, array[2]{50, 56}, array[2]{12, 24}, array[2]{2, 8}, array[2]{26, 38}, array[2]{29, 41}, array[2]{9, 13}, array[2]{32, 33}, array[2]{19, 25}, array[2]{54, 56}, array[2]{6, 10}, array[2]{30, 38}, array[2]{51, 57}, array[2]{15, 19}, array[2]{27, 39}, array[2]{0, 6}, array[2]{47, 53}, array[2]{49, 53}, array[2]{29, 33}, array[2]{20, 32}, array[2]{24, 36}, array[2]{20, 28}, array[2]{23, 25}, array[2]{45, 51}, array[2]{44, 54}, array[2]{7, 17}, array[2]{56, 57}, array[2]{31, 39}, array[2]{19, 31}, array[2]{15, 27}, array[2]{46, 52}, array[2]{18, 30}, array[2]{42, 52}, array[2]{30, 42}, array[2]{34, 46}, array[2]{1, 7}, array[2]{26, 30}, array[2]{10, 20}, array[2]{38, 48}, array[2]{11, 17}, array[2]{28, 40}, array[2]{45, 54}, array[2]{0, 1}, array[2]{48, 55}, array[2]{14, 26}, array[2]{34, 36}, array[2]{35, 37}, array[2]{12, 22}, array[2]{16, 22}, array[2]{32, 44}, array[2]{5, 15}, array[2]{54, 57}, array[2]{53, 59}, array[2]{4, 11}, array[2]{8, 18}, array[2]{10, 16}, array[2]{31, 43}, array[2]{57, 59}, array[2]{13, 25}, array[2]{9, 19}, array[2]{13, 23}, array[2]{0, 4}, array[2]{21, 29}, array[2]{35, 41}, array[2]{1, 4}, array[2]{9, 15}, array[2]{49, 55}, array[2]{4, 10}, array[2]{22, 34}};

#declare Faces = array[62]{array[4]{P[13], P[25], P[23], P[13]}, array[4]{P[5], P[3], P[2], P[5]}, array[4]{P[37], P[35], P[47], P[37]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[34], P[36], P[46], P[34]}, array[4]{P[48], P[52], P[42], P[48]}, array[4]{P[31], P[39], P[27], P[31]}, array[4]{P[49], P[53], P[43], P[49]}, array[4]{P[15], P[19], P[9], P[15]}, array[4]{P[59], P[58], P[55], P[59]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[14], P[18], P[8], P[14]}, array[4]{P[54], P[57], P[56], P[54]}, array[4]{P[38], P[30], P[26], P[38]}, array[4]{P[29], P[21], P[33], P[29]}, array[4]{P[44], P[50], P[40], P[44]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[32], P[28], P[20], P[32]}, array[4]{P[41], P[45], P[51], P[41]}, array[5]{P[31], P[43], P[49], P[39], P[31]}, array[5]{P[32], P[28], P[40], P[44], P[32]}, array[5]{P[13], P[23], P[17], P[7], P[13]}, array[5]{P[26], P[38], P[39], P[27], P[26]}, array[6]{P[34], P[22], P[16], P[28], P[40], P[34]}, array[5]{P[53], P[49], P[55], P[59], P[53]}, array[5]{P[57], P[56], P[58], P[59], P[57]}, array[5]{P[16], P[6], P[12], P[22], P[16]}, array[6]{P[9], P[3], P[1], P[7], P[13], P[9]}, array[5]{P[5], P[15], P[9], P[3], P[5]}, array[5]{P[45], P[54], P[57], P[51], P[45]}, array[5]{P[20], P[10], P[16], P[28], P[20]}, array[6]{P[37], P[25], P[19], P[31], P[43], P[37]}, array[6]{P[32], P[33], P[45], P[54], P[44], P[32]}, array[5]{P[54], P[44], P[50], P[56], P[54]}, array[6]{P[38], P[48], P[55], P[49], P[39], P[38]}, array[5]{P[30], P[38], P[48], P[42], P[30]}, array[6]{P[27], P[15], P[5], P[14], P[26], P[27]}, array[6]{P[47], P[51], P[57], P[59], P[53], P[47]}, array[6]{P[50], P[46], P[52], P[58], P[56], P[50]}, array[5]{P[22], P[34], P[36], P[24], P[22]}, array[6]{P[30], P[18], P[24], P[36], P[42], P[30]}, array[5]{P[33], P[29], P[41], P[45], P[33]}, array[5]{P[20], P[32], P[33], P[21], P[20]}, array[5]{P[27], P[15], P[19], P[31], P[27]}, array[5]{P[4], P[10], P[6], P[0], P[4]}, array[5]{P[35], P[47], P[51], P[41], P[35]}, array[6]{P[35], P[23], P[17], P[29], P[41], P[35]}, array[5]{P[21], P[11], P[17], P[29], P[21]}, array[5]{P[9], P[19], P[25], P[13], P[9]}, array[5]{P[4], P[1], P[7], P[11], P[4]}, array[5]{P[14], P[26], P[30], P[18], P[14]}, array[5]{P[8], P[14], P[5], P[2], P[8]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[6]{P[10], P[20], P[21], P[11], P[4], P[10]}, array[5]{P[43], P[53], P[47], P[37], P[43]}, array[5]{P[34], P[40], P[50], P[46], P[34]}, array[6]{P[2], P[0], P[6], P[12], P[8], P[2]}, array[5]{P[48], P[55], P[58], P[52], P[48]}, array[5]{P[35], P[23], P[25], P[37], P[35]}, array[5]{P[18], P[8], P[12], P[24], P[18]}, array[5]{P[42], P[36], P[46], P[52], P[42]}};

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadVert*1.6 }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge*1.6 }
    #end

    pigment{ color SmallDark }
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
    pigment{ color FaceColor }
}

//////////////////////////////////////////////////////////////////// great

#declare GreatFactor = (1/2 + sqrt(5)/2) * Factor;

#declare Abs = array[12]{ (1/(1/2 + sqrt(5)/2))*GreatFactor, (2/(1/2 + sqrt(5)/2))*GreatFactor, (1/2 + sqrt(5)/2)*GreatFactor, (2)*GreatFactor, (sqrt(5))*GreatFactor, pow(1/2 + sqrt(5)/2, 2)*GreatFactor, (3)*GreatFactor, (1 + sqrt(5))*GreatFactor, (sqrt(5)/2 + 5/2)*GreatFactor, (1/2 + 3*sqrt(5)/2)*GreatFactor, (2 + sqrt(5))*GreatFactor, (sqrt(5)/2 + 7/2)*GreatFactor, }

#declare P = array[120]{ <-Abs[11],-Abs[0],-Abs[0]>, <-Abs[11],-Abs[0],Abs[0]>, <-Abs[11],Abs[0],-Abs[0]>, <-Abs[11],Abs[0],Abs[0]>, <-Abs[10],-Abs[2],-Abs[1]>, <-Abs[10],-Abs[2],Abs[1]>, <-Abs[10],Abs[2],-Abs[1]>, <-Abs[10],Abs[2],Abs[1]>, <-Abs[9],-Abs[5],-Abs[0]>, <-Abs[9],-Abs[5],Abs[0]>, <-Abs[9],Abs[5],-Abs[0]>, <-Abs[9],Abs[5],Abs[0]>, <-Abs[8],-Abs[3],-Abs[4]>, <-Abs[8],-Abs[3],Abs[4]>, <-Abs[8],Abs[3],-Abs[4]>, <-Abs[8],Abs[3],Abs[4]>, <-Abs[7],-Abs[6],-Abs[2]>, <-Abs[7],-Abs[6],Abs[2]>, <-Abs[7],Abs[6],-Abs[2]>, <-Abs[7],Abs[6],Abs[2]>, <-Abs[6],-Abs[2],-Abs[7]>, <-Abs[6],-Abs[2],Abs[7]>, <-Abs[6],Abs[2],-Abs[7]>, <-Abs[6],Abs[2],Abs[7]>, <-Abs[5],-Abs[0],-Abs[9]>, <-Abs[5],-Abs[0],Abs[9]>, <-Abs[5],Abs[0],-Abs[9]>, <-Abs[5],Abs[0],Abs[9]>, <-Abs[4],-Abs[8],-Abs[3]>, <-Abs[4],-Abs[8],Abs[3]>, <-Abs[4],Abs[8],-Abs[3]>, <-Abs[4],Abs[8],Abs[3]>, <-Abs[3],-Abs[4],-Abs[8]>, <-Abs[3],-Abs[4],Abs[8]>, <-Abs[3],Abs[4],-Abs[8]>, <-Abs[3],Abs[4],Abs[8]>, <-Abs[2],-Abs[7],-Abs[6]>, <-Abs[2],-Abs[7],Abs[6]>, <-Abs[2],-Abs[1],-Abs[10]>, <-Abs[2],-Abs[1],Abs[10]>, <-Abs[2],Abs[1],-Abs[10]>, <-Abs[2],Abs[1],Abs[10]>, <-Abs[2],Abs[7],-Abs[6]>, <-Abs[2],Abs[7],Abs[6]>, <-Abs[1],-Abs[10],-Abs[2]>, <-Abs[1],-Abs[10],Abs[2]>, <-Abs[1],Abs[10],-Abs[2]>, <-Abs[1],Abs[10],Abs[2]>, <-Abs[0],-Abs[11],-Abs[0]>, <-Abs[0],-Abs[11],Abs[0]>, <-Abs[0],-Abs[9],-Abs[5]>, <-Abs[0],-Abs[9],Abs[5]>, <-Abs[0],-Abs[0],-Abs[11]>, <-Abs[0],-Abs[0],Abs[11]>, <-Abs[0],Abs[0],-Abs[11]>, <-Abs[0],Abs[0],Abs[11]>, <-Abs[0],Abs[9],-Abs[5]>, <-Abs[0],Abs[9],Abs[5]>, <-Abs[0],Abs[11],-Abs[0]>, <-Abs[0],Abs[11],Abs[0]>, <Abs[0],-Abs[11],-Abs[0]>, <Abs[0],-Abs[11],Abs[0]>, <Abs[0],-Abs[9],-Abs[5]>, <Abs[0],-Abs[9],Abs[5]>, <Abs[0],-Abs[0],-Abs[11]>, <Abs[0],-Abs[0],Abs[11]>, <Abs[0],Abs[0],-Abs[11]>, <Abs[0],Abs[0],Abs[11]>, <Abs[0],Abs[9],-Abs[5]>, <Abs[0],Abs[9],Abs[5]>, <Abs[0],Abs[11],-Abs[0]>, <Abs[0],Abs[11],Abs[0]>, <Abs[1],-Abs[10],-Abs[2]>, <Abs[1],-Abs[10],Abs[2]>, <Abs[1],Abs[10],-Abs[2]>, <Abs[1],Abs[10],Abs[2]>, <Abs[2],-Abs[7],-Abs[6]>, <Abs[2],-Abs[7],Abs[6]>, <Abs[2],-Abs[1],-Abs[10]>, <Abs[2],-Abs[1],Abs[10]>, <Abs[2],Abs[1],-Abs[10]>, <Abs[2],Abs[1],Abs[10]>, <Abs[2],Abs[7],-Abs[6]>, <Abs[2],Abs[7],Abs[6]>, <Abs[3],-Abs[4],-Abs[8]>, <Abs[3],-Abs[4],Abs[8]>, <Abs[3],Abs[4],-Abs[8]>, <Abs[3],Abs[4],Abs[8]>, <Abs[4],-Abs[8],-Abs[3]>, <Abs[4],-Abs[8],Abs[3]>, <Abs[4],Abs[8],-Abs[3]>, <Abs[4],Abs[8],Abs[3]>, <Abs[5],-Abs[0],-Abs[9]>, <Abs[5],-Abs[0],Abs[9]>, <Abs[5],Abs[0],-Abs[9]>, <Abs[5],Abs[0],Abs[9]>, <Abs[6],-Abs[2],-Abs[7]>, <Abs[6],-Abs[2],Abs[7]>, <Abs[6],Abs[2],-Abs[7]>, <Abs[6],Abs[2],Abs[7]>, <Abs[7],-Abs[6],-Abs[2]>, <Abs[7],-Abs[6],Abs[2]>, <Abs[7],Abs[6],-Abs[2]>, <Abs[7],Abs[6],Abs[2]>, <Abs[8],-Abs[3],-Abs[4]>, <Abs[8],-Abs[3],Abs[4]>, <Abs[8],Abs[3],-Abs[4]>, <Abs[8],Abs[3],Abs[4]>, <Abs[9],-Abs[5],-Abs[0]>, <Abs[9],-Abs[5],Abs[0]>, <Abs[9],Abs[5],-Abs[0]>, <Abs[9],Abs[5],Abs[0]>, <Abs[10],-Abs[2],-Abs[1]>, <Abs[10],-Abs[2],Abs[1]>, <Abs[10],Abs[2],-Abs[1]>, <Abs[10],Abs[2],Abs[1]>, <Abs[11],-Abs[0],-Abs[0]>, <Abs[11],-Abs[0],Abs[0]>, <Abs[11],Abs[0],-Abs[0]>, <Abs[11],Abs[0],Abs[0]>, }

#declare Edges = array[180]{array[2]{69, 75}, array[2]{11, 19}, array[2]{39, 53}, array[2]{102, 110}, array[2]{56, 68}, array[2]{92, 94}, array[2]{69, 83}, array[2]{38, 52}, array[2]{104, 112}, array[2]{89, 101}, array[2]{82, 86}, array[2]{76, 84}, array[2]{21, 33}, array[2]{111, 115}, array[2]{44, 50}, array[2]{8, 9}, array[2]{83, 87}, array[2]{99, 107}, array[2]{13, 21}, array[2]{91, 103}, array[2]{23, 35}, array[2]{68, 82}, array[2]{88, 100}, array[2]{10, 18}, array[2]{81, 95}, array[2]{34, 40}, array[2]{60, 61}, array[2]{63, 73}, array[2]{14, 18}, array[2]{8, 16}, array[2]{68, 74}, array[2]{48, 60}, array[2]{28, 44}, array[2]{4, 8}, array[2]{27, 41}, array[2]{34, 42}, array[2]{5, 13}, array[2]{116, 117}, array[2]{72, 88}, array[2]{49, 61}, array[2]{100, 104}, array[2]{6, 10}, array[2]{33, 39}, array[2]{101, 109}, array[2]{86, 98}, array[2]{62, 76}, array[2]{23, 27}, array[2]{118, 119}, array[2]{45, 49}, array[2]{29, 45}, array[2]{64, 66}, array[2]{57, 69}, array[2]{3, 7}, array[2]{43, 57}, array[2]{97, 105}, array[2]{114, 118}, array[2]{62, 72}, array[2]{19, 31}, array[2]{55, 67}, array[2]{103, 111}, array[2]{80, 86}, array[2]{30, 42}, array[2]{93, 95}, array[2]{115, 119}, array[2]{46, 58}, array[2]{84, 96}, array[2]{87, 99}, array[2]{76, 88}, array[2]{117, 119}, array[2]{103, 107}, array[2]{61, 73}, array[2]{116, 118}, array[2]{81, 87}, array[2]{65, 67}, array[2]{12, 20}, array[2]{25, 27}, array[2]{77, 85}, array[2]{95, 99}, array[2]{82, 90}, array[2]{31, 43}, array[2]{6, 14}, array[2]{35, 41}, array[2]{59, 71}, array[2]{24, 26}, array[2]{22, 34}, array[2]{35, 43}, array[2]{40, 54}, array[2]{108, 112}, array[2]{26, 40}, array[2]{78, 92}, array[2]{47, 59}, array[2]{110, 114}, array[2]{101, 105}, array[2]{70, 71}, array[2]{17, 29}, array[2]{46, 56}, array[2]{32, 36}, array[2]{2, 6}, array[2]{106, 114}, array[2]{85, 97}, array[2]{12, 16}, array[2]{2, 3}, array[2]{92, 96}, array[2]{78, 84}, array[2]{31, 47}, array[2]{100, 108}, array[2]{66, 80}, array[2]{94, 98}, array[2]{1, 3}, array[2]{58, 59}, array[2]{83, 91}, array[2]{58, 70}, array[2]{4, 12}, array[2]{16, 28}, array[2]{0, 2}, array[2]{7, 11}, array[2]{80, 94}, array[2]{54, 66}, array[2]{93, 97}, array[2]{51, 63}, array[2]{13, 17}, array[2]{30, 46}, array[2]{48, 49}, array[2]{112, 116}, array[2]{22, 26}, array[2]{79, 85}, array[2]{53, 65}, array[2]{53, 55}, array[2]{107, 115}, array[2]{25, 39}, array[2]{20, 24}, array[2]{24, 38}, array[2]{108, 109}, array[2]{15, 19}, array[2]{36, 50}, array[2]{70, 74}, array[2]{41, 55}, array[2]{32, 38}, array[2]{5, 9}, array[2]{102, 106}, array[2]{64, 78}, array[2]{20, 32}, array[2]{45, 51}, array[2]{42, 56}, array[2]{9, 17}, array[2]{29, 37}, array[2]{98, 106}, array[2]{74, 90}, array[2]{18, 30}, array[2]{52, 54}, array[2]{113, 117}, array[2]{14, 22}, array[2]{33, 37}, array[2]{105, 113}, array[2]{110, 111}, array[2]{21, 25}, array[2]{52, 64}, array[2]{60, 72}, array[2]{96, 104}, array[2]{109, 113}, array[2]{67, 81}, array[2]{73, 89}, array[2]{71, 75}, array[2]{0, 1}, array[2]{47, 57}, array[2]{44, 48}, array[2]{79, 93}, array[2]{90, 102}, array[2]{63, 77}, array[2]{37, 51}, array[2]{77, 89}, array[2]{15, 23}, array[2]{65, 79}, array[2]{0, 4}, array[2]{7, 15}, array[2]{50, 62}, array[2]{28, 36}, array[2]{75, 91}, array[2]{10, 11}, array[2]{1, 5}};

#declare Faces = array[62]{array[5]{P[10], P[18], P[14], P[6], P[10]}, array[11]{P[105], P[97], P[93], P[95], P[99], P[107], P[115], P[119], P[117], P[113], P[105]}, array[11]{P[16], P[8], P[9], P[17], P[29], P[45], P[49], P[48], P[44], P[28], P[16]}, array[11]{P[73], P[89], P[101], P[109], P[108], P[100], P[88], P[72], P[60], P[61], P[73]}, array[11]{P[102], P[110], P[111], P[103], P[91], P[75], P[71], P[70], P[74], P[90], P[102]}, array[5]{P[97], P[93], P[79], P[85], P[97]}, array[7]{P[44], P[50], P[62], P[72], P[60], P[48], P[44]}, array[7]{P[30], P[18], P[14], P[22], P[34], P[42], P[30]}, array[11]{P[84], P[76], P[62], P[50], P[36], P[32], P[38], P[52], P[64], P[78], P[84]}, array[7]{P[52], P[38], P[24], P[26], P[40], P[54], P[52]}, array[11]{P[34], P[40], P[54], P[66], P[80], P[86], P[82], P[68], P[56], P[42], P[34]}, array[11]{P[4], P[0], P[2], P[6], P[14], P[22], P[26], P[24], P[20], P[12], P[4]}, array[11]{P[37], P[51], P[63], P[77], P[85], P[79], P[65], P[53], P[39], P[33], P[37]}, array[11]{P[112], P[104], P[96], P[92], P[94], P[98], P[106], P[114], P[118], P[116], P[112]}, array[5]{P[67], P[65], P[53], P[55], P[67]}, array[5]{P[8], P[4], P[12], P[16], P[8]}, array[7]{P[55], P[41], P[27], P[25], P[39], P[53], P[55]}, array[7]{P[92], P[78], P[64], P[66], P[80], P[94], P[92]}, array[7]{P[68], P[56], P[46], P[58], P[70], P[74], P[68]}, array[7]{P[17], P[13], P[21], P[33], P[37], P[29], P[17]}, array[7]{P[47], P[59], P[71], P[75], P[69], P[57], P[47]}, array[11]{P[5], P[13], P[21], P[25], P[27], P[23], P[15], P[7], P[3], P[1], P[5]}, array[7]{P[36], P[32], P[20], P[12], P[16], P[28], P[36]}, array[11]{P[43], P[57], P[69], P[83], P[87], P[81], P[67], P[55], P[41], P[35], P[43]}, array[5]{P[110], P[114], P[106], P[102], P[110]}, array[5]{P[64], P[52], P[54], P[66], P[64]}, array[7]{P[101], P[89], P[77], P[85], P[97], P[105], P[101]}, array[7]{P[113], P[109], P[108], P[112], P[116], P[117], P[113]}, array[7]{P[1], P[0], P[4], P[8], P[9], P[5], P[1]}, array[7]{P[76], P[88], P[100], P[104], P[96], P[84], P[76]}, array[5]{P[77], P[63], P[73], P[89], P[77]}, array[5]{P[28], P[36], P[50], P[44], P[28]}, array[7]{P[63], P[51], P[45], P[49], P[61], P[73], P[63]}, array[7]{P[118], P[114], P[110], P[111], P[115], P[119], P[118]}, array[5]{P[105], P[101], P[109], P[113], P[105]}, array[5]{P[9], P[5], P[13], P[17], P[9]}, array[5]{P[48], P[60], P[61], P[49], P[48]}, array[7]{P[98], P[86], P[82], P[90], P[102], P[106], P[98]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[82], P[68], P[74], P[90], P[82]}, array[11]{P[11], P[19], P[31], P[47], P[59], P[58], P[46], P[30], P[18], P[10], P[11]}, array[7]{P[81], P[67], P[65], P[79], P[93], P[95], P[81]}, array[7]{P[103], P[107], P[99], P[87], P[83], P[91], P[103]}, array[5]{P[40], P[34], P[22], P[26], P[40]}, array[5]{P[84], P[78], P[92], P[96], P[84]}, array[7]{P[19], P[15], P[23], P[35], P[43], P[31], P[19]}, array[5]{P[103], P[107], P[115], P[111], P[103]}, array[5]{P[76], P[62], P[72], P[88], P[76]}, array[7]{P[10], P[6], P[2], P[3], P[7], P[11], P[10]}, array[5]{P[69], P[75], P[91], P[83], P[69]}, array[5]{P[37], P[29], P[45], P[51], P[37]}, array[5]{P[30], P[46], P[56], P[42], P[30]}, array[5]{P[99], P[87], P[81], P[95], P[99]}, array[5]{P[59], P[58], P[70], P[71], P[59]}, array[5]{P[100], P[104], P[112], P[108], P[100]}, array[5]{P[31], P[47], P[57], P[43], P[31]}, array[5]{P[119], P[118], P[116], P[117], P[119]}, array[5]{P[86], P[80], P[94], P[98], P[86]}, array[5]{P[38], P[24], P[20], P[32], P[38]}, array[5]{P[23], P[35], P[41], P[27], P[23]}, array[5]{P[25], P[39], P[33], P[21], P[25]}, array[5]{P[19], P[15], P[7], P[11], P[19]}};

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadVert }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color GreatDark }
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
    pigment{ color FaceColor }
}


//////////////////////////////////////////////////////////////////// cuboids

#declare Abs = array[2]{ (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, }

#declare Cuboid = union{
    cylinder{ P[0], P[1], RadEdge/3 }
    cylinder{ P[2], P[3], RadEdge/3 }
    cylinder{ P[4], P[5], RadEdge/3 }
    cylinder{ P[6], P[7], RadEdge/3 }
    pigment{ color LineColor }
    translate -5.854102*z
}

#declare CuboidsZ = union{
    object{ Cuboid }
    object{ Cuboid rotate 180*y }
}
#declare CuboidsX = object{ CuboidsZ rotate 90*y }
#declare CuboidsY = object{ CuboidsZ rotate 90*x }

#declare Cuboids6 = union{ object{CuboidsX} object{CuboidsY} object{CuboidsZ} } 

object{ Cuboids6 }

#declare RotPoint = <0, 1, -(1/2 + sqrt(5)/2)>;
#declare RotFifth = 2*pi/5;
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*2) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*3) }
object{ Cuboids6 RotMatFromVectorAndAngle(RotPoint, RotFifth*4) }



scale Scale
}

