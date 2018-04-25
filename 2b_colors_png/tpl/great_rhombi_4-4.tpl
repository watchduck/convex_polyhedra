#include "polyhedra_colors.inc"



{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }

#declare LightbrownVertices = array[12]{0, 3, 5, 6, 8, 9, 14, 15, 17, 18, 20, 23};

#declare DarkbrownVertices = array[12]{1, 2, 4, 7, 10, 11, 12, 13, 16, 19, 21, 22};

#declare UncoloredEdges = array[36]{array[2]{5, 10}, array[2]{4, 8}, array[2]{6, 11}, array[2]{21, 23}, array[2]{18, 22}, array[2]{20, 21}, array[2]{14, 19}, array[2]{7, 15}, array[2]{16, 20}, array[2]{15, 19}, array[2]{19, 23}, array[2]{13, 18}, array[2]{0, 4}, array[2]{17, 21}, array[2]{8, 10}, array[2]{1, 3}, array[2]{3, 7}, array[2]{11, 18}, array[2]{1, 5}, array[2]{13, 15}, array[2]{22, 23}, array[2]{10, 17}, array[2]{12, 17}, array[2]{2, 3}, array[2]{9, 16}, array[2]{6, 13}, array[2]{5, 12}, array[2]{2, 6}, array[2]{4, 9}, array[2]{12, 14}, array[2]{0, 2}, array[2]{7, 14}, array[2]{20, 22}, array[2]{0, 1}, array[2]{8, 16}, array[2]{9, 11}};

#declare RedFaces = array[4]{array[7]{22, 18, 13, 15, 19, 23, 22}, array[7]{4, 9, 11, 6, 2, 0, 4}, array[7]{3, 1, 5, 12, 14, 7, 3}, array[7]{21, 17, 10, 8, 16, 20, 21}};

#declare YellowFaces = array[4]{array[7]{13, 15, 7, 3, 2, 6, 13}, array[7]{8, 4, 0, 1, 5, 10, 8}, array[7]{21, 23, 19, 14, 12, 17, 21}, array[7]{9, 11, 18, 22, 20, 16, 9}};

#declare BlueFaces = array[6]{array[5]{7, 15, 19, 14, 7}, array[5]{23, 22, 20, 21, 23}, array[5]{9, 16, 8, 4, 9}, array[5]{10, 17, 12, 5, 10}, array[5]{0, 1, 3, 2, 0}, array[5]{13, 6, 11, 18, 13}};




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
