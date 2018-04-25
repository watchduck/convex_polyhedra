#include "polyhedra_colors.inc"



#declare Factor = 3.0;
#declare Abs = array[3]{ (0)*Factor, (1/(0.5 + sqrt(6)/2))*Factor, (sqrt(6)/3)*Factor, }
#declare P = array[20]{ <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, }

#declare YellowVertices = array[8]{4, 5, 6, 7, 12, 13, 14, 15};

#declare BlueVertices = array[12]{0, 1, 2, 3, 8, 9, 10, 11, 16, 17, 18, 19};

#declare UncoloredEdges = array[48]{array[2]{0, 4}, array[2]{16, 18}, array[2]{18, 19}, array[2]{0, 1}, array[2]{1, 6}, array[2]{9, 18}, array[2]{3, 11}, array[2]{12, 16}, array[2]{2, 11}, array[2]{1, 3}, array[2]{4, 8}, array[2]{11, 18}, array[2]{11, 15}, array[2]{2, 3}, array[2]{10, 19}, array[2]{0, 9}, array[2]{15, 18}, array[2]{1, 10}, array[2]{2, 9}, array[2]{3, 7}, array[2]{8, 17}, array[2]{2, 7}, array[2]{9, 16}, array[2]{8, 12}, array[2]{0, 8}, array[2]{1, 8}, array[2]{11, 19}, array[2]{0, 2}, array[2]{5, 9}, array[2]{9, 13}, array[2]{7, 11}, array[2]{15, 19}, array[2]{0, 5}, array[2]{13, 18}, array[2]{6, 10}, array[2]{14, 19}, array[2]{14, 17}, array[2]{3, 6}, array[2]{17, 19}, array[2]{3, 10}, array[2]{8, 16}, array[2]{2, 5}, array[2]{10, 14}, array[2]{16, 17}, array[2]{13, 16}, array[2]{1, 4}, array[2]{12, 17}, array[2]{10, 17}};

#declare RedFaces = array[6]{array[5]{19, 11, 3, 10, 19}, array[5]{16, 17, 19, 18, 16}, array[5]{0, 8, 16, 9, 0}, array[5]{1, 10, 17, 8, 1}, array[5]{0, 1, 3, 2, 0}, array[5]{2, 9, 18, 11, 2}};

#declare UncoloredFaces = array[24]{array[4]{19, 11, 15, 19}, array[4]{5, 2, 0, 5}, array[4]{5, 9, 0, 5}, array[4]{5, 9, 2, 5}, array[4]{18, 19, 15, 18}, array[4]{18, 11, 15, 18}, array[4]{7, 2, 3, 7}, array[4]{7, 11, 2, 7}, array[4]{7, 11, 3, 7}, array[4]{4, 1, 0, 4}, array[4]{4, 8, 0, 4}, array[4]{4, 8, 1, 4}, array[4]{6, 1, 3, 6}, array[4]{13, 9, 16, 13}, array[4]{13, 18, 9, 13}, array[4]{13, 18, 16, 13}, array[4]{10, 6, 3, 10}, array[4]{10, 6, 1, 10}, array[4]{12, 8, 16, 12}, array[4]{12, 17, 16, 12}, array[4]{12, 17, 8, 12}, array[4]{14, 17, 19, 14}, array[4]{14, 10, 19, 14}, array[4]{14, 10, 17, 14}};





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
