#include "polyhedra_colors.inc"




#declare Factor = 3.0*sqrt(2);


#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 1, 2, 3, 4, 5};

#declare BlueEdges = array[12]{array[2]{1, 5}, array[2]{1, 3}, array[2]{3, 5}, array[2]{4, 5}, array[2]{0, 1}, array[2]{1, 2}, array[2]{0, 4}, array[2]{3, 4}, array[2]{0, 2}, array[2]{2, 5}, array[2]{2, 4}, array[2]{0, 3}};

#declare YellowFaces = array[8]{array[4]{3, 4, 0, 3}, array[4]{3, 4, 5, 3}, array[4]{2, 4, 0, 2}, array[4]{2, 4, 5, 2}, array[4]{1, 3, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 0, 1}, array[4]{1, 2, 5, 1}};




union{

    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TRed }
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

    rotate Rotate
}
