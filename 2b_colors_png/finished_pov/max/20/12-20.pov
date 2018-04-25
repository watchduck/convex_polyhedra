#include "polyhedra_colors.inc"





#declare Factor = 2.6;


#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare BlueVertices = array[30]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};

#declare UncoloredEdges = array[60]{array[2]{12, 20}, array[2]{25, 26}, array[2]{11, 16}, array[2]{16, 20}, array[2]{3, 7}, array[2]{22, 26}, array[2]{6, 15}, array[2]{22, 24}, array[2]{21, 23}, array[2]{15, 24}, array[2]{23, 27}, array[2]{18, 26}, array[2]{2, 6}, array[2]{11, 19}, array[2]{0, 4}, array[2]{5, 14}, array[2]{5, 9}, array[2]{8, 15}, array[2]{6, 8}, array[2]{14, 21}, array[2]{0, 2}, array[2]{18, 22}, array[2]{16, 19}, array[2]{7, 14}, array[2]{13, 18}, array[2]{6, 10}, array[2]{1, 5}, array[2]{0, 3}, array[2]{12, 16}, array[2]{9, 17}, array[2]{7, 11}, array[2]{20, 28}, array[2]{17, 21}, array[2]{17, 25}, array[2]{24, 28}, array[2]{27, 29}, array[2]{27, 28}, array[2]{20, 24}, array[2]{25, 29}, array[2]{4, 8}, array[2]{15, 22}, array[2]{19, 23}, array[2]{8, 12}, array[2]{10, 18}, array[2]{13, 17}, array[2]{3, 11}, array[2]{19, 27}, array[2]{1, 9}, array[2]{5, 7}, array[2]{2, 10}, array[2]{3, 4}, array[2]{0, 1}, array[2]{21, 25}, array[2]{9, 13}, array[2]{28, 29}, array[2]{10, 13}, array[2]{26, 29}, array[2]{14, 23}, array[2]{4, 12}, array[2]{1, 2}};

#declare RedFaces = array[12]{array[6]{21, 14, 5, 9, 17, 21}, array[6]{7, 3, 0, 1, 5, 7}, array[6]{14, 23, 19, 11, 7, 14}, array[6]{8, 12, 20, 24, 15, 8}, array[6]{10, 18, 22, 15, 6, 10}, array[6]{29, 28, 24, 22, 26, 29}, array[6]{21, 25, 29, 27, 23, 21}, array[6]{6, 2, 0, 4, 8, 6}, array[6]{13, 17, 25, 26, 18, 13}, array[6]{19, 27, 28, 20, 16, 19}, array[6]{2, 10, 13, 9, 1, 2}, array[6]{3, 4, 12, 16, 11, 3}};

#declare YellowFaces = array[20]{array[4]{20, 12, 16, 20}, array[4]{19, 11, 16, 19}, array[4]{4, 8, 12, 4}, array[4]{10, 18, 13, 10}, array[4]{9, 17, 13, 9}, array[4]{3, 7, 11, 3}, array[4]{3, 4, 0, 3}, array[4]{28, 24, 20, 28}, array[4]{22, 24, 15, 22}, array[4]{21, 23, 14, 21}, array[4]{6, 8, 15, 6}, array[4]{5, 7, 14, 5}, array[4]{1, 5, 9, 1}, array[4]{27, 23, 19, 27}, array[4]{27, 28, 29, 27}, array[4]{26, 22, 18, 26}, array[4]{2, 6, 10, 2}, array[4]{2, 1, 0, 2}, array[4]{25, 21, 17, 25}, array[4]{25, 26, 29, 25}};




union{

    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
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

}
