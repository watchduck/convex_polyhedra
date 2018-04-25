#include "polyhedra_colors.inc"


{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, }

#declare YellowVertices = array[4]{0, 1, 2, 3};

#declare BlueEdges = array[6]{array[2]{0, 2}, array[2]{1, 3}, array[2]{1, 2}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 3}};

#declare RedFaces = array[4]{array[4]{1, 2, 0, 1}, array[4]{3, 2, 0, 3}, array[4]{3, 1, 0, 3}, array[4]{3, 1, 2, 3}};



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
