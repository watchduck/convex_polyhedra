#include "polyhedra_colors.inc"




#declare Factor = 1.03;


#declare Abs = array[10]{ (0.0)*Factor, (3*sqrt(5)/44 + 45/44)*Factor, (-sqrt(5)/2 + 5/2)*Factor, (15/22 + 6*sqrt(5)/11)*Factor, (3*sqrt(5)/10 + 3/2)*Factor, (sqrt(5))*Factor, (27*sqrt(5)/44 + 75/44)*Factor, (3/2 + 9*sqrt(5)/10)*Factor, (sqrt(5)/2 + 5/2)*Factor, (15/11 + 12*sqrt(5)/11)*Factor, }
#declare NumberOfVertices = 62;
#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare RedVertices = array[12]{3, 4, 13, 14, 28, 29, 32, 33, 47, 48, 57, 58};

#declare YellowVertices = array[20]{1, 2, 9, 10, 11, 12, 19, 20, 26, 27, 34, 35, 41, 42, 49, 50, 51, 52, 59, 60};

#declare BlueVertices = array[30]{0, 5, 6, 7, 8, 15, 16, 17, 18, 21, 22, 23, 24, 25, 30, 31, 36, 37, 38, 39, 40, 43, 44, 45, 46, 53, 54, 55, 56, 61};

#declare UncoloredEdges = array[180]{array[2]{56, 60}, array[2]{10, 29}, array[2]{60, 61}, array[2]{11, 14}, array[2]{40, 48}, array[2]{13, 21}, array[2]{30, 32}, array[2]{47, 53}, array[2]{52, 56}, array[2]{48, 60}, array[2]{3, 9}, array[2]{4, 6}, array[2]{26, 37}, array[2]{58, 60}, array[2]{4, 10}, array[2]{47, 54}, array[2]{29, 38}, array[2]{35, 36}, array[2]{8, 12}, array[2]{42, 44}, array[2]{33, 40}, array[2]{28, 41}, array[2]{2, 8}, array[2]{13, 22}, array[2]{30, 41}, array[2]{24, 33}, array[2]{4, 18}, array[2]{29, 44}, array[2]{9, 28}, array[2]{6, 10}, array[2]{15, 28}, array[2]{37, 49}, array[2]{10, 22}, array[2]{18, 33}, array[2]{44, 58}, array[2]{51, 55}, array[2]{49, 53}, array[2]{19, 28}, array[2]{38, 50}, array[2]{10, 16}, array[2]{25, 26}, array[2]{1, 6}, array[2]{14, 23}, array[2]{55, 57}, array[2]{3, 11}, array[2]{20, 31}, array[2]{20, 33}, array[2]{50, 58}, array[2]{26, 28}, array[2]{2, 14}, array[2]{2, 3}, array[2]{48, 52}, array[2]{38, 47}, array[2]{58, 59}, array[2]{41, 45}, array[2]{3, 15}, array[2]{7, 11}, array[2]{48, 51}, array[2]{2, 4}, array[2]{31, 33}, array[2]{27, 29}, array[2]{53, 57}, array[2]{11, 17}, array[2]{54, 59}, array[2]{43, 57}, array[2]{0, 3}, array[2]{0, 4}, array[2]{34, 39}, array[2]{35, 48}, array[2]{25, 47}, array[2]{22, 29}, array[2]{25, 27}, array[2]{5, 9}, array[2]{32, 34}, array[2]{47, 50}, array[2]{46, 58}, array[2]{39, 51}, array[2]{50, 54}, array[2]{47, 49}, array[2]{0, 2}, array[2]{24, 35}, array[2]{57, 60}, array[2]{12, 33}, array[2]{23, 34}, array[2]{7, 14}, array[2]{57, 59}, array[2]{14, 35}, array[2]{4, 20}, array[2]{56, 58}, array[2]{33, 46}, array[2]{8, 14}, array[2]{57, 61}, array[2]{59, 61}, array[2]{46, 52}, array[2]{19, 30}, array[2]{11, 23}, array[2]{0, 1}, array[2]{52, 58}, array[2]{36, 48}, array[2]{34, 36}, array[2]{43, 49}, array[2]{34, 48}, array[2]{4, 16}, array[2]{27, 47}, array[2]{29, 50}, array[2]{28, 49}, array[2]{41, 43}, array[2]{33, 35}, array[2]{4, 12}, array[2]{41, 57}, array[2]{37, 47}, array[2]{47, 59}, array[2]{3, 17}, array[2]{33, 52}, array[2]{29, 31}, array[2]{14, 24}, array[2]{42, 46}, array[2]{13, 27}, array[2]{1, 5}, array[2]{1, 3}, array[2]{51, 57}, array[2]{13, 25}, array[2]{40, 52}, array[2]{58, 61}, array[2]{28, 37}, array[2]{48, 55}, array[2]{2, 7}, array[2]{16, 29}, array[2]{9, 21}, array[2]{33, 42}, array[2]{12, 14}, array[2]{9, 15}, array[2]{19, 32}, array[2]{4, 8}, array[2]{14, 34}, array[2]{3, 5}, array[2]{10, 13}, array[2]{48, 56}, array[2]{21, 28}, array[2]{17, 32}, array[2]{15, 19}, array[2]{28, 43}, array[2]{3, 19}, array[2]{29, 42}, array[2]{53, 59}, array[2]{11, 32}, array[2]{28, 30}, array[2]{31, 42}, array[2]{35, 40}, array[2]{14, 36}, array[2]{32, 51}, array[2]{13, 26}, array[2]{22, 27}, array[2]{23, 32}, array[2]{1, 13}, array[2]{26, 47}, array[2]{45, 51}, array[2]{5, 13}, array[2]{21, 26}, array[2]{27, 38}, array[2]{17, 19}, array[2]{45, 57}, array[2]{32, 41}, array[2]{18, 20}, array[2]{32, 45}, array[2]{20, 29}, array[2]{6, 13}, array[2]{12, 18}, array[2]{1, 4}, array[2]{44, 50}, array[2]{9, 13}, array[2]{32, 39}, array[2]{12, 24}, array[2]{49, 57}, array[2]{3, 7}, array[2]{16, 20}, array[2]{42, 58}, array[2]{54, 58}, array[2]{55, 60}, array[2]{39, 48}};

#declare DarkbrownFaces = array[60]{array[4]{14, 35, 36, 14}, array[4]{34, 48, 36, 34}, array[4]{33, 20, 31, 33}, array[4]{1, 3, 0, 1}, array[4]{2, 4, 0, 2}, array[4]{24, 14, 12, 24}, array[4]{24, 33, 35, 24}, array[4]{59, 58, 61, 59}, array[4]{60, 57, 61, 60}, array[4]{40, 48, 35, 40}, array[4]{40, 33, 52, 40}, array[4]{23, 34, 14, 23}, array[4]{39, 48, 51, 39}, array[4]{18, 20, 4, 18}, array[4]{18, 33, 12, 18}, array[4]{46, 58, 52, 46}, array[4]{46, 33, 42, 46}, array[4]{17, 3, 11, 17}, array[4]{8, 4, 12, 8}, array[4]{8, 2, 14, 8}, array[4]{7, 2, 3, 7}, array[4]{7, 14, 11, 7}, array[4]{45, 41, 57, 45}, array[4]{56, 60, 58, 56}, array[4]{56, 48, 52, 56}, array[4]{55, 57, 51, 55}, array[4]{55, 60, 48, 55}, array[4]{32, 39, 34, 32}, array[4]{32, 23, 11, 32}, array[4]{32, 17, 19, 32}, array[4]{32, 41, 30, 32}, array[4]{32, 45, 51, 32}, array[4]{16, 10, 4, 16}, array[4]{6, 1, 4, 6}, array[4]{44, 42, 58, 44}, array[4]{54, 50, 58, 54}, array[4]{15, 19, 3, 15}, array[4]{5, 9, 3, 5}, array[4]{43, 49, 57, 43}, array[4]{53, 59, 57, 53}, array[4]{29, 42, 31, 29}, array[4]{29, 16, 20, 29}, array[4]{29, 44, 50, 29}, array[4]{13, 5, 1, 13}, array[4]{13, 6, 10, 13}, array[4]{28, 43, 41, 28}, array[4]{28, 19, 30, 28}, array[4]{28, 15, 9, 28}, array[4]{47, 54, 59, 47}, array[4]{47, 53, 49, 47}, array[4]{22, 29, 10, 22}, array[4]{21, 13, 9, 21}, array[4]{38, 47, 50, 38}, array[4]{37, 28, 49, 37}, array[4]{27, 47, 25, 27}, array[4]{27, 22, 13, 27}, array[4]{27, 38, 29, 27}, array[4]{26, 37, 47, 26}, array[4]{26, 13, 25, 26}, array[4]{26, 21, 28, 26}};

#declare LightbrownFaces = array[60]{array[4]{48, 35, 36, 48}, array[4]{34, 14, 36, 34}, array[4]{33, 42, 31, 33}, array[4]{1, 4, 0, 1}, array[4]{2, 3, 0, 2}, array[4]{24, 14, 35, 24}, array[4]{24, 33, 12, 24}, array[4]{59, 57, 61, 59}, array[4]{60, 58, 61, 60}, array[4]{40, 48, 52, 40}, array[4]{40, 33, 35, 40}, array[4]{23, 14, 11, 23}, array[4]{39, 34, 48, 39}, array[4]{18, 4, 12, 18}, array[4]{18, 33, 20, 18}, array[4]{46, 42, 58, 46}, array[4]{46, 33, 52, 46}, array[4]{17, 19, 3, 17}, array[4]{8, 2, 4, 8}, array[4]{8, 14, 12, 8}, array[4]{7, 3, 11, 7}, array[4]{7, 2, 14, 7}, array[4]{45, 57, 51, 45}, array[4]{56, 58, 52, 56}, array[4]{56, 60, 48, 56}, array[4]{55, 60, 57, 55}, array[4]{55, 48, 51, 55}, array[4]{32, 23, 34, 32}, array[4]{32, 17, 11, 32}, array[4]{32, 19, 30, 32}, array[4]{32, 45, 41, 32}, array[4]{32, 39, 51, 32}, array[4]{16, 20, 4, 16}, array[4]{6, 10, 4, 6}, array[4]{44, 50, 58, 44}, array[4]{54, 59, 58, 54}, array[4]{15, 9, 3, 15}, array[4]{5, 1, 3, 5}, array[4]{43, 41, 57, 43}, array[4]{53, 49, 57, 53}, array[4]{29, 44, 42, 29}, array[4]{29, 20, 31, 29}, array[4]{29, 16, 10, 29}, array[4]{13, 6, 1, 13}, array[4]{13, 5, 9, 13}, array[4]{28, 41, 30, 28}, array[4]{28, 15, 19, 28}, array[4]{28, 43, 49, 28}, array[4]{47, 53, 59, 47}, array[4]{47, 54, 50, 47}, array[4]{22, 13, 10, 22}, array[4]{21, 28, 9, 21}, array[4]{38, 29, 50, 38}, array[4]{37, 47, 49, 37}, array[4]{27, 38, 47, 27}, array[4]{27, 13, 25, 27}, array[4]{27, 22, 29, 27}, array[4]{26, 47, 25, 26}, array[4]{26, 21, 13, 26}, array[4]{26, 37, 28, 26}};



#declare RadVert = RadVert*.9;
#declare RadEdge = RadEdge*.9;

    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }
    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }
    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[BlueVertices[Index]], RadVert }
        #end
        texture{ TBlue }
    }

    union{
        #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
            #local EdgeArray = UncoloredEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TGray }
    }

    union{
        #for( Index, 0, dimension_size(LightbrownFaces, 1) - 1 )
            #local FaceArray = LightbrownFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TLightbrown }
    }
    union{
        #for( Index, 0, dimension_size(DarkbrownFaces, 1) - 1 )
            #local FaceArray = DarkbrownFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TDarkbrown }
    }
