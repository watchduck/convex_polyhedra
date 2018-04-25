#include "polyhedra_colors.inc"



{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[8]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (2 + sqrt(5))*Factor, (3/2 + 3*sqrt(5)/2)*Factor, }

#declare P = array[60]{ <-Abs[7],Abs[0],-Abs[1]>, <-Abs[7],Abs[0],Abs[1]>, <-Abs[6],-Abs[2],-Abs[3]>, <-Abs[6],-Abs[2],Abs[3]>, <-Abs[6],Abs[2],-Abs[3]>, <-Abs[6],Abs[2],Abs[3]>, <-Abs[5],-Abs[4],-Abs[1]>, <-Abs[5],-Abs[4],Abs[1]>, <-Abs[5],Abs[4],-Abs[1]>, <-Abs[5],Abs[4],Abs[1]>, <-Abs[4],-Abs[1],-Abs[5]>, <-Abs[4],-Abs[1],Abs[5]>, <-Abs[4],Abs[1],-Abs[5]>, <-Abs[4],Abs[1],Abs[5]>, <-Abs[3],-Abs[6],-Abs[2]>, <-Abs[3],-Abs[6],Abs[2]>, <-Abs[3],Abs[6],-Abs[2]>, <-Abs[3],Abs[6],Abs[2]>, <-Abs[2],-Abs[3],-Abs[6]>, <-Abs[2],-Abs[3],Abs[6]>, <-Abs[2],Abs[3],-Abs[6]>, <-Abs[2],Abs[3],Abs[6]>, <-Abs[1],-Abs[7],Abs[0]>, <-Abs[1],-Abs[5],-Abs[4]>, <-Abs[1],-Abs[5],Abs[4]>, <-Abs[1],Abs[5],-Abs[4]>, <-Abs[1],Abs[5],Abs[4]>, <-Abs[1],Abs[7],Abs[0]>, <Abs[0],-Abs[1],-Abs[7]>, <Abs[0],-Abs[1],Abs[7]>, <Abs[0],Abs[1],-Abs[7]>, <Abs[0],Abs[1],Abs[7]>, <Abs[1],-Abs[7],Abs[0]>, <Abs[1],-Abs[5],-Abs[4]>, <Abs[1],-Abs[5],Abs[4]>, <Abs[1],Abs[5],-Abs[4]>, <Abs[1],Abs[5],Abs[4]>, <Abs[1],Abs[7],Abs[0]>, <Abs[2],-Abs[3],-Abs[6]>, <Abs[2],-Abs[3],Abs[6]>, <Abs[2],Abs[3],-Abs[6]>, <Abs[2],Abs[3],Abs[6]>, <Abs[3],-Abs[6],-Abs[2]>, <Abs[3],-Abs[6],Abs[2]>, <Abs[3],Abs[6],-Abs[2]>, <Abs[3],Abs[6],Abs[2]>, <Abs[4],-Abs[1],-Abs[5]>, <Abs[4],-Abs[1],Abs[5]>, <Abs[4],Abs[1],-Abs[5]>, <Abs[4],Abs[1],Abs[5]>, <Abs[5],-Abs[4],-Abs[1]>, <Abs[5],-Abs[4],Abs[1]>, <Abs[5],Abs[4],-Abs[1]>, <Abs[5],Abs[4],Abs[1]>, <Abs[6],-Abs[2],-Abs[3]>, <Abs[6],-Abs[2],Abs[3]>, <Abs[6],Abs[2],-Abs[3]>, <Abs[6],Abs[2],Abs[3]>, <Abs[7],Abs[0],-Abs[1]>, <Abs[7],Abs[0],Abs[1]>, }

#declare UncoloredVertices = array[60]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59};

#declare BlueEdges = array[30]{array[2]{13, 21}, array[2]{12, 20}, array[2]{3, 7}, array[2]{58, 59}, array[2]{15, 24}, array[2]{28, 30}, array[2]{50, 54}, array[2]{2, 6}, array[2]{51, 55}, array[2]{11, 19}, array[2]{53, 57}, array[2]{17, 26}, array[2]{35, 44}, array[2]{4, 8}, array[2]{10, 18}, array[2]{36, 45}, array[2]{40, 48}, array[2]{14, 23}, array[2]{22, 32}, array[2]{52, 56}, array[2]{5, 9}, array[2]{34, 43}, array[2]{41, 49}, array[2]{33, 42}, array[2]{38, 46}, array[2]{29, 31}, array[2]{16, 25}, array[2]{27, 37}, array[2]{0, 1}, array[2]{39, 47}};

#declare UncoloredEdges = array[60]{array[2]{55, 59}, array[2]{33, 38}, array[2]{43, 51}, array[2]{56, 58}, array[2]{46, 54}, array[2]{20, 30}, array[2]{47, 49}, array[2]{50, 51}, array[2]{36, 41}, array[2]{37, 44}, array[2]{21, 26}, array[2]{6, 7}, array[2]{46, 48}, array[2]{17, 27}, array[2]{16, 27}, array[2]{42, 50}, array[2]{57, 59}, array[2]{3, 11}, array[2]{35, 40}, array[2]{2, 10}, array[2]{34, 39}, array[2]{20, 25}, array[2]{32, 43}, array[2]{1, 3}, array[2]{31, 41}, array[2]{5, 13}, array[2]{54, 58}, array[2]{48, 56}, array[2]{29, 39}, array[2]{28, 38}, array[2]{45, 53}, array[2]{23, 33}, array[2]{14, 22}, array[2]{32, 42}, array[2]{47, 55}, array[2]{8, 16}, array[2]{0, 4}, array[2]{49, 57}, array[2]{7, 15}, array[2]{0, 2}, array[2]{11, 13}, array[2]{37, 45}, array[2]{30, 40}, array[2]{1, 5}, array[2]{25, 35}, array[2]{18, 28}, array[2]{9, 17}, array[2]{18, 23}, array[2]{19, 29}, array[2]{10, 12}, array[2]{15, 22}, array[2]{8, 9}, array[2]{21, 31}, array[2]{6, 14}, array[2]{52, 53}, array[2]{24, 34}, array[2]{44, 52}, array[2]{4, 12}, array[2]{19, 24}, array[2]{26, 36}};

#declare RedFaces = array[12]{array[6]{27, 16, 8, 9, 17, 27}, array[6]{24, 19, 29, 39, 34, 24}, array[6]{50, 51, 43, 32, 42, 50}, array[6]{46, 48, 56, 58, 54, 46}, array[6]{25, 20, 30, 40, 35, 25}, array[6]{44, 52, 53, 45, 37, 44}, array[6]{22, 14, 6, 7, 15, 22}, array[6]{23, 18, 28, 38, 33, 23}, array[6]{31, 21, 26, 36, 41, 31}, array[6]{2, 0, 4, 12, 10, 2}, array[6]{3, 1, 5, 13, 11, 3}, array[6]{59, 55, 47, 49, 57, 59}};

#declare YellowFaces = array[20]{array[7]{11, 19, 29, 31, 21, 13, 11}, array[7]{4, 8, 16, 25, 20, 12, 4}, array[7]{13, 21, 26, 17, 9, 5, 13}, array[7]{14, 22, 32, 42, 33, 23, 14}, array[7]{1, 0, 4, 8, 9, 5, 1}, array[7]{11, 19, 24, 15, 7, 3, 11}, array[7]{2, 10, 18, 23, 14, 6, 2}, array[7]{18, 28, 30, 20, 12, 10, 18}, array[7]{49, 41, 31, 29, 39, 47, 49}, array[7]{51, 43, 34, 39, 47, 55, 51}, array[7]{1, 0, 2, 6, 7, 3, 1}, array[7]{30, 28, 38, 46, 48, 40, 30}, array[7]{16, 25, 35, 44, 37, 27, 16}, array[7]{45, 36, 41, 49, 57, 53, 45}, array[7]{56, 48, 40, 35, 44, 52, 56}, array[7]{57, 53, 52, 56, 58, 59, 57}, array[7]{50, 51, 55, 59, 58, 54, 50}, array[7]{54, 50, 42, 33, 38, 46, 54}, array[7]{24, 15, 22, 32, 43, 34, 24}, array[7]{17, 26, 36, 45, 37, 27, 17}};






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
