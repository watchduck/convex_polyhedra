#include "polyhedra_colors.inc"


//////////////////////////////////////////////////////////////////// dodecahedron

#declare Factor = 3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4));

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare YellowVertices = array[20]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};

#declare BlueEdges = array[30]{array[2]{4, 10}, array[2]{12, 16}, array[2]{3, 7}, array[2]{2, 8}, array[2]{7, 13}, array[2]{2, 6}, array[2]{17, 19}, array[2]{13, 17}, array[2]{8, 14}, array[2]{13, 15}, array[2]{18, 19}, array[2]{12, 14}, array[2]{9, 15}, array[2]{8, 9}, array[2]{15, 18}, array[2]{10, 11}, array[2]{10, 16}, array[2]{5, 7}, array[2]{1, 5}, array[2]{0, 2}, array[2]{11, 17}, array[2]{6, 12}, array[2]{0, 1}, array[2]{16, 19}, array[2]{5, 11}, array[2]{4, 6}, array[2]{1, 4}, array[2]{0, 3}, array[2]{14, 18}, array[2]{3, 9}};

#declare RedFaces = array[12]{array[6]{14, 8, 9, 15, 18, 14}, array[6]{13, 15, 18, 19, 17, 13}, array[6]{8, 2, 6, 12, 14, 8}, array[6]{1, 4, 6, 2, 0, 1}, array[6]{16, 19, 17, 11, 10, 16}, array[6]{13, 7, 3, 9, 15, 13}, array[6]{18, 14, 12, 16, 19, 18}, array[6]{2, 8, 9, 3, 0, 2}, array[6]{7, 13, 17, 11, 5, 7}, array[6]{16, 10, 4, 6, 12, 16}, array[6]{7, 3, 0, 1, 5, 7}, array[6]{1, 5, 11, 10, 4, 1}};




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



//////////////////////////////////////////////////////////////////// icosahedron

#declare Factor = 3/(1/2 + sqrt(5)/2);

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare RedVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare BlueEdges = array[30]{array[2]{2, 4}, array[2]{4, 10}, array[2]{7, 9}, array[2]{7, 11}, array[2]{3, 7}, array[2]{1, 7}, array[2]{2, 8}, array[2]{2, 5}, array[2]{9, 10}, array[2]{4, 8}, array[2]{0, 4}, array[2]{10, 11}, array[2]{5, 7}, array[2]{3, 6}, array[2]{8, 11}, array[2]{8, 10}, array[2]{0, 2}, array[2]{9, 11}, array[2]{0, 1}, array[2]{6, 9}, array[2]{1, 3}, array[2]{5, 8}, array[2]{5, 11}, array[2]{6, 10}, array[2]{4, 6}, array[2]{1, 5}, array[2]{0, 6}, array[2]{0, 3}, array[2]{1, 2}, array[2]{3, 9}};

#declare YellowFaces = array[20]{array[4]{6, 3, 0, 6}, array[4]{8, 2, 5, 8}, array[4]{1, 2, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 0, 1}, array[4]{1, 7, 3, 1}, array[4]{1, 7, 5, 1}, array[4]{9, 6, 10, 9}, array[4]{9, 7, 3, 9}, array[4]{9, 6, 3, 9}, array[4]{4, 2, 0, 4}, array[4]{4, 6, 10, 4}, array[4]{4, 6, 0, 4}, array[4]{4, 8, 10, 4}, array[4]{4, 8, 2, 4}, array[4]{11, 7, 5, 11}, array[4]{11, 8, 5, 11}, array[4]{11, 8, 10, 11}, array[4]{11, 9, 10, 11}, array[4]{11, 9, 7, 11}};


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

//////////////////////////////////////////////////////////////////// icosidodecahedron


#declare Factor = 3/(1/2 + sqrt(5)/2);

#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare BlueVertices = array[30]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};

#declare UncoloredEdges = array[60]{array[2]{12, 20}, array[2]{25, 26}, array[2]{11, 16}, array[2]{16, 20}, array[2]{3, 7}, array[2]{22, 26}, array[2]{6, 15}, array[2]{22, 24}, array[2]{21, 23}, array[2]{15, 24}, array[2]{23, 27}, array[2]{18, 26}, array[2]{2, 6}, array[2]{11, 19}, array[2]{0, 4}, array[2]{5, 14}, array[2]{5, 9}, array[2]{8, 15}, array[2]{6, 8}, array[2]{14, 21}, array[2]{0, 2}, array[2]{18, 22}, array[2]{16, 19}, array[2]{7, 14}, array[2]{13, 18}, array[2]{6, 10}, array[2]{1, 5}, array[2]{0, 3}, array[2]{12, 16}, array[2]{9, 17}, array[2]{7, 11}, array[2]{20, 28}, array[2]{17, 21}, array[2]{17, 25}, array[2]{24, 28}, array[2]{27, 29}, array[2]{27, 28}, array[2]{20, 24}, array[2]{25, 29}, array[2]{4, 8}, array[2]{15, 22}, array[2]{19, 23}, array[2]{8, 12}, array[2]{10, 18}, array[2]{13, 17}, array[2]{3, 11}, array[2]{19, 27}, array[2]{1, 9}, array[2]{5, 7}, array[2]{2, 10}, array[2]{3, 4}, array[2]{0, 1}, array[2]{21, 25}, array[2]{9, 13}, array[2]{28, 29}, array[2]{10, 13}, array[2]{26, 29}, array[2]{14, 23}, array[2]{4, 12}, array[2]{1, 2}};


#declare RadVert = RadVert * 2/3;
#declare RadEdge = RadEdge * 2/3;

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

}
