#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// rhombic triacontahedron wireframe

#declare Factor = 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(5)/4)*Factor, (sqrt(5)/8 + 5/8)*Factor, (5/8 + 3*sqrt(5)/8)*Factor, }

#declare P = array[32]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[0],-Abs[2]>, <-Abs[3],Abs[0],Abs[2]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[3],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <-Abs[0],-Abs[3],-Abs[1]>, <-Abs[0],-Abs[3],Abs[1]>, <-Abs[0],-Abs[2],-Abs[3]>, <-Abs[0],-Abs[2],Abs[3]>, <-Abs[0],Abs[2],-Abs[3]>, <-Abs[0],Abs[2],Abs[3]>, <-Abs[0],Abs[3],-Abs[1]>, <-Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[3],Abs[0]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[0],-Abs[2]>, <Abs[3],Abs[0],Abs[2]>, <Abs[3],Abs[1],Abs[0]>, }

#declare Edges = array[60]{array[2]{14, 20}, array[2]{17, 21}, array[2]{22, 24}, array[2]{30, 31}, array[2]{11, 17}, array[2]{14, 23}, array[2]{24, 30}, array[2]{28, 30}, array[2]{23, 29}, array[2]{19, 27}, array[2]{12, 14}, array[2]{0, 1}, array[2]{15, 24}, array[2]{4, 5}, array[2]{8, 9}, array[2]{16, 25}, array[2]{22, 28}, array[2]{2, 8}, array[2]{17, 19}, array[2]{9, 18}, array[2]{26, 30}, array[2]{4, 12}, array[2]{25, 29}, array[2]{22, 23}, array[2]{6, 15}, array[2]{12, 22}, array[2]{16, 18}, array[2]{28, 29}, array[2]{7, 16}, array[2]{5, 14}, array[2]{2, 6}, array[2]{1, 7}, array[2]{4, 6}, array[2]{4, 13}, array[2]{2, 11}, array[2]{13, 15}, array[2]{13, 22}, array[2]{25, 27}, array[2]{29, 31}, array[2]{2, 3}, array[2]{10, 16}, array[2]{15, 21}, array[2]{17, 26}, array[2]{1, 5}, array[2]{1, 10}, array[2]{0, 4}, array[2]{3, 9}, array[2]{8, 17}, array[2]{10, 14}, array[2]{21, 30}, array[2]{27, 31}, array[2]{18, 27}, array[2]{20, 29}, array[2]{9, 19}, array[2]{26, 27}, array[2]{16, 20}, array[2]{11, 15}, array[2]{0, 2}, array[2]{1, 3}, array[2]{7, 9}};

union{
    #for( Index, 0, 31 )
        sphere{ P[Index], .02 }
    #end

    #for( Index, 0, 59 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], .02 }
    #end

    texture{ TGray }
}


/////////////////////////////////////////////


#declare Factor = .6738;

#declare Abs = array[7]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, (pow(1/2 + sqrt(5)/2, 2))*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (pow(1/2 + sqrt(5)/2, 3))*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],-Abs[1]>, <-Abs[6],-Abs[1],Abs[1]>, <-Abs[6],Abs[1],-Abs[1]>, <-Abs[6],Abs[1],Abs[1]>, <-Abs[5],-Abs[3],Abs[0]>, <-Abs[5],Abs[3],Abs[0]>, <-Abs[4],-Abs[2],-Abs[3]>, <-Abs[4],-Abs[2],Abs[3]>, <-Abs[4],Abs[2],-Abs[3]>, <-Abs[4],Abs[2],Abs[3]>, <-Abs[3],-Abs[4],-Abs[2]>, <-Abs[3],-Abs[4],Abs[2]>, <-Abs[3],Abs[0],-Abs[5]>, <-Abs[3],Abs[0],Abs[5]>, <-Abs[3],Abs[4],-Abs[2]>, <-Abs[3],Abs[4],Abs[2]>, <-Abs[2],-Abs[3],-Abs[4]>, <-Abs[2],-Abs[3],Abs[4]>, <-Abs[2],Abs[3],-Abs[4]>, <-Abs[2],Abs[3],Abs[4]>, <-Abs[1],-Abs[6],-Abs[1]>, <-Abs[1],-Abs[6],Abs[1]>, <-Abs[1],-Abs[1],-Abs[6]>, <-Abs[1],-Abs[1],Abs[6]>, <-Abs[1],Abs[1],-Abs[6]>, <-Abs[1],Abs[1],Abs[6]>, <-Abs[1],Abs[6],-Abs[1]>, <-Abs[1],Abs[6],Abs[1]>, <Abs[0],-Abs[5],-Abs[3]>, <Abs[0],-Abs[5],Abs[3]>, <Abs[0],Abs[5],-Abs[3]>, <Abs[0],Abs[5],Abs[3]>, <Abs[1],-Abs[6],-Abs[1]>, <Abs[1],-Abs[6],Abs[1]>, <Abs[1],-Abs[1],-Abs[6]>, <Abs[1],-Abs[1],Abs[6]>, <Abs[1],Abs[1],-Abs[6]>, <Abs[1],Abs[1],Abs[6]>, <Abs[1],Abs[6],-Abs[1]>, <Abs[1],Abs[6],Abs[1]>, <Abs[2],-Abs[3],-Abs[4]>, <Abs[2],-Abs[3],Abs[4]>, <Abs[2],Abs[3],-Abs[4]>, <Abs[2],Abs[3],Abs[4]>, <Abs[3],-Abs[4],-Abs[2]>, <Abs[3],-Abs[4],Abs[2]>, <Abs[3],Abs[0],-Abs[5]>, <Abs[3],Abs[0],Abs[5]>, <Abs[3],Abs[4],-Abs[2]>, <Abs[3],Abs[4],Abs[2]>, <Abs[4],-Abs[2],-Abs[3]>, <Abs[4],-Abs[2],Abs[3]>, <Abs[4],Abs[2],-Abs[3]>, <Abs[4],Abs[2],Abs[3]>, <Abs[5],-Abs[3],Abs[0]>, <Abs[5],Abs[3],Abs[0]>, <Abs[6],-Abs[1],-Abs[1]>, <Abs[6],-Abs[1],Abs[1]>, <Abs[6],Abs[1],-Abs[1]>, <Abs[6],Abs[1],Abs[1]>, }


#declare RedFaces = array[12]{array[6]{40, 28, 16, 22, 34, 40}, array[6]{7, 1, 3, 9, 13, 7}, array[6]{43, 31, 19, 25, 37, 43}, array[6]{44, 32, 33, 45, 54, 44}, array[6]{55, 49, 39, 38, 48, 55}, array[6]{5, 15, 27, 26, 14, 5}, array[6]{57, 59, 53, 47, 51, 57}, array[6]{58, 52, 46, 50, 56, 58}, array[6]{18, 30, 42, 36, 24, 18}, array[6]{41, 29, 17, 23, 35, 41}, array[6]{4, 10, 20, 21, 11, 4}, array[6]{12, 6, 0, 2, 8, 12}};

#declare YellowFaces = array[20]{array[4]{13, 25, 23, 13}, array[4]{5, 3, 2, 5}, array[4]{37, 35, 47, 37}, array[4]{4, 1, 0, 4}, array[4]{16, 6, 10, 16}, array[4]{34, 36, 46, 34}, array[4]{48, 52, 42, 48}, array[4]{31, 39, 27, 31}, array[4]{49, 53, 43, 49}, array[4]{15, 19, 9, 15}, array[4]{59, 58, 55, 59}, array[4]{24, 12, 22, 24}, array[4]{14, 18, 8, 14}, array[4]{54, 57, 56, 54}, array[4]{38, 30, 26, 38}, array[4]{29, 21, 33, 29}, array[4]{44, 50, 40, 44}, array[4]{17, 7, 11, 17}, array[4]{32, 28, 20, 32}, array[4]{41, 45, 51, 41}};

#declare BlueFaces = array[30]{array[5]{49, 39, 31, 43, 49}, array[5]{44, 40, 28, 32, 44}, array[5]{13, 23, 17, 7, 13}, array[5]{26, 27, 39, 38, 26}, array[5]{49, 55, 59, 53, 49}, array[5]{58, 56, 57, 59, 58}, array[5]{16, 6, 12, 22, 16}, array[5]{9, 3, 5, 15, 9}, array[5]{51, 45, 54, 57, 51}, array[5]{20, 10, 16, 28, 20}, array[5]{54, 56, 50, 44, 54}, array[5]{30, 38, 48, 42, 30}, array[5]{22, 34, 36, 24, 22}, array[5]{41, 45, 33, 29, 41}, array[5]{21, 33, 32, 20, 21}, array[5]{15, 27, 31, 19, 15}, array[5]{4, 10, 6, 0, 4}, array[5]{41, 35, 47, 51, 41}, array[5]{21, 29, 17, 11, 21}, array[5]{13, 9, 19, 25, 13}, array[5]{4, 11, 7, 1, 4}, array[5]{30, 26, 14, 18, 30}, array[5]{5, 2, 8, 14, 5}, array[5]{1, 0, 2, 3, 1}, array[5]{37, 47, 53, 43, 37}, array[5]{40, 34, 46, 50, 40}, array[5]{48, 52, 58, 55, 48}, array[5]{23, 35, 37, 25, 23}, array[5]{18, 8, 12, 24, 18}, array[5]{36, 42, 52, 46, 36}};

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
