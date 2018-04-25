#include "polyhedra_colors.inc"




#declare Factor = 3.2;


#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare UncoloredVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare UncoloredEdges = array[24]{array[2]{0, 2}, array[2]{0, 5}, array[2]{5, 8}, array[2]{2, 7}, array[2]{0, 4}, array[2]{4, 9}, array[2]{2, 5}, array[2]{1, 6}, array[2]{5, 10}, array[2]{8, 9}, array[2]{6, 11}, array[2]{3, 6}, array[2]{3, 7}, array[2]{10, 11}, array[2]{2, 3}, array[2]{1, 4}, array[2]{7, 10}, array[2]{4, 8}, array[2]{7, 11}, array[2]{8, 10}, array[2]{1, 3}, array[2]{6, 9}, array[2]{9, 11}, array[2]{0, 1}};

#declare RedFaces = array[4]{array[4]{5, 2, 0, 5}, array[4]{11, 10, 7, 11}, array[4]{6, 1, 3, 6}, array[4]{9, 4, 8, 9}};

#declare YellowFaces = array[4]{array[4]{7, 2, 3, 7}, array[4]{4, 1, 0, 4}, array[4]{10, 5, 8, 10}, array[4]{9, 6, 11, 9}};

#declare BlueFaces = array[6]{array[5]{9, 11, 10, 8, 9}, array[5]{11, 6, 3, 7, 11}, array[5]{1, 6, 9, 4, 1}, array[5]{8, 4, 0, 5, 8}, array[5]{0, 1, 3, 2, 0}, array[5]{2, 7, 10, 5, 2}};




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
