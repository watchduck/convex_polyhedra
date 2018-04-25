#include "polyhedra_colors.inc"




#declare Factor = 1.85;


#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor}

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};

#declare BlueEdges = array[12]{array[2]{0, 4}, array[2]{9, 11}, array[2]{18, 22}, array[2]{17, 21}, array[2]{3, 7}, array[2]{1, 5}, array[2]{12, 14}, array[2]{19, 23}, array[2]{8, 10}, array[2]{13, 15}, array[2]{2, 6}, array[2]{16, 20}};

#declare UncoloredEdges = array[24]{array[2]{7, 14}, array[2]{12, 17}, array[2]{4, 9}, array[2]{21, 23}, array[2]{5, 12}, array[2]{10, 17}, array[2]{20, 21}, array[2]{20, 22}, array[2]{0, 1}, array[2]{2, 3}, array[2]{15, 19}, array[2]{0, 2}, array[2]{7, 15}, array[2]{22, 23}, array[2]{1, 3}, array[2]{13, 18}, array[2]{6, 11}, array[2]{9, 16}, array[2]{8, 16}, array[2]{11, 18}, array[2]{4, 8}, array[2]{5, 10}, array[2]{6, 13}, array[2]{14, 19}};

#declare RedFaces = array[6]{array[5]{7, 15, 19, 14, 7}, array[5]{22, 23, 21, 20, 22}, array[5]{4, 8, 16, 9, 4}, array[5]{5, 12, 17, 10, 5}, array[5]{1, 0, 2, 3, 1}, array[5]{6, 11, 18, 13, 6}};

#declare YellowFaces = array[8]{array[7]{13, 15, 7, 3, 2, 6, 13}, array[7]{4, 8, 10, 5, 1, 0, 4}, array[7]{17, 12, 14, 19, 23, 21, 17}, array[7]{15, 19, 23, 22, 18, 13, 15}, array[7]{2, 6, 11, 9, 4, 0, 2}, array[7]{5, 1, 3, 7, 14, 12, 5}, array[7]{16, 8, 10, 17, 21, 20, 16}, array[7]{11, 9, 16, 20, 22, 18, 11}};



union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TBrown }
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

    rotate Rotate
}
