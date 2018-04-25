#include "polyhedra_colors.inc"




#declare Factor = 3/((-2 + 2*sqrt(2))*(sqrt(2)/2 + 1));


#declare Abs = array[2]{ (-1 + sqrt(2))*Factor, (1)*Factor}

#declare P = array[24]{ <-Abs[1],-Abs[1],-Abs[0]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],-Abs[0],-Abs[1]>, <-Abs[1],-Abs[0],Abs[1]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],-Abs[0]>, <-Abs[1],Abs[1],Abs[0]>, <-Abs[0],-Abs[1],-Abs[1]>, <-Abs[0],-Abs[1],Abs[1]>, <-Abs[0],Abs[1],-Abs[1]>, <-Abs[0],Abs[1],Abs[1]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],-Abs[0]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[1]>, <Abs[1],-Abs[0],Abs[1]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],-Abs[0]>, <Abs[1],Abs[1],Abs[0]>}

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};

#declare BlueEdges = array[12]{array[2]{9, 13}, array[2]{19, 21}, array[2]{8, 12}, array[2]{2, 4}, array[2]{0, 1}, array[2]{6, 7}, array[2]{22, 23}, array[2]{11, 15}, array[2]{10, 14}, array[2]{3, 5}, array[2]{18, 20}, array[2]{16, 17}};

#declare UncoloredEdges = array[24]{array[2]{15, 23}, array[2]{13, 19}, array[2]{17, 19}, array[2]{4, 10}, array[2]{21, 23}, array[2]{5, 11}, array[2]{1, 9}, array[2]{12, 16}, array[2]{20, 22}, array[2]{0, 2}, array[2]{0, 8}, array[2]{1, 3}, array[2]{3, 9}, array[2]{15, 21}, array[2]{14, 20}, array[2]{12, 18}, array[2]{2, 8}, array[2]{14, 22}, array[2]{6, 10}, array[2]{4, 6}, array[2]{7, 11}, array[2]{16, 18}, array[2]{13, 17}, array[2]{5, 7}};

#declare RedFaces = array[6]{array[9]{7, 6, 10, 14, 22, 23, 15, 11, 7}, array[9]{12, 16, 17, 13, 9, 1, 0, 8, 12}, array[9]{18, 16, 17, 19, 21, 23, 22, 20, 18}, array[9]{19, 13, 9, 3, 5, 11, 15, 21, 19}, array[9]{12, 18, 20, 14, 10, 4, 2, 8, 12}, array[9]{5, 3, 1, 0, 2, 4, 6, 7, 5}};

#declare YellowFaces = array[8]{array[4]{8, 2, 0, 8}, array[4]{1, 9, 3, 1}, array[4]{4, 10, 6, 4}, array[4]{7, 5, 11, 7}, array[4]{13, 17, 19, 13}, array[4]{23, 21, 15, 23}, array[4]{12, 18, 16, 12}, array[4]{14, 20, 22, 14}};




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

