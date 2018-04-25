#include "polyhedra_colors.inc"




#declare Factor = 3.0;


#declare Abs = array[1]{ (1)*Factor, }
#declare NumberOfVertices = 8;
#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{1, 2, 4, 7};

#declare YellowVertices = array[4]{0, 3, 5, 6};

#declare UncoloredEdges = array[12]{array[2]{1, 3}, array[2]{4, 6}, array[2]{2, 3}, array[2]{5, 7}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 6}, array[2]{0, 1}, array[2]{0, 2}, array[2]{4, 5}, array[2]{6, 7}, array[2]{1, 5}};

#declare BlueFaces = array[6]{array[5]{4, 6, 7, 5, 4}, array[5]{0, 2, 6, 4, 0}, array[5]{5, 4, 0, 1, 5}, array[5]{3, 1, 5, 7, 3}, array[5]{6, 7, 3, 2, 6}, array[5]{2, 0, 1, 3, 2}};





#declare Bluerad = 3*sqrt(2)/2;
sphere{<0, 0, 0>, Bluerad   pigment{color rgbt<1, 1, 1, .4>}  }




    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
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
