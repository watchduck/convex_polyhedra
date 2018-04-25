#include "polyhedra_colors.inc"



#declare Factor = 3.0;
#declare Abs = array[3]{ (0)*Factor, (sqrt(6)/3)*Factor, (-sqrt(2) + sqrt(6))*Factor, }
#declare P = array[18]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 5, 8, 9, 12, 17};

#declare BlueVertices = array[12]{1, 2, 3, 4, 6, 7, 10, 11, 13, 14, 15, 16};

#declare UncoloredEdges = array[48]{array[2]{8, 10}, array[2]{2, 8}, array[2]{1, 7}, array[2]{11, 15}, array[2]{0, 4}, array[2]{15, 17}, array[2]{3, 9}, array[2]{1, 5}, array[2]{8, 14}, array[2]{1, 6}, array[2]{0, 3}, array[2]{1, 3}, array[2]{4, 11}, array[2]{11, 16}, array[2]{14, 16}, array[2]{6, 13}, array[2]{3, 11}, array[2]{16, 17}, array[2]{1, 2}, array[2]{15, 16}, array[2]{10, 14}, array[2]{2, 6}, array[2]{10, 12}, array[2]{14, 17}, array[2]{5, 13}, array[2]{5, 6}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 16}, array[2]{7, 13}, array[2]{11, 12}, array[2]{4, 12}, array[2]{12, 16}, array[2]{9, 11}, array[2]{13, 17}, array[2]{9, 15}, array[2]{7, 9}, array[2]{0, 1}, array[2]{6, 14}, array[2]{2, 4}, array[2]{13, 14}, array[2]{7, 15}, array[2]{4, 10}, array[2]{5, 7}, array[2]{3, 4}, array[2]{2, 10}, array[2]{6, 8}, array[2]{3, 7}};

#declare YellowFaces = array[8]{array[4]{4, 10, 2, 4}, array[4]{11, 4, 3, 11}, array[4]{11, 16, 15, 11}, array[4]{14, 16, 10, 14}, array[4]{1, 7, 3, 1}, array[4]{13, 7, 15, 13}, array[4]{6, 1, 2, 6}, array[4]{6, 13, 14, 6}};

#declare UncoloredFaces = array[24]{array[4]{10, 2, 8, 10}, array[4]{4, 3, 0, 4}, array[4]{4, 2, 0, 4}, array[4]{4, 10, 12, 4}, array[4]{16, 15, 17, 16}, array[4]{16, 10, 12, 16}, array[4]{11, 3, 9, 11}, array[4]{11, 4, 12, 11}, array[4]{11, 15, 9, 11}, array[4]{11, 16, 12, 11}, array[4]{14, 10, 8, 14}, array[4]{14, 16, 17, 14}, array[4]{7, 15, 9, 7}, array[4]{7, 3, 9, 7}, array[4]{1, 2, 0, 1}, array[4]{1, 7, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{13, 14, 17, 13}, array[4]{13, 15, 17, 13}, array[4]{13, 7, 5, 13}, array[4]{6, 2, 8, 6}, array[4]{6, 1, 5, 6}, array[4]{6, 14, 8, 6}, array[4]{6, 13, 5, 6}};




    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[BlueVertices[Index]], RadVert }
        #end
        texture{ TBlue }
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
        #for( Index, 0, dimension_size(UncoloredFaces, 1) - 1 )
            #local FaceArray = UncoloredFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TBrown }
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
