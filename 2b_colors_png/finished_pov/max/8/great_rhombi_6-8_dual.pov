#include "polyhedra_colors.inc"




#declare Factor = 1.57;


#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2))*Factor, (3/7 + 6*sqrt(2)/7)*Factor, (6/7 + 9*sqrt(2)/7)*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};

#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};

#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

#declare UncoloredEdges = array[72]{array[2]{13, 23}, array[2]{3, 6}, array[2]{6, 11}, array[2]{19, 24}, array[2]{10, 12}, array[2]{17, 25}, array[2]{14, 16}, array[2]{4, 8}, array[2]{3, 13}, array[2]{1, 6}, array[2]{23, 25}, array[2]{12, 14}, array[2]{0, 4}, array[2]{12, 22}, array[2]{7, 12}, array[2]{4, 7}, array[2]{20, 25}, array[2]{2, 7}, array[2]{13, 15}, array[2]{22, 25}, array[2]{12, 17}, array[2]{9, 18}, array[2]{15, 16}, array[2]{18, 21}, array[2]{4, 16}, array[2]{1, 5}, array[2]{0, 3}, array[2]{0, 1}, array[2]{17, 22}, array[2]{15, 20}, array[2]{0, 5}, array[2]{16, 24}, array[2]{16, 20}, array[2]{7, 14}, array[2]{0, 7}, array[2]{13, 20}, array[2]{0, 6}, array[2]{2, 12}, array[2]{19, 25}, array[2]{24, 25}, array[2]{20, 23}, array[2]{11, 18}, array[2]{9, 10}, array[2]{17, 21}, array[2]{20, 24}, array[2]{9, 17}, array[2]{18, 23}, array[2]{0, 2}, array[2]{6, 13}, array[2]{9, 11}, array[2]{6, 9}, array[2]{2, 5}, array[2]{5, 9}, array[2]{3, 8}, array[2]{21, 25}, array[2]{5, 10}, array[2]{8, 16}, array[2]{19, 22}, array[2]{7, 16}, array[2]{5, 12}, array[2]{8, 15}, array[2]{13, 18}, array[2]{14, 19}, array[2]{16, 19}, array[2]{12, 19}, array[2]{8, 13}, array[2]{0, 8}, array[2]{10, 17}, array[2]{11, 13}, array[2]{18, 25}, array[2]{1, 9}, array[2]{9, 21}};

#declare DarkbrownFaces = array[24]{array[4]{3, 8, 13, 3}, array[4]{23, 20, 25, 23}, array[4]{15, 20, 13, 15}, array[4]{15, 8, 16, 15}, array[4]{2, 7, 0, 2}, array[4]{4, 8, 0, 4}, array[4]{4, 7, 16, 4}, array[4]{22, 19, 12, 22}, array[4]{24, 19, 25, 24}, array[4]{24, 20, 16, 24}, array[4]{14, 7, 12, 14}, array[4]{14, 19, 16, 14}, array[4]{6, 3, 0, 6}, array[4]{18, 23, 13, 18}, array[4]{1, 6, 9, 1}, array[4]{21, 18, 25, 21}, array[4]{11, 6, 13, 11}, array[4]{11, 18, 9, 11}, array[4]{5, 2, 12, 5}, array[4]{5, 1, 0, 5}, array[4]{17, 21, 9, 17}, array[4]{17, 22, 25, 17}, array[4]{10, 5, 9, 10}, array[4]{10, 17, 12, 10}};

#declare LightbrownFaces = array[24]{array[4]{3, 8, 0, 3}, array[4]{23, 20, 13, 23}, array[4]{15, 8, 13, 15}, array[4]{15, 20, 16, 15}, array[4]{2, 7, 12, 2}, array[4]{4, 7, 0, 4}, array[4]{4, 8, 16, 4}, array[4]{22, 19, 25, 22}, array[4]{24, 20, 25, 24}, array[4]{24, 19, 16, 24}, array[4]{14, 19, 12, 14}, array[4]{14, 7, 16, 14}, array[4]{6, 3, 13, 6}, array[4]{18, 23, 25, 18}, array[4]{1, 6, 0, 1}, array[4]{21, 18, 9, 21}, array[4]{11, 18, 13, 11}, array[4]{11, 6, 9, 11}, array[4]{5, 1, 9, 5}, array[4]{5, 2, 0, 5}, array[4]{17, 22, 12, 17}, array[4]{17, 21, 25, 17}, array[4]{10, 17, 9, 10}, array[4]{10, 5, 12, 10}};




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
