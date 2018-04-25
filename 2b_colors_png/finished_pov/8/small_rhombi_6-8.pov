#include "polyhedra_colors.inc"




#declare Factor = 3/sqrt(2*sqrt(2) + 4);


#declare Abs = array[2]{ (1)*Factor, (1 + sqrt(2))*Factor}

#declare P = array[24]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],-Abs[0],Abs[0]>, <-Abs[1],Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[1],Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],-Abs[0]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};

#declare UncoloredEdges = array[48]{array[2]{12, 20}, array[2]{17, 19}, array[2]{3, 11}, array[2]{21, 23}, array[2]{16, 22}, array[2]{4, 12}, array[2]{20, 21}, array[2]{6, 8}, array[2]{13, 21}, array[2]{5, 13}, array[2]{14, 16}, array[2]{20, 22}, array[2]{0, 1}, array[2]{12, 13}, array[2]{2, 3}, array[2]{0, 4}, array[2]{22, 23}, array[2]{9, 11}, array[2]{0, 2}, array[2]{18, 22}, array[2]{7, 15}, array[2]{1, 5}, array[2]{9, 17}, array[2]{1, 3}, array[2]{3, 9}, array[2]{15, 21}, array[2]{12, 14}, array[2]{14, 20}, array[2]{7, 9}, array[2]{4, 5}, array[2]{6, 14}, array[2]{18, 19}, array[2]{11, 19}, array[2]{2, 8}, array[2]{15, 17}, array[2]{19, 23}, array[2]{0, 6}, array[2]{8, 16}, array[2]{2, 10}, array[2]{1, 7}, array[2]{4, 6}, array[2]{17, 23}, array[2]{8, 10}, array[2]{10, 18}, array[2]{16, 18}, array[2]{13, 15}, array[2]{10, 11}, array[2]{5, 7}};

#declare RedFaces = array[6]{array[5]{14, 16, 8, 6, 14}, array[5]{10, 11, 19, 18, 10}, array[5]{22, 23, 21, 20, 22}, array[5]{1, 0, 2, 3, 1}, array[5]{9, 7, 15, 17, 9}, array[5]{12, 4, 5, 13, 12}};

#declare YellowFaces = array[8]{array[4]{4, 6, 0, 4}, array[4]{9, 11, 3, 9}, array[4]{19, 23, 17, 19}, array[4]{22, 16, 18, 22}, array[4]{8, 2, 10, 8}, array[4]{13, 21, 15, 13}, array[4]{5, 1, 7, 5}, array[4]{12, 14, 20, 12}};

#declare BlueFaces = array[12]{array[5]{15, 17, 23, 21, 15}, array[5]{10, 8, 16, 18, 10}, array[5]{13, 12, 20, 21, 13}, array[5]{3, 1, 7, 9, 3}, array[5]{12, 4, 6, 14, 12}, array[5]{15, 7, 5, 13, 15}, array[5]{0, 4, 5, 1, 0}, array[5]{14, 16, 22, 20, 14}, array[5]{11, 9, 17, 19, 11}, array[5]{2, 10, 11, 3, 2}, array[5]{2, 0, 6, 8, 2}, array[5]{18, 19, 23, 22, 18}};




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

