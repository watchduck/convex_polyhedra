#include "polyhedra_colors.inc"


#declare Factor = 1.062475125431766;
#declare Abs = array[10]{ (0.0)*Factor, (0.5)*Factor, (0.8090169943749475)*Factor, (0.8506508083520399)*Factor, (1.0257311121191337)*Factor, (1.6596678027269873)*Factor, (1.8763819204711736)*Factor, (2.1596678027269873)*Factor, (2.185398914846121)*Factor, (2.685398914846121)*Factor, }

#declare P = array[80]{ <-Abs[9],-Abs[4],Abs[0]>, <-Abs[9],-Abs[1],-Abs[3]>, <-Abs[9],-Abs[1],Abs[3]>, <-Abs[9],Abs[1],-Abs[3]>, <-Abs[9],Abs[1],Abs[3]>, <-Abs[9],Abs[4],Abs[0]>, <-Abs[8],-Abs[2],-Abs[5]>, <-Abs[8],-Abs[2],Abs[5]>, <-Abs[8],Abs[2],-Abs[5]>, <-Abs[8],Abs[2],Abs[5]>, <-Abs[7],-Abs[6],Abs[0]>, <-Abs[7],Abs[6],Abs[0]>, <-Abs[6],Abs[0],-Abs[7]>, <-Abs[6],Abs[0],Abs[7]>, <-Abs[5],-Abs[8],-Abs[2]>, <-Abs[5],-Abs[8],Abs[2]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[5],Abs[8],-Abs[2]>, <-Abs[5],Abs[8],Abs[2]>, <-Abs[4],Abs[0],-Abs[9]>, <-Abs[4],Abs[0],Abs[9]>, <-Abs[3],-Abs[9],-Abs[1]>, <-Abs[3],-Abs[9],Abs[1]>, <-Abs[3],Abs[9],-Abs[1]>, <-Abs[3],Abs[9],Abs[1]>, <-Abs[2],-Abs[5],-Abs[8]>, <-Abs[2],-Abs[5],Abs[8]>, <-Abs[2],Abs[5],-Abs[8]>, <-Abs[2],Abs[5],Abs[8]>, <-Abs[1],-Abs[3],-Abs[9]>, <-Abs[1],-Abs[3],Abs[9]>, <-Abs[1],Abs[3],-Abs[9]>, <-Abs[1],Abs[3],Abs[9]>, <-Abs[0],-Abs[9],-Abs[4]>, <-Abs[0],-Abs[9],Abs[4]>, <-Abs[0],-Abs[7],-Abs[6]>, <-Abs[0],-Abs[7],Abs[6]>, <-Abs[0],Abs[7],-Abs[6]>, <-Abs[0],Abs[7],Abs[6]>, <-Abs[0],Abs[9],-Abs[4]>, <-Abs[0],Abs[9],Abs[4]>, <Abs[1],-Abs[3],-Abs[9]>, <Abs[1],-Abs[3],Abs[9]>, <Abs[1],Abs[3],-Abs[9]>, <Abs[1],Abs[3],Abs[9]>, <Abs[2],-Abs[5],-Abs[8]>, <Abs[2],-Abs[5],Abs[8]>, <Abs[2],Abs[5],-Abs[8]>, <Abs[2],Abs[5],Abs[8]>, <Abs[3],-Abs[9],-Abs[1]>, <Abs[3],-Abs[9],Abs[1]>, <Abs[3],Abs[9],-Abs[1]>, <Abs[3],Abs[9],Abs[1]>, <Abs[4],Abs[0],-Abs[9]>, <Abs[4],Abs[0],Abs[9]>, <Abs[5],-Abs[8],-Abs[2]>, <Abs[5],-Abs[8],Abs[2]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[5],Abs[8],-Abs[2]>, <Abs[5],Abs[8],Abs[2]>, <Abs[6],Abs[0],-Abs[7]>, <Abs[6],Abs[0],Abs[7]>, <Abs[7],-Abs[6],Abs[0]>, <Abs[7],Abs[6],Abs[0]>, <Abs[8],-Abs[2],-Abs[5]>, <Abs[8],-Abs[2],Abs[5]>, <Abs[8],Abs[2],-Abs[5]>, <Abs[8],Abs[2],Abs[5]>, <Abs[9],-Abs[4],Abs[0]>, <Abs[9],-Abs[1],-Abs[3]>, <Abs[9],-Abs[1],Abs[3]>, <Abs[9],Abs[1],-Abs[3]>, <Abs[9],Abs[1],Abs[3]>, <Abs[9],Abs[4],Abs[0]>, }


#declare YellowVertices = array[20]{0, 5, 16, 17, 18, 19, 22, 23, 36, 37, 42, 43, 56, 57, 60, 61, 62, 63, 74, 79};

#declare UncoloredVertices = array[60]{1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 58, 59, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 75, 76, 77, 78};

#declare UncoloredEdges = array[120]{array[2]{52, 58}, array[2]{13, 23}, array[2]{74, 75}, array[2]{54, 64}, array[2]{62, 72}, array[2]{30, 34}, array[2]{41, 51}, array[2]{44, 48}, array[2]{7, 13}, array[2]{46, 56}, array[2]{72, 77}, array[2]{18, 30}, array[2]{77, 79}, array[2]{47, 51}, array[2]{44, 56}, array[2]{63, 73}, array[2]{38, 48}, array[2]{8, 12}, array[2]{65, 69}, array[2]{41, 43}, array[2]{28, 38}, array[2]{14, 16}, array[2]{15, 25}, array[2]{50, 62}, array[2]{67, 71}, array[2]{36, 52}, array[2]{18, 20}, array[2]{30, 40}, array[2]{26, 27}, array[2]{19, 21}, array[2]{29, 33}, array[2]{56, 66}, array[2]{53, 59}, array[2]{22, 34}, array[2]{23, 35}, array[2]{45, 49}, array[2]{12, 22}, array[2]{29, 39}, array[2]{51, 63}, array[2]{8, 18}, array[2]{62, 64}, array[2]{31, 35}, array[2]{24, 36}, array[2]{21, 27}, array[2]{37, 39}, array[2]{16, 28}, array[2]{20, 26}, array[2]{34, 46}, array[2]{6, 16}, array[2]{35, 47}, array[2]{40, 50}, array[2]{66, 72}, array[2]{43, 55}, array[2]{59, 68}, array[2]{22, 32}, array[2]{39, 49}, array[2]{7, 17}, array[2]{17, 29}, array[2]{78, 79}, array[2]{58, 68}, array[2]{11, 21}, array[2]{2, 4}, array[2]{3, 5}, array[2]{25, 37}, array[2]{66, 70}, array[2]{28, 32}, array[2]{69, 79}, array[2]{71, 76}, array[2]{37, 53}, array[2]{10, 14}, array[2]{11, 20}, array[2]{68, 74}, array[2]{75, 77}, array[2]{42, 54}, array[2]{57, 67}, array[2]{14, 24}, array[2]{40, 42}, array[2]{15, 17}, array[2]{33, 45}, array[2]{26, 42}, array[2]{55, 65}, array[2]{24, 25}, array[2]{76, 78}, array[2]{4, 9}, array[2]{60, 70}, array[2]{74, 76}, array[2]{0, 10}, array[2]{58, 60}, array[2]{23, 33}, array[2]{1, 3}, array[2]{47, 57}, array[2]{19, 31}, array[2]{67, 73}, array[2]{61, 71}, array[2]{3, 8}, array[2]{46, 50}, array[2]{49, 61}, array[2]{36, 38}, array[2]{2, 7}, array[2]{10, 15}, array[2]{5, 11}, array[2]{9, 19}, array[2]{0, 1}, array[2]{70, 75}, array[2]{64, 69}, array[2]{6, 12}, array[2]{27, 43}, array[2]{9, 13}, array[2]{0, 2}, array[2]{52, 53}, array[2]{73, 78}, array[2]{63, 65}, array[2]{48, 60}, array[2]{54, 55}, array[2]{45, 57}, array[2]{59, 61}, array[2]{32, 44}, array[2]{4, 5}, array[2]{1, 6}, array[2]{31, 41}};

#declare RedFaces = array[30]{array[4]{9, 13, 7, 9}, array[4]{27, 20, 26, 27}, array[4]{27, 11, 21, 27}, array[4]{27, 11, 20, 27}, array[4]{12, 3, 1, 12}, array[4]{12, 3, 8, 12}, array[4]{12, 6, 1, 12}, array[4]{38, 44, 32, 38}, array[4]{38, 28, 32, 38}, array[4]{38, 48, 44, 38}, array[4]{30, 50, 40, 30}, array[4]{25, 10, 14, 25}, array[4]{25, 15, 10, 25}, array[4]{25, 24, 14, 25}, array[4]{55, 64, 54, 55}, array[4]{55, 64, 69, 55}, array[4]{55, 65, 69, 55}, array[4]{70, 72, 66, 70}, array[4]{58, 68, 59, 58}, array[4]{51, 41, 31, 51}, array[4]{49, 39, 29, 49}, array[4]{78, 71, 67, 78}, array[4]{78, 71, 76, 78}, array[4]{78, 73, 67, 78}, array[5]{53, 52, 58, 59, 53}, array[5]{72, 70, 75, 77, 72}, array[5]{30, 34, 46, 50, 30}, array[5]{4, 2, 7, 9, 4}, array[5]{45, 33, 29, 49, 45}, array[5]{31, 51, 47, 35, 31}};

#declare BlueFaces = array[102]{array[4]{15, 7, 17, 15}, array[4]{15, 2, 7, 15}, array[4]{15, 10, 0, 15}, array[4]{15, 2, 0, 15}, array[4]{6, 1, 0, 6}, array[4]{6, 10, 0, 6}, array[4]{6, 10, 14, 6}, array[4]{6, 16, 14, 6}, array[4]{9, 31, 19, 9}, array[4]{9, 35, 31, 9}, array[4]{9, 13, 23, 9}, array[4]{9, 35, 23, 9}, array[4]{11, 3, 5, 11}, array[4]{11, 3, 8, 11}, array[4]{11, 18, 20, 11}, array[4]{11, 18, 8, 11}, array[4]{11, 5, 4, 11}, array[4]{11, 9, 4, 11}, array[4]{11, 21, 19, 11}, array[4]{11, 9, 19, 11}, array[4]{27, 31, 19, 27}, array[4]{27, 21, 19, 27}, array[4]{27, 41, 43, 27}, array[4]{27, 41, 31, 27}, array[4]{77, 69, 79, 77}, array[4]{77, 64, 69, 77}, array[4]{77, 72, 62, 77}, array[4]{77, 64, 62, 77}, array[4]{12, 28, 16, 12}, array[4]{12, 22, 32, 12}, array[4]{12, 28, 32, 12}, array[4]{12, 6, 16, 12}, array[4]{38, 16, 14, 38}, array[4]{38, 24, 36, 38}, array[4]{38, 28, 16, 38}, array[4]{38, 24, 14, 38}, array[4]{50, 72, 62, 50}, array[4]{50, 56, 46, 50}, array[4]{50, 72, 66, 50}, array[4]{50, 56, 66, 50}, array[4]{42, 64, 62, 42}, array[4]{42, 64, 54, 42}, array[4]{42, 50, 40, 42}, array[4]{42, 50, 62, 42}, array[4]{30, 12, 22, 30}, array[4]{30, 22, 34, 30}, array[4]{30, 18, 8, 30}, array[4]{30, 12, 8, 30}, array[4]{30, 18, 20, 30}, array[4]{30, 20, 26, 30}, array[4]{30, 42, 26, 30}, array[4]{30, 42, 40, 30}, array[4]{33, 13, 7, 33}, array[4]{33, 7, 17, 33}, array[4]{33, 13, 23, 33}, array[4]{33, 29, 17, 33}, array[4]{39, 29, 17, 39}, array[4]{39, 15, 17, 39}, array[4]{39, 25, 15, 39}, array[4]{39, 25, 37, 39}, array[4]{71, 59, 61, 71}, array[4]{71, 68, 59, 71}, array[4]{71, 76, 74, 71}, array[4]{71, 68, 74, 71}, array[4]{70, 48, 44, 70}, array[4]{70, 56, 44, 70}, array[4]{70, 56, 66, 70}, array[4]{70, 60, 48, 70}, array[4]{58, 75, 74, 58}, array[4]{58, 68, 74, 58}, array[4]{58, 70, 60, 58}, array[4]{58, 70, 75, 58}, array[4]{58, 36, 52, 58}, array[4]{58, 60, 48, 58}, array[4]{58, 38, 48, 58}, array[4]{58, 38, 36, 58}, array[4]{51, 55, 65, 51}, array[4]{51, 41, 43, 51}, array[4]{51, 65, 63, 51}, array[4]{51, 55, 43, 51}, array[4]{51, 67, 57, 51}, array[4]{51, 73, 67, 51}, array[4]{51, 47, 57, 51}, array[4]{51, 73, 63, 51}, array[4]{49, 71, 67, 49}, array[4]{49, 45, 57, 49}, array[4]{49, 67, 57, 49}, array[4]{49, 71, 61, 49}, array[4]{49, 59, 61, 49}, array[4]{49, 53, 37, 49}, array[4]{49, 53, 59, 49}, array[4]{49, 39, 37, 49}, array[4]{78, 69, 79, 78}, array[4]{78, 65, 69, 78}, array[4]{78, 65, 63, 78}, array[4]{78, 73, 63, 78}, array[7]{24, 36, 52, 53, 37, 25, 24}, array[7]{27, 26, 42, 54, 55, 43, 27}, array[7]{78, 79, 77, 75, 74, 76, 78}, array[7]{0, 1, 3, 5, 4, 2, 0}, array[7]{22, 32, 44, 56, 46, 34, 22}, array[7]{57, 45, 33, 23, 35, 47, 57}};




union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
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
    
    rotate Rotate
}


