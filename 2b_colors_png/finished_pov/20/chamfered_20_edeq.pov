#include "polyhedra_colors.inc"



#declare Factor = 1.305560064802338;
#declare Abs = array[9]{ (0.0)*Factor, (0.5)*Factor, (0.5257311121191336)*Factor, (0.8506508083520399)*Factor, (1.334748106494081)*Factor, (1.3506508083520399)*Factor, (1.6596678027269873)*Factor, (1.8763819204711736)*Factor, (2.185398914846121)*Factor, }

#declare P = array[72]{ <-Abs[8],-Abs[2],-Abs[1]>, <-Abs[8],-Abs[2],Abs[1]>, <-Abs[8],Abs[0],-Abs[5]>, <-Abs[8],Abs[0],Abs[5]>, <-Abs[8],Abs[2],-Abs[1]>, <-Abs[8],Abs[2],Abs[1]>, <-Abs[7],-Abs[4],Abs[0]>, <-Abs[7],Abs[4],Abs[0]>, <-Abs[6],-Abs[3],-Abs[5]>, <-Abs[6],-Abs[3],Abs[5]>, <-Abs[6],Abs[3],-Abs[5]>, <-Abs[6],Abs[3],Abs[5]>, <-Abs[5],-Abs[8],Abs[0]>, <-Abs[5],-Abs[6],-Abs[3]>, <-Abs[5],-Abs[6],Abs[3]>, <-Abs[5],Abs[6],-Abs[3]>, <-Abs[5],Abs[6],Abs[3]>, <-Abs[5],Abs[8],Abs[0]>, <-Abs[4],Abs[0],-Abs[7]>, <-Abs[4],Abs[0],Abs[7]>, <-Abs[3],-Abs[5],-Abs[6]>, <-Abs[3],-Abs[5],Abs[6]>, <-Abs[3],Abs[5],-Abs[6]>, <-Abs[3],Abs[5],Abs[6]>, <-Abs[2],-Abs[1],-Abs[8]>, <-Abs[2],-Abs[1],Abs[8]>, <-Abs[2],Abs[1],-Abs[8]>, <-Abs[2],Abs[1],Abs[8]>, <-Abs[1],-Abs[8],-Abs[2]>, <-Abs[1],-Abs[8],Abs[2]>, <-Abs[1],Abs[8],-Abs[2]>, <-Abs[1],Abs[8],Abs[2]>, <-Abs[0],-Abs[7],-Abs[4]>, <-Abs[0],-Abs[7],Abs[4]>, <-Abs[0],-Abs[5],-Abs[8]>, <-Abs[0],-Abs[5],Abs[8]>, <-Abs[0],Abs[5],-Abs[8]>, <-Abs[0],Abs[5],Abs[8]>, <-Abs[0],Abs[7],-Abs[4]>, <-Abs[0],Abs[7],Abs[4]>, <Abs[1],-Abs[8],-Abs[2]>, <Abs[1],-Abs[8],Abs[2]>, <Abs[1],Abs[8],-Abs[2]>, <Abs[1],Abs[8],Abs[2]>, <Abs[2],-Abs[1],-Abs[8]>, <Abs[2],-Abs[1],Abs[8]>, <Abs[2],Abs[1],-Abs[8]>, <Abs[2],Abs[1],Abs[8]>, <Abs[3],-Abs[5],-Abs[6]>, <Abs[3],-Abs[5],Abs[6]>, <Abs[3],Abs[5],-Abs[6]>, <Abs[3],Abs[5],Abs[6]>, <Abs[4],Abs[0],-Abs[7]>, <Abs[4],Abs[0],Abs[7]>, <Abs[5],-Abs[8],Abs[0]>, <Abs[5],-Abs[6],-Abs[3]>, <Abs[5],-Abs[6],Abs[3]>, <Abs[5],Abs[6],-Abs[3]>, <Abs[5],Abs[6],Abs[3]>, <Abs[5],Abs[8],Abs[0]>, <Abs[6],-Abs[3],-Abs[5]>, <Abs[6],-Abs[3],Abs[5]>, <Abs[6],Abs[3],-Abs[5]>, <Abs[6],Abs[3],Abs[5]>, <Abs[7],-Abs[4],Abs[0]>, <Abs[7],Abs[4],Abs[0]>, <Abs[8],-Abs[2],-Abs[1]>, <Abs[8],-Abs[2],Abs[1]>, <Abs[8],Abs[0],-Abs[5]>, <Abs[8],Abs[0],Abs[5]>, <Abs[8],Abs[2],-Abs[1]>, <Abs[8],Abs[2],Abs[1]>, }

#declare RedVertices = array[12]{2, 3, 12, 17, 34, 35, 36, 37, 54, 59, 68, 69};

#declare UncoloredVertices = array[60]{0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 55, 56, 57, 58, 60, 61, 62, 63, 64, 65, 66, 67, 70, 71};

#declare UncoloredEdges = array[120]{array[2]{28, 40}, array[2]{54, 55}, array[2]{45, 47}, array[2]{35, 45}, array[2]{56, 61}, array[2]{34, 48}, array[2]{20, 34}, array[2]{36, 38}, array[2]{45, 53}, array[2]{29, 33}, array[2]{10, 15}, array[2]{36, 46}, array[2]{68, 70}, array[2]{37, 51}, array[2]{66, 68}, array[2]{58, 63}, array[2]{62, 68}, array[2]{0, 2}, array[2]{34, 44}, array[2]{17, 30}, array[2]{38, 42}, array[2]{27, 37}, array[2]{48, 60}, array[2]{10, 22}, array[2]{8, 13}, array[2]{22, 36}, array[2]{51, 58}, array[2]{25, 35}, array[2]{48, 55}, array[2]{42, 59}, array[2]{64, 67}, array[2]{70, 71}, array[2]{31, 43}, array[2]{21, 35}, array[2]{32, 34}, array[2]{31, 39}, array[2]{2, 4}, array[2]{11, 16}, array[2]{9, 21}, array[2]{58, 59}, array[2]{30, 42}, array[2]{16, 23}, array[2]{37, 47}, array[2]{9, 14}, array[2]{18, 24}, array[2]{3, 9}, array[2]{26, 36}, array[2]{33, 41}, array[2]{24, 26}, array[2]{54, 64}, array[2]{1, 6}, array[2]{14, 21}, array[2]{64, 66}, array[2]{29, 41}, array[2]{57, 62}, array[2]{44, 52}, array[2]{3, 5}, array[2]{57, 59}, array[2]{69, 71}, array[2]{19, 27}, array[2]{28, 32}, array[2]{60, 68}, array[2]{54, 56}, array[2]{65, 70}, array[2]{0, 6}, array[2]{19, 25}, array[2]{50, 62}, array[2]{2, 10}, array[2]{24, 34}, array[2]{55, 60}, array[2]{39, 43}, array[2]{8, 20}, array[2]{66, 67}, array[2]{35, 49}, array[2]{36, 50}, array[2]{0, 1}, array[2]{37, 39}, array[2]{46, 52}, array[2]{53, 69}, array[2]{65, 71}, array[2]{2, 8}, array[2]{32, 40}, array[2]{3, 11}, array[2]{4, 7}, array[2]{6, 12}, array[2]{23, 37}, array[2]{5, 7}, array[2]{47, 53}, array[2]{18, 26}, array[2]{25, 27}, array[2]{49, 56}, array[2]{2, 18}, array[2]{15, 22}, array[2]{7, 17}, array[2]{33, 35}, array[2]{12, 13}, array[2]{1, 3}, array[2]{43, 59}, array[2]{61, 69}, array[2]{13, 20}, array[2]{40, 54}, array[2]{12, 29}, array[2]{12, 14}, array[2]{59, 65}, array[2]{17, 31}, array[2]{4, 5}, array[2]{63, 69}, array[2]{12, 28}, array[2]{41, 54}, array[2]{51, 63}, array[2]{44, 46}, array[2]{15, 17}, array[2]{30, 38}, array[2]{50, 57}, array[2]{11, 23}, array[2]{49, 61}, array[2]{16, 17}, array[2]{3, 19}, array[2]{67, 69}, array[2]{52, 68}};

#declare YellowFaces = array[20]{array[4]{6, 1, 0, 6}, array[4]{22, 15, 10, 22}, array[4]{64, 67, 66, 64}, array[4]{11, 16, 23, 11}, array[4]{19, 27, 25, 19}, array[4]{50, 57, 62, 50}, array[4]{9, 14, 21, 9}, array[4]{4, 5, 7, 4}, array[4]{41, 33, 29, 41}, array[4]{42, 30, 38, 42}, array[4]{65, 71, 70, 65}, array[4]{61, 56, 49, 61}, array[4]{46, 44, 52, 46}, array[4]{45, 47, 53, 45}, array[4]{31, 39, 43, 31}, array[4]{51, 63, 58, 51}, array[4]{40, 32, 28, 40}, array[4]{26, 24, 18, 26}, array[4]{48, 55, 60, 48}, array[4]{8, 20, 13, 8}};

#declare BlueFaces = array[102]{array[4]{11, 7, 17, 11}, array[4]{11, 5, 7, 11}, array[4]{11, 16, 17, 11}, array[4]{11, 5, 3, 11}, array[4]{37, 11, 3, 37}, array[4]{37, 11, 23, 37}, array[4]{37, 19, 27, 37}, array[4]{37, 19, 3, 37}, array[4]{30, 15, 17, 30}, array[4]{30, 38, 36, 30}, array[4]{30, 22, 15, 30}, array[4]{30, 22, 36, 30}, array[4]{9, 19, 3, 9}, array[4]{9, 35, 21, 9}, array[4]{9, 35, 25, 9}, array[4]{9, 19, 25, 9}, array[4]{4, 2, 10, 4}, array[4]{4, 15, 10, 4}, array[4]{4, 15, 17, 4}, array[4]{4, 7, 17, 4}, array[4]{41, 56, 54, 41}, array[4]{41, 35, 49, 41}, array[4]{41, 56, 49, 41}, array[4]{41, 33, 35, 41}, array[4]{42, 38, 36, 42}, array[4]{42, 50, 57, 42}, array[4]{42, 57, 59, 42}, array[4]{42, 50, 36, 42}, array[4]{61, 56, 54, 61}, array[4]{61, 64, 54, 61}, array[4]{61, 64, 67, 61}, array[4]{61, 69, 67, 61}, array[4]{63, 59, 58, 63}, array[4]{63, 69, 71, 63}, array[4]{63, 65, 71, 63}, array[4]{63, 65, 59, 63}, array[4]{68, 57, 59, 68}, array[4]{68, 57, 62, 68}, array[4]{68, 65, 70, 68}, array[4]{68, 65, 59, 68}, array[4]{68, 46, 52, 68}, array[4]{68, 50, 36, 68}, array[4]{68, 50, 62, 68}, array[4]{68, 46, 36, 68}, array[4]{68, 64, 54, 68}, array[4]{68, 55, 60, 68}, array[4]{68, 64, 66, 68}, array[4]{68, 55, 54, 68}, array[4]{45, 35, 49, 45}, array[4]{45, 61, 69, 45}, array[4]{45, 69, 53, 45}, array[4]{45, 61, 49, 45}, array[4]{31, 16, 17, 31}, array[4]{31, 37, 23, 31}, array[4]{31, 16, 23, 31}, array[4]{31, 39, 37, 31}, array[4]{51, 43, 59, 51}, array[4]{51, 59, 58, 51}, array[4]{51, 39, 37, 51}, array[4]{51, 39, 43, 51}, array[4]{51, 69, 53, 51}, array[4]{51, 47, 37, 51}, array[4]{51, 47, 53, 51}, array[4]{51, 63, 69, 51}, array[4]{12, 35, 21, 12}, array[4]{12, 14, 21, 12}, array[4]{12, 33, 35, 12}, array[4]{12, 33, 29, 12}, array[4]{12, 1, 3, 12}, array[4]{12, 6, 1, 12}, array[4]{12, 9, 14, 12}, array[4]{12, 9, 3, 12}, array[4]{12, 20, 13, 12}, array[4]{12, 32, 34, 12}, array[4]{12, 32, 28, 12}, array[4]{12, 20, 34, 12}, array[4]{26, 2, 10, 26}, array[4]{26, 22, 36, 26}, array[4]{26, 22, 10, 26}, array[4]{26, 18, 2, 26}, array[4]{48, 68, 60, 48}, array[4]{48, 44, 52, 48}, array[4]{48, 44, 34, 48}, array[4]{48, 68, 52, 48}, array[4]{48, 32, 34, 48}, array[4]{48, 55, 54, 48}, array[4]{48, 40, 32, 48}, array[4]{48, 40, 54, 48}, array[4]{8, 2, 0, 8}, array[4]{8, 12, 13, 8}, array[4]{8, 6, 0, 8}, array[4]{8, 12, 6, 8}, array[4]{8, 18, 2, 8}, array[4]{8, 24, 34, 8}, array[4]{8, 24, 18, 8}, array[4]{8, 20, 34, 8}, array[7]{68, 70, 71, 69, 67, 66, 68}, array[7]{44, 34, 24, 26, 36, 46, 44}, array[7]{3, 5, 4, 2, 0, 1, 3}, array[7]{59, 42, 30, 17, 31, 43, 59}, array[7]{35, 25, 27, 37, 47, 45, 35}, array[7]{29, 41, 54, 40, 28, 12, 29}};




union{


    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
    }
    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
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
