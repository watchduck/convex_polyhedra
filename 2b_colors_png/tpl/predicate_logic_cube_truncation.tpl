#include "polyhedra_colors.inc"



#declare Factor = 1.47;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }
#declare P = array[26]{ <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],-Abs[1],Abs[1]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[1],-Abs[1]>, <-Abs[2],Abs[1],Abs[1]>, <-Abs[1],-Abs[2],Abs[1]>, <-Abs[1],-Abs[1],Abs[2]>, <-Abs[1],Abs[1],-Abs[2]>, <-Abs[1],Abs[1],Abs[2]>, <-Abs[1],Abs[2],-Abs[1]>, <-Abs[1],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[1],-Abs[2],-Abs[1]>, <Abs[1],-Abs[2],Abs[1]>, <Abs[1],-Abs[1],-Abs[2]>, <Abs[1],-Abs[1],Abs[2]>, <Abs[1],Abs[1],-Abs[2]>, <Abs[1],Abs[2],-Abs[1]>, <Abs[2],-Abs[1],-Abs[1]>, <Abs[2],-Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[1],-Abs[1]>, <Abs[2],Abs[2],Abs[0]>, <Abs[2],Abs[2],Abs[2]>, }

#declare YellowVertices = array[2]{0, 25};

#declare BlueVertices = array[6]{1, 3, 12, 13, 22, 24};

#declare UncoloredVertices = array[18]{2, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15, 16, 17, 18, 19, 20, 21, 23};

#declare BlueEdges = array[6]{array[2]{13, 25}, array[2]{22, 25}, array[2]{0, 1}, array[2]{24, 25}, array[2]{0, 3}, array[2]{0, 12}};

#declare UncoloredEdges = array[36]{array[2]{19, 24}, array[2]{3, 8}, array[2]{20, 23}, array[2]{6, 15}, array[2]{15, 21}, array[2]{4, 10}, array[2]{10, 11}, array[2]{14, 20}, array[2]{16, 18}, array[2]{14, 15}, array[2]{16, 20}, array[2]{1, 2}, array[2]{15, 17}, array[2]{4, 5}, array[2]{12, 16}, array[2]{21, 22}, array[2]{9, 13}, array[2]{1, 6}, array[2]{2, 7}, array[2]{8, 10}, array[2]{5, 9}, array[2]{12, 14}, array[2]{18, 19}, array[2]{3, 4}, array[2]{23, 24}, array[2]{10, 19}, array[2]{7, 9}, array[2]{7, 17}, array[2]{6, 7}, array[2]{2, 5}, array[2]{8, 18}, array[2]{11, 13}, array[2]{18, 23}, array[2]{5, 11}, array[2]{20, 21}, array[2]{17, 22}};

#declare RedFaces = array[6]{array[7]{11, 10, 19, 24, 25, 13, 11}, array[7]{18, 8, 3, 0, 12, 16, 18}, array[7]{15, 6, 1, 0, 12, 14, 15}, array[7]{0, 3, 4, 5, 2, 1, 0}, array[7]{22, 25, 24, 23, 20, 21, 22}, array[7]{7, 17, 22, 25, 13, 9, 7}};

#declare YellowFaces = array[6]{array[5]{12, 16, 20, 14, 12}, array[5]{6, 1, 2, 7, 6}, array[5]{3, 4, 10, 8, 3}, array[5]{15, 17, 22, 21, 15}, array[5]{19, 24, 23, 18, 19}, array[5]{13, 9, 5, 11, 13}};

#declare BlueFaces = array[6]{array[5]{5, 9, 7, 2, 5}, array[5]{19, 10, 8, 18, 19}, array[5]{5, 4, 10, 11, 5}, array[5]{20, 16, 18, 23, 20}, array[5]{6, 7, 17, 15, 6}, array[5]{20, 14, 15, 21, 20}};




    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
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
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
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
