#include "polyhedra_colors.inc"



#declare Factor = 1;


#declare Abs = array[2]{ (1)*Factor, (3)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, }

#declare UncoloredVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare BlueEdges = array[6]{array[2]{5, 9}, array[2]{4, 7}, array[2]{3, 8}, array[2]{0, 1}, array[2]{10, 11}, array[2]{2, 6}};

#declare UncoloredEdges = array[12]{array[2]{1, 5}, array[2]{6, 7}, array[2]{4, 5}, array[2]{1, 4}, array[2]{7, 10}, array[2]{2, 3}, array[2]{6, 10}, array[2]{0, 3}, array[2]{8, 11}, array[2]{9, 11}, array[2]{0, 2}, array[2]{8, 9}};

#declare RedFaces = array[4]{array[7]{11, 8, 3, 2, 6, 10, 11}, array[7]{8, 9, 5, 1, 0, 3, 8}, array[7]{11, 9, 5, 4, 7, 10, 11}, array[7]{2, 6, 7, 4, 1, 0, 2}};

#declare YellowFaces = array[4]{array[4]{1, 4, 5, 1}, array[4]{7, 6, 10, 7}, array[4]{11, 9, 8, 11}, array[4]{3, 2, 0, 3}};




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
