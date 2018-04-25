#include "polyhedra_colors.inc"



#declare Factor = 3*sqrt(6)/(2*(sqrt(2)/2 + 2*sqrt(3)/3));
#declare Abs = array[4]{ (0.0)*Factor, (sqrt(3)/3)*Factor, (sqrt(3)/3 + sqrt(2)/2)*Factor, (sqrt(2)/2 + 2*sqrt(3)/3)*Factor, }
#declare P = array[30]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[1],-Abs[1]>, <-Abs[2],-Abs[1],Abs[1]>, <-Abs[2],Abs[1],-Abs[1]>, <-Abs[2],Abs[1],Abs[1]>, <-Abs[1],-Abs[2],-Abs[1]>, <-Abs[1],-Abs[2],Abs[1]>, <-Abs[1],-Abs[1],-Abs[2]>, <-Abs[1],-Abs[1],Abs[2]>, <-Abs[1],Abs[1],-Abs[2]>, <-Abs[1],Abs[1],Abs[2]>, <-Abs[1],Abs[2],-Abs[1]>, <-Abs[1],Abs[2],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[2],-Abs[1]>, <Abs[1],-Abs[2],Abs[1]>, <Abs[1],-Abs[1],-Abs[2]>, <Abs[1],-Abs[1],Abs[2]>, <Abs[1],Abs[1],-Abs[2]>, <Abs[1],Abs[1],Abs[2]>, <Abs[1],Abs[2],-Abs[1]>, <Abs[1],Abs[2],Abs[1]>, <Abs[2],-Abs[1],-Abs[1]>, <Abs[2],-Abs[1],Abs[1]>, <Abs[2],Abs[1],-Abs[1]>, <Abs[2],Abs[1],Abs[1]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 13, 14, 15, 16, 29};

#declare UncoloredVertices = array[24]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28};

#declare UncoloredEdges = array[48]{array[2]{3, 9}, array[2]{21, 27}, array[2]{27, 29}, array[2]{16, 24}, array[2]{7, 14}, array[2]{21, 23}, array[2]{2, 8}, array[2]{4, 12}, array[2]{6, 8}, array[2]{18, 20}, array[2]{6, 13}, array[2]{1, 7}, array[2]{28, 29}, array[2]{22, 28}, array[2]{26, 29}, array[2]{8, 15}, array[2]{4, 10}, array[2]{25, 29}, array[2]{12, 16}, array[2]{1, 5}, array[2]{5, 7}, array[2]{0, 2}, array[2]{11, 16}, array[2]{3, 11}, array[2]{24, 28}, array[2]{17, 19}, array[2]{20, 26}, array[2]{10, 15}, array[2]{14, 19}, array[2]{16, 23}, array[2]{9, 14}, array[2]{17, 25}, array[2]{18, 26}, array[2]{0, 4}, array[2]{5, 13}, array[2]{15, 20}, array[2]{9, 11}, array[2]{0, 1}, array[2]{0, 3}, array[2]{10, 12}, array[2]{14, 21}, array[2]{23, 27}, array[2]{19, 25}, array[2]{2, 6}, array[2]{13, 17}, array[2]{13, 18}, array[2]{15, 22}, array[2]{22, 24}};

#declare YellowFaces = array[8]{array[4]{12, 10, 4, 12}, array[4]{24, 22, 28, 24}, array[4]{11, 9, 3, 11}, array[4]{23, 21, 27, 23}, array[4]{18, 20, 26, 18}, array[4]{6, 8, 2, 6}, array[4]{5, 7, 1, 5}, array[4]{17, 19, 25, 17}};

#declare BlueFaces = array[12]{array[7]{14, 9, 3, 0, 1, 7, 14}, array[7]{16, 24, 28, 29, 27, 23, 16}, array[7]{4, 10, 15, 8, 2, 0, 4}, array[7]{20, 15, 22, 28, 29, 26, 20}, array[7]{13, 18, 26, 29, 25, 17, 13}, array[7]{12, 16, 11, 3, 0, 4, 12}, array[7]{5, 1, 0, 2, 6, 13, 5}, array[7]{20, 15, 8, 6, 13, 18, 20}, array[7]{16, 23, 21, 14, 9, 11, 16}, array[7]{24, 16, 12, 10, 15, 22, 24}, array[7]{5, 7, 14, 19, 17, 13, 5}, array[7]{14, 19, 25, 29, 27, 21, 14}};





    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }
    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
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
