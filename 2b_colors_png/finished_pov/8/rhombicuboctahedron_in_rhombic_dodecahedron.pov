#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// rhomic dodecahedron wireframe

#declare Factor = 2*sqrt(3);

#declare Abs = array[3]{ (0.0)*Factor, (3*sqrt(2)/8)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare UncoloredEdges = array[24]{array[2]{1, 5}, array[2]{1, 6}, array[2]{6, 11}, array[2]{4, 8}, array[2]{3, 8}, array[2]{11, 13}, array[2]{9, 13}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{8, 11}, array[2]{0, 2}, array[2]{7, 12}, array[2]{6, 9}, array[2]{12, 13}, array[2]{8, 12}, array[2]{7, 10}, array[2]{10, 13}, array[2]{0, 1}, array[2]{0, 4}, array[2]{3, 6}, array[2]{0, 3}, array[2]{2, 5}, array[2]{5, 9}};

union{
    #for( Index, 0, 13 )
        sphere{ P[Index], .02 }
    #end
    texture{ TGray }
}

union{
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], .02 }
    #end
    texture{ TGray }
}


////////////////////////////


#declare Factor = 1.076;

#declare Abs = array[2]{ (1)*Factor, (1 + sqrt(2))*Factor}

#declare P = array[24]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],-Abs[0],Abs[0]>, <-Abs[1],Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[1],Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],-Abs[0]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare RedFaces = array[6]{array[5]{14, 16, 8, 6, 14}, array[5]{10, 11, 19, 18, 10}, array[5]{22, 23, 21, 20, 22}, array[5]{1, 0, 2, 3, 1}, array[5]{9, 7, 15, 17, 9}, array[5]{12, 4, 5, 13, 12}};

#declare YellowFaces = array[8]{array[4]{4, 6, 0, 4}, array[4]{9, 11, 3, 9}, array[4]{19, 23, 17, 19}, array[4]{22, 16, 18, 22}, array[4]{8, 2, 10, 8}, array[4]{13, 21, 15, 13}, array[4]{5, 1, 7, 5}, array[4]{12, 14, 20, 12}};

#declare BlueFaces = array[12]{array[5]{15, 17, 23, 21, 15}, array[5]{10, 8, 16, 18, 10}, array[5]{13, 12, 20, 21, 13}, array[5]{3, 1, 7, 9, 3}, array[5]{12, 4, 6, 14, 12}, array[5]{15, 7, 5, 13, 15}, array[5]{0, 4, 5, 1, 0}, array[5]{14, 16, 22, 20, 14}, array[5]{11, 9, 17, 19, 11}, array[5]{2, 10, 11, 3, 2}, array[5]{2, 0, 6, 8, 2}, array[5]{18, 19, 23, 22, 18}};


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
















