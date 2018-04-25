#include "polyhedra_colors.inc"





#declare Factor = 6/((-1 + sqrt(5))*sqrt(12*sqrt(5) + 30));


#declare Abs = array[12]{ (1/(1/2 + sqrt(5)/2))*Factor, (2/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5))*Factor, (pow(1/2 + sqrt(5)/2, 2))*Factor, (3)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (1/2 + 3*sqrt(5)/2)*Factor, (2 + sqrt(5))*Factor, (sqrt(5)/2 + 7/2)*Factor, }


#declare P = array[120]{ <-Abs[11],-Abs[0],-Abs[0]>, <-Abs[11],-Abs[0],Abs[0]>, <-Abs[11],Abs[0],-Abs[0]>, <-Abs[11],Abs[0],Abs[0]>, <-Abs[10],-Abs[2],-Abs[1]>, <-Abs[10],-Abs[2],Abs[1]>, <-Abs[10],Abs[2],-Abs[1]>, <-Abs[10],Abs[2],Abs[1]>, <-Abs[9],-Abs[5],-Abs[0]>, <-Abs[9],-Abs[5],Abs[0]>, <-Abs[9],Abs[5],-Abs[0]>, <-Abs[9],Abs[5],Abs[0]>, <-Abs[8],-Abs[3],-Abs[4]>, <-Abs[8],-Abs[3],Abs[4]>, <-Abs[8],Abs[3],-Abs[4]>, <-Abs[8],Abs[3],Abs[4]>, <-Abs[7],-Abs[6],-Abs[2]>, <-Abs[7],-Abs[6],Abs[2]>, <-Abs[7],Abs[6],-Abs[2]>, <-Abs[7],Abs[6],Abs[2]>, <-Abs[6],-Abs[2],-Abs[7]>, <-Abs[6],-Abs[2],Abs[7]>, <-Abs[6],Abs[2],-Abs[7]>, <-Abs[6],Abs[2],Abs[7]>, <-Abs[5],-Abs[0],-Abs[9]>, <-Abs[5],-Abs[0],Abs[9]>, <-Abs[5],Abs[0],-Abs[9]>, <-Abs[5],Abs[0],Abs[9]>, <-Abs[4],-Abs[8],-Abs[3]>, <-Abs[4],-Abs[8],Abs[3]>, <-Abs[4],Abs[8],-Abs[3]>, <-Abs[4],Abs[8],Abs[3]>, <-Abs[3],-Abs[4],-Abs[8]>, <-Abs[3],-Abs[4],Abs[8]>, <-Abs[3],Abs[4],-Abs[8]>, <-Abs[3],Abs[4],Abs[8]>, <-Abs[2],-Abs[7],-Abs[6]>, <-Abs[2],-Abs[7],Abs[6]>, <-Abs[2],-Abs[1],-Abs[10]>, <-Abs[2],-Abs[1],Abs[10]>, <-Abs[2],Abs[1],-Abs[10]>, <-Abs[2],Abs[1],Abs[10]>, <-Abs[2],Abs[7],-Abs[6]>, <-Abs[2],Abs[7],Abs[6]>, <-Abs[1],-Abs[10],-Abs[2]>, <-Abs[1],-Abs[10],Abs[2]>, <-Abs[1],Abs[10],-Abs[2]>, <-Abs[1],Abs[10],Abs[2]>, <-Abs[0],-Abs[11],-Abs[0]>, <-Abs[0],-Abs[11],Abs[0]>, <-Abs[0],-Abs[9],-Abs[5]>, <-Abs[0],-Abs[9],Abs[5]>, <-Abs[0],-Abs[0],-Abs[11]>, <-Abs[0],-Abs[0],Abs[11]>, <-Abs[0],Abs[0],-Abs[11]>, <-Abs[0],Abs[0],Abs[11]>, <-Abs[0],Abs[9],-Abs[5]>, <-Abs[0],Abs[9],Abs[5]>, <-Abs[0],Abs[11],-Abs[0]>, <-Abs[0],Abs[11],Abs[0]>, <Abs[0],-Abs[11],-Abs[0]>, <Abs[0],-Abs[11],Abs[0]>, <Abs[0],-Abs[9],-Abs[5]>, <Abs[0],-Abs[9],Abs[5]>, <Abs[0],-Abs[0],-Abs[11]>, <Abs[0],-Abs[0],Abs[11]>, <Abs[0],Abs[0],-Abs[11]>, <Abs[0],Abs[0],Abs[11]>, <Abs[0],Abs[9],-Abs[5]>, <Abs[0],Abs[9],Abs[5]>, <Abs[0],Abs[11],-Abs[0]>, <Abs[0],Abs[11],Abs[0]>, <Abs[1],-Abs[10],-Abs[2]>, <Abs[1],-Abs[10],Abs[2]>, <Abs[1],Abs[10],-Abs[2]>, <Abs[1],Abs[10],Abs[2]>, <Abs[2],-Abs[7],-Abs[6]>, <Abs[2],-Abs[7],Abs[6]>, <Abs[2],-Abs[1],-Abs[10]>, <Abs[2],-Abs[1],Abs[10]>, <Abs[2],Abs[1],-Abs[10]>, <Abs[2],Abs[1],Abs[10]>, <Abs[2],Abs[7],-Abs[6]>, <Abs[2],Abs[7],Abs[6]>, <Abs[3],-Abs[4],-Abs[8]>, <Abs[3],-Abs[4],Abs[8]>, <Abs[3],Abs[4],-Abs[8]>, <Abs[3],Abs[4],Abs[8]>, <Abs[4],-Abs[8],-Abs[3]>, <Abs[4],-Abs[8],Abs[3]>, <Abs[4],Abs[8],-Abs[3]>, <Abs[4],Abs[8],Abs[3]>, <Abs[5],-Abs[0],-Abs[9]>, <Abs[5],-Abs[0],Abs[9]>, <Abs[5],Abs[0],-Abs[9]>, <Abs[5],Abs[0],Abs[9]>, <Abs[6],-Abs[2],-Abs[7]>, <Abs[6],-Abs[2],Abs[7]>, <Abs[6],Abs[2],-Abs[7]>, <Abs[6],Abs[2],Abs[7]>, <Abs[7],-Abs[6],-Abs[2]>, <Abs[7],-Abs[6],Abs[2]>, <Abs[7],Abs[6],-Abs[2]>, <Abs[7],Abs[6],Abs[2]>, <Abs[8],-Abs[3],-Abs[4]>, <Abs[8],-Abs[3],Abs[4]>, <Abs[8],Abs[3],-Abs[4]>, <Abs[8],Abs[3],Abs[4]>, <Abs[9],-Abs[5],-Abs[0]>, <Abs[9],-Abs[5],Abs[0]>, <Abs[9],Abs[5],-Abs[0]>, <Abs[9],Abs[5],Abs[0]>, <Abs[10],-Abs[2],-Abs[1]>, <Abs[10],-Abs[2],Abs[1]>, <Abs[10],Abs[2],-Abs[1]>, <Abs[10],Abs[2],Abs[1]>, <Abs[11],-Abs[0],-Abs[0]>, <Abs[11],-Abs[0],Abs[0]>, <Abs[11],Abs[0],-Abs[0]>, <Abs[11],Abs[0],Abs[0]>, }

#declare DarkbrownVertices = array[60]{0, 3, 5, 6, 8, 11, 12, 15, 17, 18, 21, 22, 24, 27, 28, 31, 32, 35, 37, 39, 40, 42, 45, 46, 48, 50, 52, 55, 57, 59, 61, 63, 65, 66, 68, 70, 72, 75, 76, 78, 81, 83, 85, 86, 89, 90, 93, 94, 96, 99, 100, 103, 105, 106, 109, 110, 112, 115, 117, 118};

#declare LightbrownVertices = array[60]{1, 2, 4, 7, 9, 10, 13, 14, 16, 19, 20, 23, 25, 26, 29, 30, 33, 34, 36, 38, 41, 43, 44, 47, 49, 51, 53, 54, 56, 58, 60, 62, 64, 67, 69, 71, 73, 74, 77, 79, 80, 82, 84, 87, 88, 91, 92, 95, 97, 98, 101, 102, 104, 107, 108, 111, 113, 114, 116, 119};

#declare UncoloredEdges = array[180]{array[2]{72, 88}, array[2]{100, 104}, array[2]{35, 41}, array[2]{89, 101}, array[2]{39, 53}, array[2]{31, 43}, array[2]{82, 90}, array[2]{5, 13}, array[2]{103, 111}, array[2]{26, 40}, array[2]{101, 109}, array[2]{11, 19}, array[2]{6, 14}, array[2]{34, 42}, array[2]{37, 51}, array[2]{65, 79}, array[2]{20, 24}, array[2]{53, 65}, array[2]{92, 94}, array[2]{60, 61}, array[2]{58, 70}, array[2]{106, 114}, array[2]{69, 83}, array[2]{77, 85}, array[2]{25, 27}, array[2]{99, 107}, array[2]{115, 119}, array[2]{77, 89}, array[2]{24, 38}, array[2]{25, 39}, array[2]{64, 78}, array[2]{93, 97}, array[2]{81, 95}, array[2]{84, 96}, array[2]{18, 30}, array[2]{24, 26}, array[2]{88, 100}, array[2]{2, 6}, array[2]{14, 18}, array[2]{43, 57}, array[2]{100, 108}, array[2]{79, 85}, array[2]{10, 11}, array[2]{68, 74}, array[2]{42, 56}, array[2]{69, 75}, array[2]{108, 109}, array[2]{35, 43}, array[2]{45, 51}, array[2]{107, 115}, array[2]{75, 91}, array[2]{73, 89}, array[2]{6, 10}, array[2]{21, 33}, array[2]{83, 87}, array[2]{13, 17}, array[2]{21, 25}, array[2]{47, 59}, array[2]{50, 62}, array[2]{53, 55}, array[2]{78, 84}, array[2]{27, 41}, array[2]{64, 66}, array[2]{49, 61}, array[2]{47, 57}, array[2]{87, 99}, array[2]{96, 104}, array[2]{16, 28}, array[2]{103, 107}, array[2]{15, 23}, array[2]{91, 103}, array[2]{90, 102}, array[2]{111, 115}, array[2]{22, 26}, array[2]{46, 56}, array[2]{85, 97}, array[2]{83, 91}, array[2]{62, 72}, array[2]{82, 86}, array[2]{76, 88}, array[2]{70, 71}, array[2]{40, 54}, array[2]{4, 8}, array[2]{62, 76}, array[2]{41, 55}, array[2]{32, 36}, array[2]{118, 119}, array[2]{81, 87}, array[2]{52, 54}, array[2]{5, 9}, array[2]{7, 15}, array[2]{13, 21}, array[2]{19, 31}, array[2]{15, 19}, array[2]{9, 17}, array[2]{29, 45}, array[2]{101, 105}, array[2]{48, 60}, array[2]{31, 47}, array[2]{0, 4}, array[2]{1, 3}, array[2]{80, 94}, array[2]{3, 7}, array[2]{34, 40}, array[2]{29, 37}, array[2]{93, 95}, array[2]{46, 58}, array[2]{51, 63}, array[2]{113, 117}, array[2]{76, 84}, array[2]{71, 75}, array[2]{112, 116}, array[2]{2, 3}, array[2]{109, 113}, array[2]{12, 20}, array[2]{55, 67}, array[2]{12, 16}, array[2]{79, 93}, array[2]{30, 46}, array[2]{70, 74}, array[2]{80, 86}, array[2]{8, 16}, array[2]{102, 106}, array[2]{56, 68}, array[2]{58, 59}, array[2]{28, 44}, array[2]{116, 117}, array[2]{95, 99}, array[2]{66, 80}, array[2]{7, 11}, array[2]{23, 27}, array[2]{54, 66}, array[2]{110, 114}, array[2]{44, 48}, array[2]{104, 112}, array[2]{105, 113}, array[2]{44, 50}, array[2]{17, 29}, array[2]{74, 90}, array[2]{59, 71}, array[2]{30, 42}, array[2]{67, 81}, array[2]{45, 49}, array[2]{22, 34}, array[2]{63, 73}, array[2]{33, 37}, array[2]{94, 98}, array[2]{98, 106}, array[2]{23, 35}, array[2]{14, 22}, array[2]{68, 82}, array[2]{97, 105}, array[2]{63, 77}, array[2]{92, 96}, array[2]{1, 5}, array[2]{28, 36}, array[2]{33, 39}, array[2]{10, 18}, array[2]{4, 12}, array[2]{116, 118}, array[2]{110, 111}, array[2]{20, 32}, array[2]{86, 98}, array[2]{36, 50}, array[2]{65, 67}, array[2]{108, 112}, array[2]{117, 119}, array[2]{102, 110}, array[2]{114, 118}, array[2]{60, 72}, array[2]{8, 9}, array[2]{61, 73}, array[2]{78, 92}, array[2]{0, 2}, array[2]{57, 69}, array[2]{52, 64}, array[2]{48, 49}, array[2]{0, 1}, array[2]{38, 52}, array[2]{32, 38}};

#declare RedFaces = array[12]{array[11]{113, 117, 119, 115, 107, 99, 95, 93, 97, 105, 113}, array[11]{8, 9, 17, 29, 45, 49, 48, 44, 28, 16, 8}, array[11]{89, 101, 109, 108, 100, 88, 72, 60, 61, 73, 89}, array[11]{70, 74, 90, 102, 110, 111, 103, 91, 75, 71, 70}, array[11]{52, 64, 78, 84, 76, 62, 50, 36, 32, 38, 52}, array[11]{56, 42, 34, 40, 54, 66, 80, 86, 82, 68, 56}, array[11]{14, 6, 2, 0, 4, 12, 20, 24, 26, 22, 14}, array[11]{77, 85, 79, 65, 53, 39, 33, 37, 51, 63, 77}, array[11]{106, 98, 94, 92, 96, 104, 112, 116, 118, 114, 106}, array[11]{1, 3, 7, 15, 23, 27, 25, 21, 13, 5, 1}, array[11]{81, 67, 55, 41, 35, 43, 57, 69, 83, 87, 81}, array[11]{18, 10, 11, 19, 31, 47, 59, 58, 46, 30, 18}};

#declare YellowFaces = array[20]{array[7]{48, 60, 72, 62, 50, 44, 48}, array[7]{14, 18, 30, 42, 34, 22, 14}, array[7]{52, 38, 24, 26, 40, 54, 52}, array[7]{41, 27, 25, 39, 53, 55, 41}, array[7]{64, 66, 80, 94, 92, 78, 64}, array[7]{70, 58, 46, 56, 68, 74, 70}, array[7]{33, 21, 13, 17, 29, 37, 33}, array[7]{59, 71, 75, 69, 57, 47, 59}, array[7]{16, 28, 36, 32, 20, 12, 16}, array[7]{105, 101, 89, 77, 85, 97, 105}, array[7]{116, 117, 113, 109, 108, 112, 116}, array[7]{8, 4, 0, 1, 5, 9, 8}, array[7]{84, 76, 88, 100, 104, 96, 84}, array[7]{45, 49, 61, 73, 63, 51, 45}, array[7]{119, 115, 111, 110, 114, 118, 119}, array[7]{102, 90, 82, 86, 98, 106, 102}, array[7]{79, 65, 67, 81, 95, 93, 79}, array[7]{107, 99, 87, 83, 91, 103, 107}, array[7]{35, 43, 31, 19, 15, 23, 35}, array[7]{3, 2, 6, 10, 11, 7, 3}};

#declare BlueFaces = array[30]{array[5]{18, 14, 6, 10, 18}, array[5]{79, 93, 97, 85, 79}, array[5]{67, 65, 53, 55, 67}, array[5]{4, 12, 16, 8, 4}, array[5]{102, 110, 114, 106, 102}, array[5]{52, 64, 66, 54, 52}, array[5]{63, 73, 89, 77, 63}, array[5]{44, 28, 36, 50, 44}, array[5]{101, 109, 113, 105, 101}, array[5]{5, 13, 17, 9, 5}, array[5]{60, 48, 49, 61, 60}, array[5]{0, 1, 3, 2, 0}, array[5]{74, 68, 82, 90, 74}, array[5]{26, 22, 34, 40, 26}, array[5]{96, 84, 78, 92, 96}, array[5]{103, 111, 115, 107, 103}, array[5]{62, 76, 88, 72, 62}, array[5]{69, 75, 91, 83, 69}, array[5]{29, 45, 51, 37, 29}, array[5]{30, 42, 56, 46, 30}, array[5]{99, 87, 81, 95, 99}, array[5]{58, 70, 71, 59, 58}, array[5]{108, 112, 104, 100, 108}, array[5]{47, 31, 43, 57, 47}, array[5]{117, 119, 118, 116, 117}, array[5]{98, 94, 80, 86, 98}, array[5]{38, 32, 20, 24, 38}, array[5]{35, 41, 27, 23, 35}, array[5]{25, 21, 33, 39, 25}, array[5]{11, 7, 15, 19, 11}};




#declare RadVert = RadVert*.9;
#declare RadEdge = RadEdge*.9;

union{
    #for( Index, 0, dimension_size(DarkbrownVertices, 1) - 1 )
        sphere{ P[DarkbrownVertices[Index]], RadVert }
    #end
    texture{ TDarkbrown }
}
union{
    #for( Index, 0, dimension_size(LightbrownVertices, 1) - 1 )
        sphere{ P[LightbrownVertices[Index]], RadVert }
    #end
    texture{ TLightbrown }
}

union{
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}

union{
    #for( Index, 0, dimension_size(YellowFaces, 1) - 1 )
        #local FaceArray = YellowFaces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                P[FaceArray[VertexIndexInFace]]
            #end
        }
    #end
    texture{ TYellow }
}
union{
    #for( Index, 0, dimension_size(RedFaces, 1) - 1 )
        #local FaceArray = RedFaces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                P[FaceArray[VertexIndexInFace]]
            #end
        }
    #end
    texture{ TRed }
}
union{
    #for( Index, 0, dimension_size(BlueFaces, 1) - 1 )
        #local FaceArray = BlueFaces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                P[FaceArray[VertexIndexInFace]]
            #end
        }
    #end
    texture{ TBlue }
}
