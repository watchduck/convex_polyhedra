#include "polyhedra_colors.inc"




#declare Factor = 2.0;


#declare Abs = array[3]{ (0.0)*Factor, (3*sqrt(2)/4)*Factor, (9*sqrt(2)/8)*Factor, }
#declare NumberOfVertices = 14;
#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{2, 3, 9, 12};

#declare YellowVertices = array[4]{1, 4, 10, 11};

#declare BlueVertices = array[6]{0, 5, 6, 7, 8, 13};

#declare UncoloredEdges = array[36]{array[2]{8, 11}, array[2]{1, 3}, array[2]{11, 13}, array[2]{1, 5}, array[2]{6, 11}, array[2]{1, 2}, array[2]{2, 10}, array[2]{0, 2}, array[2]{4, 8}, array[2]{0, 1}, array[2]{10, 12}, array[2]{12, 13}, array[2]{7, 10}, array[2]{2, 7}, array[2]{4, 7}, array[2]{8, 12}, array[2]{2, 4}, array[2]{3, 11}, array[2]{1, 9}, array[2]{9, 13}, array[2]{3, 6}, array[2]{0, 4}, array[2]{2, 5}, array[2]{3, 4}, array[2]{11, 12}, array[2]{4, 12}, array[2]{9, 10}, array[2]{5, 9}, array[2]{3, 8}, array[2]{5, 10}, array[2]{1, 6}, array[2]{9, 11}, array[2]{10, 13}, array[2]{7, 12}, array[2]{0, 3}, array[2]{6, 9}};

#declare LightbrownFaces = array[12]{array[4]{12, 4, 8, 12}, array[4]{3, 4, 0, 3}, array[4]{11, 12, 13, 11}, array[4]{11, 3, 8, 11}, array[4]{10, 12, 7, 10}, array[4]{2, 4, 7, 2}, array[4]{2, 10, 5, 2}, array[4]{1, 3, 6, 1}, array[4]{1, 2, 0, 1}, array[4]{9, 11, 6, 9}, array[4]{9, 10, 13, 9}, array[4]{9, 1, 5, 9}};

#declare DarkbrownFaces = array[12]{array[4]{12, 4, 7, 12}, array[4]{3, 4, 8, 3}, array[4]{11, 12, 8, 11}, array[4]{11, 3, 6, 11}, array[4]{10, 12, 13, 10}, array[4]{2, 4, 0, 2}, array[4]{2, 10, 7, 2}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 5, 1}, array[4]{9, 11, 13, 9}, array[4]{9, 10, 5, 9}, array[4]{9, 1, 6, 9}};





    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[BlueVertices[Index]], RadVert }
        #end
        texture{ TBlue }
    }
    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }
    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }

    union{
        #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
            #local EdgeArray = UncoloredEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TGray }
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
