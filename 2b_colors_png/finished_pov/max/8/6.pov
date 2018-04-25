#include "polyhedra_colors.inc"




#declare Factor = 3.1;


#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare YellowVertices = array[8]{0, 1, 2, 3, 4, 5, 6, 7};

#declare BlueEdges = array[12]{array[2]{6, 7}, array[2]{1, 5}, array[2]{1, 3}, array[2]{4, 5}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{4, 6}, array[2]{0, 2}, array[2]{3, 7}, array[2]{2, 6}, array[2]{5, 7}};

#declare RedFaces = array[6]{array[5]{5, 4, 6, 7, 5}, array[5]{2, 0, 4, 6, 2}, array[5]{0, 4, 5, 1, 0}, array[5]{1, 3, 7, 5, 1}, array[5]{2, 6, 7, 3, 2}, array[5]{1, 0, 2, 3, 1}};




union{

    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TYellow }
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

    rotate Rotate
}
