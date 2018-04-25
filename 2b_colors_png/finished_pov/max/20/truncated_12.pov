#include "polyhedra_colors.inc"




#declare Factor = 1.14;


#declare Abs = array[7]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5)/2 + 3/2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, }

#declare P = array[60]{ <-Abs[6],-Abs[1],Abs[0]>, <-Abs[6],Abs[1],Abs[0]>, <-Abs[5],-Abs[2],-Abs[1]>, <-Abs[5],-Abs[2],Abs[1]>, <-Abs[5],Abs[2],-Abs[1]>, <-Abs[5],Abs[2],Abs[1]>, <-Abs[4],-Abs[3],-Abs[2]>, <-Abs[4],-Abs[3],Abs[2]>, <-Abs[4],Abs[3],-Abs[2]>, <-Abs[4],Abs[3],Abs[2]>, <-Abs[3],-Abs[2],-Abs[4]>, <-Abs[3],-Abs[2],Abs[4]>, <-Abs[3],Abs[2],-Abs[4]>, <-Abs[3],Abs[2],Abs[4]>, <-Abs[2],-Abs[4],-Abs[3]>, <-Abs[2],-Abs[4],Abs[3]>, <-Abs[2],-Abs[1],-Abs[5]>, <-Abs[2],-Abs[1],Abs[5]>, <-Abs[2],Abs[1],-Abs[5]>, <-Abs[2],Abs[1],Abs[5]>, <-Abs[2],Abs[4],-Abs[3]>, <-Abs[2],Abs[4],Abs[3]>, <-Abs[1],-Abs[5],-Abs[2]>, <-Abs[1],-Abs[5],Abs[2]>, <-Abs[1],Abs[0],-Abs[6]>, <-Abs[1],Abs[0],Abs[6]>, <-Abs[1],Abs[5],-Abs[2]>, <-Abs[1],Abs[5],Abs[2]>, <Abs[0],-Abs[6],-Abs[1]>, <Abs[0],-Abs[6],Abs[1]>, <Abs[0],Abs[6],-Abs[1]>, <Abs[0],Abs[6],Abs[1]>, <Abs[1],-Abs[5],-Abs[2]>, <Abs[1],-Abs[5],Abs[2]>, <Abs[1],Abs[0],-Abs[6]>, <Abs[1],Abs[0],Abs[6]>, <Abs[1],Abs[5],-Abs[2]>, <Abs[1],Abs[5],Abs[2]>, <Abs[2],-Abs[4],-Abs[3]>, <Abs[2],-Abs[4],Abs[3]>, <Abs[2],-Abs[1],-Abs[5]>, <Abs[2],-Abs[1],Abs[5]>, <Abs[2],Abs[1],-Abs[5]>, <Abs[2],Abs[1],Abs[5]>, <Abs[2],Abs[4],-Abs[3]>, <Abs[2],Abs[4],Abs[3]>, <Abs[3],-Abs[2],-Abs[4]>, <Abs[3],-Abs[2],Abs[4]>, <Abs[3],Abs[2],-Abs[4]>, <Abs[3],Abs[2],Abs[4]>, <Abs[4],-Abs[3],-Abs[2]>, <Abs[4],-Abs[3],Abs[2]>, <Abs[4],Abs[3],-Abs[2]>, <Abs[4],Abs[3],Abs[2]>, <Abs[5],-Abs[2],-Abs[1]>, <Abs[5],-Abs[2],Abs[1]>, <Abs[5],Abs[2],-Abs[1]>, <Abs[5],Abs[2],Abs[1]>, <Abs[6],-Abs[1],Abs[0]>, <Abs[6],Abs[1],Abs[0]>, }

#declare UncoloredVertices = array[60]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59};

#declare BlueEdges = array[30]{array[2]{3, 7}, array[2]{43, 49}, array[2]{58, 59}, array[2]{50, 54}, array[2]{21, 27}, array[2]{41, 47}, array[2]{51, 55}, array[2]{2, 6}, array[2]{32, 38}, array[2]{53, 57}, array[2]{33, 39}, array[2]{4, 8}, array[2]{13, 19}, array[2]{28, 29}, array[2]{20, 26}, array[2]{40, 46}, array[2]{15, 23}, array[2]{52, 56}, array[2]{14, 22}, array[2]{5, 9}, array[2]{11, 17}, array[2]{37, 45}, array[2]{25, 35}, array[2]{42, 48}, array[2]{36, 44}, array[2]{12, 18}, array[2]{30, 31}, array[2]{10, 16}, array[2]{0, 1}, array[2]{24, 34}};

#declare UncoloredEdges = array[60]{array[2]{13, 21}, array[2]{12, 20}, array[2]{35, 41}, array[2]{55, 58}, array[2]{2, 3}, array[2]{41, 43}, array[2]{0, 3}, array[2]{34, 42}, array[2]{54, 55}, array[2]{7, 11}, array[2]{46, 50}, array[2]{29, 33}, array[2]{34, 40}, array[2]{16, 18}, array[2]{57, 59}, array[2]{8, 12}, array[2]{16, 24}, array[2]{8, 20}, array[2]{56, 57}, array[2]{18, 24}, array[2]{28, 32}, array[2]{31, 37}, array[2]{23, 29}, array[2]{40, 42}, array[2]{1, 4}, array[2]{45, 49}, array[2]{26, 30}, array[2]{22, 28}, array[2]{27, 31}, array[2]{35, 43}, array[2]{47, 51}, array[2]{48, 52}, array[2]{54, 58}, array[2]{22, 32}, array[2]{45, 53}, array[2]{38, 50}, array[2]{23, 33}, array[2]{7, 15}, array[2]{19, 25}, array[2]{0, 2}, array[2]{44, 48}, array[2]{10, 14}, array[2]{39, 51}, array[2]{6, 10}, array[2]{1, 5}, array[2]{11, 15}, array[2]{49, 53}, array[2]{17, 25}, array[2]{56, 59}, array[2]{17, 19}, array[2]{38, 46}, array[2]{30, 36}, array[2]{6, 14}, array[2]{9, 21}, array[2]{27, 37}, array[2]{4, 5}, array[2]{44, 52}, array[2]{9, 13}, array[2]{26, 36}, array[2]{39, 47}};

#declare RedFaces = array[12]{array[11]{52, 56, 57, 53, 45, 37, 31, 30, 36, 44, 52}, array[11]{15, 23, 33, 39, 47, 41, 35, 25, 17, 11, 15}, array[11]{22, 32, 38, 46, 40, 34, 24, 16, 10, 14, 22}, array[11]{48, 44, 36, 26, 20, 12, 18, 24, 34, 42, 48}, array[11]{3, 7, 11, 17, 19, 13, 9, 5, 1, 0, 3}, array[11]{45, 37, 27, 21, 13, 19, 25, 35, 43, 49, 45}, array[11]{20, 26, 30, 31, 27, 21, 9, 5, 4, 8, 20}, array[11]{51, 39, 33, 29, 28, 32, 38, 50, 54, 55, 51}, array[11]{42, 48, 52, 56, 59, 58, 54, 50, 46, 40, 42}, array[11]{12, 8, 4, 1, 0, 2, 6, 10, 16, 18, 12}, array[11]{22, 28, 29, 23, 15, 7, 3, 2, 6, 14, 22}, array[11]{58, 59, 57, 53, 49, 43, 41, 47, 51, 55, 58}};

#declare YellowFaces = array[20]{array[4]{19, 17, 25, 19}, array[4]{33, 23, 29, 33}, array[4]{37, 27, 31, 37}, array[4]{1, 5, 4, 1}, array[4]{12, 20, 8, 12}, array[4]{16, 18, 24, 16}, array[4]{26, 36, 30, 26}, array[4]{44, 52, 48, 44}, array[4]{13, 21, 9, 13}, array[4]{59, 57, 56, 59}, array[4]{49, 53, 45, 49}, array[4]{2, 3, 0, 2}, array[4]{34, 42, 40, 34}, array[4]{55, 54, 58, 55}, array[4]{50, 46, 38, 50}, array[4]{39, 51, 47, 39}, array[4]{10, 14, 6, 10}, array[4]{41, 35, 43, 41}, array[4]{15, 7, 11, 15}, array[4]{28, 32, 22, 28}};






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
