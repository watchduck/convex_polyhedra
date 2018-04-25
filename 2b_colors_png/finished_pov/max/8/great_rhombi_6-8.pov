#include "polyhedra_colors.inc"




#declare Factor = .92;


#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }

#declare DarkbrownVertices = array[24]{0, 3, 4, 7, 9, 10, 13, 14, 16, 19, 20, 23, 25, 26, 29, 30, 32, 35, 36, 39, 41, 42, 45, 46};

#declare LightbrownVertices = array[24]{1, 2, 5, 6, 8, 11, 12, 15, 17, 18, 21, 22, 24, 27, 28, 31, 33, 34, 37, 38, 40, 43, 44, 47};

#declare UncoloredEdges = array[72]{array[2]{16, 24}, array[2]{43, 45}, array[2]{25, 33}, array[2]{46, 47}, array[2]{20, 28}, array[2]{11, 13}, array[2]{33, 41}, array[2]{18, 26}, array[2]{44, 46}, array[2]{5, 13}, array[2]{36, 44}, array[2]{11, 19}, array[2]{7, 15}, array[2]{2, 10}, array[2]{13, 21}, array[2]{34, 42}, array[2]{6, 14}, array[2]{10, 12}, array[2]{3, 11}, array[2]{9, 17}, array[2]{19, 27}, array[2]{35, 37}, array[2]{31, 39}, array[2]{40, 41}, array[2]{42, 44}, array[2]{29, 31}, array[2]{1, 3}, array[2]{25, 27}, array[2]{29, 37}, array[2]{5, 7}, array[2]{21, 29}, array[2]{45, 47}, array[2]{34, 36}, array[2]{24, 26}, array[2]{38, 39}, array[2]{23, 31}, array[2]{30, 38}, array[2]{12, 20}, array[2]{16, 18}, array[2]{8, 16}, array[2]{2, 4}, array[2]{21, 23}, array[2]{35, 43}, array[2]{28, 30}, array[2]{6, 7}, array[2]{37, 45}, array[2]{32, 40}, array[2]{41, 43}, array[2]{40, 42}, array[2]{14, 15}, array[2]{17, 19}, array[2]{24, 32}, array[2]{39, 47}, array[2]{4, 6}, array[2]{14, 22}, array[2]{26, 34}, array[2]{27, 35}, array[2]{28, 36}, array[2]{3, 5}, array[2]{0, 8}, array[2]{4, 12}, array[2]{10, 18}, array[2]{1, 9}, array[2]{15, 23}, array[2]{8, 9}, array[2]{22, 30}, array[2]{38, 46}, array[2]{0, 2}, array[2]{32, 33}, array[2]{20, 22}, array[2]{17, 25}, array[2]{0, 1}};

#declare RedFaces = array[6]{array[9]{8, 9, 17, 25, 33, 32, 24, 16, 8}, array[9]{44, 46, 47, 45, 43, 41, 40, 42, 44}, array[9]{14, 15, 23, 31, 39, 38, 30, 22, 14}, array[9]{26, 18, 10, 12, 20, 28, 36, 34, 26}, array[9]{1, 0, 2, 4, 6, 7, 5, 3, 1}, array[9]{19, 27, 35, 37, 29, 21, 13, 11, 19}};

#declare YellowFaces = array[8]{array[7]{3, 11, 19, 17, 9, 1, 3}, array[7]{23, 21, 13, 5, 7, 15, 23}, array[7]{29, 37, 45, 47, 39, 31, 29}, array[7]{18, 10, 2, 0, 8, 16, 18}, array[7]{24, 26, 34, 42, 40, 32, 24}, array[7]{44, 46, 38, 30, 28, 36, 44}, array[7]{43, 41, 33, 25, 27, 35, 43}, array[7]{6, 14, 22, 20, 12, 4, 6}};

#declare BlueFaces = array[12]{array[5]{12, 10, 2, 4, 12}, array[5]{46, 47, 39, 38, 46}, array[5]{1, 0, 8, 9, 1}, array[5]{14, 6, 7, 15, 14}, array[5]{32, 40, 41, 33, 32}, array[5]{24, 16, 18, 26, 24}, array[5]{5, 3, 11, 13, 5}, array[5]{37, 35, 43, 45, 37}, array[5]{42, 34, 36, 44, 42}, array[5]{20, 22, 30, 28, 20}, array[5]{29, 21, 23, 31, 29}, array[5]{17, 19, 27, 25, 17}};




union{

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

    rotate Rotate
}
