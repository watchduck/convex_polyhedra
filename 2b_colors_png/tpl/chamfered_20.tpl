#include "polyhedra_colors.inc"



#declare Factor = {{!factor}};
#declare Abs = array[9]{ (0)*Factor, (0.08778525229247312)*Factor, (0.30901699437494745)*Factor, (0.4510565162951536)*Factor, (0.5)*Factor, (0.5877852522924731)*Factor, (0.6420395219202062)*Factor, (0.8968022466674206)*Factor, (0.9510565162951535)*Factor, }

#declare P = array[72]{ <-Abs[8],-Abs[2],-Abs[1]>, <-Abs[8],-Abs[2],Abs[1]>, <-Abs[8],Abs[0],-Abs[5]>, <-Abs[8],Abs[0],Abs[5]>, <-Abs[8],Abs[2],-Abs[1]>, <-Abs[8],Abs[2],Abs[1]>, <-Abs[7],-Abs[3],Abs[0]>, <-Abs[7],Abs[3],Abs[0]>, <-Abs[6],-Abs[4],-Abs[5]>, <-Abs[6],-Abs[4],Abs[5]>, <-Abs[6],Abs[4],-Abs[5]>, <-Abs[6],Abs[4],Abs[5]>, <-Abs[5],-Abs[8],Abs[0]>, <-Abs[5],-Abs[6],-Abs[4]>, <-Abs[5],-Abs[6],Abs[4]>, <-Abs[5],Abs[6],-Abs[4]>, <-Abs[5],Abs[6],Abs[4]>, <-Abs[5],Abs[8],Abs[0]>, <-Abs[4],-Abs[5],-Abs[6]>, <-Abs[4],-Abs[5],Abs[6]>, <-Abs[4],Abs[5],-Abs[6]>, <-Abs[4],Abs[5],Abs[6]>, <-Abs[3],Abs[0],-Abs[7]>, <-Abs[3],Abs[0],Abs[7]>, <-Abs[2],-Abs[1],-Abs[8]>, <-Abs[2],-Abs[1],Abs[8]>, <-Abs[2],Abs[1],-Abs[8]>, <-Abs[2],Abs[1],Abs[8]>, <-Abs[1],-Abs[8],-Abs[2]>, <-Abs[1],-Abs[8],Abs[2]>, <-Abs[1],Abs[8],-Abs[2]>, <-Abs[1],Abs[8],Abs[2]>, <Abs[0],-Abs[7],-Abs[3]>, <Abs[0],-Abs[7],Abs[3]>, <Abs[0],-Abs[5],-Abs[8]>, <Abs[0],-Abs[5],Abs[8]>, <Abs[0],Abs[5],-Abs[8]>, <Abs[0],Abs[5],Abs[8]>, <Abs[0],Abs[7],-Abs[3]>, <Abs[0],Abs[7],Abs[3]>, <Abs[1],-Abs[8],-Abs[2]>, <Abs[1],-Abs[8],Abs[2]>, <Abs[1],Abs[8],-Abs[2]>, <Abs[1],Abs[8],Abs[2]>, <Abs[2],-Abs[1],-Abs[8]>, <Abs[2],-Abs[1],Abs[8]>, <Abs[2],Abs[1],-Abs[8]>, <Abs[2],Abs[1],Abs[8]>, <Abs[3],Abs[0],-Abs[7]>, <Abs[3],Abs[0],Abs[7]>, <Abs[4],-Abs[5],-Abs[6]>, <Abs[4],-Abs[5],Abs[6]>, <Abs[4],Abs[5],-Abs[6]>, <Abs[4],Abs[5],Abs[6]>, <Abs[5],-Abs[8],Abs[0]>, <Abs[5],-Abs[6],-Abs[4]>, <Abs[5],-Abs[6],Abs[4]>, <Abs[5],Abs[6],-Abs[4]>, <Abs[5],Abs[6],Abs[4]>, <Abs[5],Abs[8],Abs[0]>, <Abs[6],-Abs[4],-Abs[5]>, <Abs[6],-Abs[4],Abs[5]>, <Abs[6],Abs[4],-Abs[5]>, <Abs[6],Abs[4],Abs[5]>, <Abs[7],-Abs[3],Abs[0]>, <Abs[7],Abs[3],Abs[0]>, <Abs[8],-Abs[2],-Abs[1]>, <Abs[8],-Abs[2],Abs[1]>, <Abs[8],Abs[0],-Abs[5]>, <Abs[8],Abs[0],Abs[5]>, <Abs[8],Abs[2],-Abs[1]>, <Abs[8],Abs[2],Abs[1]>, }


#declare RedVertices = array[12]{2, 3, 12, 17, 34, 35, 36, 37, 54, 59, 68, 69};

#declare UncoloredVertices = array[60]{0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 60, 61, 62, 63, 64, 65, 66, 67, 70, 71, 13, 14, 15, 16, 55, 56, 57, 58};

#declare UncoloredEdges = array[120]{array[2]{39, 43}, array[2]{67, 69}, array[2]{21, 37}, array[2]{0, 2}, array[2]{7, 17}, array[2]{17, 31}, array[2]{65, 70}, array[2]{3, 5}, array[2]{33, 35}, array[2]{19, 35}, array[2]{69, 71}, array[2]{31, 39}, array[2]{30, 38}, array[2]{22, 26}, array[2]{58, 59}, array[2]{34, 50}, array[2]{43, 59}, array[2]{54, 55}, array[2]{25, 35}, array[2]{17, 30}, array[2]{54, 56}, array[2]{61, 69}, array[2]{37, 53}, array[2]{36, 46}, array[2]{23, 25}, array[2]{46, 48}, array[2]{23, 27}, array[2]{44, 48}, array[2]{36, 38}, array[2]{20, 36}, array[2]{22, 24}, array[2]{35, 51}, array[2]{66, 68}, array[2]{12, 29}, array[2]{34, 44}, array[2]{41, 54}, array[2]{40, 54}, array[2]{3, 11}, array[2]{63, 69}, array[2]{2, 8}, array[2]{15, 17}, array[2]{4, 7}, array[2]{48, 68}, array[2]{37, 39}, array[2]{59, 65}, array[2]{29, 33}, array[2]{2, 4}, array[2]{26, 36}, array[2]{62, 68}, array[2]{12, 14}, array[2]{60, 68}, array[2]{64, 67}, array[2]{68, 70}, array[2]{28, 32}, array[2]{18, 34}, array[2]{2, 22}, array[2]{27, 37}, array[2]{16, 17}, array[2]{3, 23}, array[2]{37, 47}, array[2]{1, 6}, array[2]{0, 6}, array[2]{35, 45}, array[2]{24, 34}, array[2]{64, 66}, array[2]{32, 40}, array[2]{54, 64}, array[2]{12, 28}, array[2]{47, 49}, array[2]{1, 3}, array[2]{5, 7}, array[2]{36, 52}, array[2]{42, 59}, array[2]{33, 41}, array[2]{6, 12}, array[2]{12, 13}, array[2]{3, 9}, array[2]{45, 49}, array[2]{57, 59}, array[2]{38, 42}, array[2]{65, 71}, array[2]{49, 69}, array[2]{32, 34}, array[2]{2, 10}, array[2]{30, 42}, array[2]{14, 19}, array[2]{52, 57}, array[2]{11, 21}, array[2]{55, 60}, array[2]{56, 61}, array[2]{51, 61}, array[2]{8, 13}, array[2]{66, 67}, array[2]{51, 56}, array[2]{29, 41}, array[2]{50, 55}, array[2]{28, 40}, array[2]{57, 62}, array[2]{31, 43}, array[2]{53, 58}, array[2]{9, 19}, array[2]{13, 18}, array[2]{45, 47}, array[2]{24, 26}, array[2]{0, 1}, array[2]{10, 15}, array[2]{44, 46}, array[2]{70, 71}, array[2]{58, 63}, array[2]{9, 14}, array[2]{25, 27}, array[2]{11, 16}, array[2]{52, 62}, array[2]{10, 20}, array[2]{53, 63}, array[2]{15, 20}, array[2]{16, 21}, array[2]{4, 5}, array[2]{8, 18}, array[2]{50, 60}};

#declare YellowFaces = array[20]{array[4]{6, 1, 0, 6}, array[4]{20, 15, 10, 20}, array[4]{64, 67, 66, 64}, array[4]{16, 11, 21, 16}, array[4]{23, 27, 25, 23}, array[4]{9, 14, 19, 9}, array[4]{4, 5, 7, 4}, array[4]{33, 41, 29, 33}, array[4]{51, 56, 61, 51}, array[4]{42, 30, 38, 42}, array[4]{57, 62, 52, 57}, array[4]{48, 46, 44, 48}, array[4]{65, 70, 71, 65}, array[4]{45, 47, 49, 45}, array[4]{39, 31, 43, 39}, array[4]{63, 53, 58, 63}, array[4]{32, 40, 28, 32}, array[4]{26, 24, 22, 26}, array[4]{55, 60, 50, 55}, array[4]{18, 8, 13, 18}};

#declare BlueFaces = array[102]{array[4]{16, 7, 17, 16}, array[4]{16, 11, 3, 16}, array[4]{16, 5, 7, 16}, array[4]{16, 5, 3, 16}, array[4]{37, 11, 3, 37}, array[4]{37, 11, 21, 37}, array[4]{37, 23, 27, 37}, array[4]{37, 23, 3, 37}, array[4]{30, 15, 17, 30}, array[4]{30, 38, 36, 30}, array[4]{30, 20, 15, 30}, array[4]{30, 20, 36, 30}, array[4]{69, 56, 54, 69}, array[4]{69, 64, 54, 69}, array[4]{69, 64, 67, 69}, array[4]{69, 56, 61, 69}, array[4]{9, 23, 25, 9}, array[4]{9, 35, 19, 9}, array[4]{9, 35, 25, 9}, array[4]{9, 23, 3, 9}, array[4]{4, 2, 10, 4}, array[4]{4, 15, 10, 4}, array[4]{4, 15, 17, 4}, array[4]{4, 7, 17, 4}, array[4]{51, 56, 54, 51}, array[4]{51, 41, 54, 51}, array[4]{51, 33, 41, 51}, array[4]{51, 33, 35, 51}, array[4]{57, 38, 36, 57}, array[4]{57, 42, 38, 57}, array[4]{57, 52, 36, 57}, array[4]{57, 42, 59, 57}, array[4]{48, 52, 36, 48}, array[4]{48, 62, 52, 48}, array[4]{48, 62, 68, 48}, array[4]{48, 46, 36, 48}, array[4]{65, 62, 68, 65}, array[4]{65, 70, 68, 65}, array[4]{65, 57, 62, 65}, array[4]{65, 57, 59, 65}, array[4]{60, 34, 44, 60}, array[4]{60, 50, 34, 60}, array[4]{60, 48, 44, 60}, array[4]{60, 48, 68, 60}, array[4]{45, 69, 61, 45}, array[4]{45, 69, 49, 45}, array[4]{45, 51, 61, 45}, array[4]{45, 51, 35, 45}, array[4]{39, 43, 59, 39}, array[4]{39, 59, 58, 39}, array[4]{39, 53, 37, 39}, array[4]{39, 53, 58, 39}, array[4]{39, 16, 17, 39}, array[4]{39, 37, 21, 39}, array[4]{39, 16, 21, 39}, array[4]{39, 31, 17, 39}, array[4]{63, 59, 58, 63}, array[4]{63, 69, 71, 63}, array[4]{63, 65, 71, 63}, array[4]{63, 65, 59, 63}, array[4]{63, 69, 49, 63}, array[4]{63, 47, 37, 63}, array[4]{63, 47, 49, 63}, array[4]{63, 53, 37, 63}, array[4]{12, 35, 19, 12}, array[4]{12, 14, 19, 12}, array[4]{12, 33, 35, 12}, array[4]{12, 33, 29, 12}, array[4]{12, 1, 3, 12}, array[4]{12, 6, 1, 12}, array[4]{12, 9, 14, 12}, array[4]{12, 9, 3, 12}, array[4]{12, 2, 0, 12}, array[4]{12, 8, 13, 12}, array[4]{12, 6, 0, 12}, array[4]{12, 8, 2, 12}, array[4]{26, 2, 10, 26}, array[4]{26, 20, 10, 26}, array[4]{26, 20, 36, 26}, array[4]{26, 22, 2, 26}, array[4]{55, 50, 34, 55}, array[4]{55, 40, 54, 55}, array[4]{55, 32, 40, 55}, array[4]{55, 32, 34, 55}, array[4]{55, 68, 66, 55}, array[4]{55, 64, 54, 55}, array[4]{55, 64, 66, 55}, array[4]{55, 60, 68, 55}, array[4]{18, 32, 28, 18}, array[4]{18, 32, 34, 18}, array[4]{18, 12, 13, 18}, array[4]{18, 12, 28, 18}, array[4]{18, 22, 2, 18}, array[4]{18, 24, 34, 18}, array[4]{18, 24, 22, 18}, array[4]{18, 8, 2, 18}, array[7]{70, 71, 69, 67, 66, 68, 70}, array[7]{4, 2, 0, 1, 3, 5, 4}, array[7]{46, 44, 34, 24, 26, 36, 46}, array[7]{12, 29, 41, 54, 40, 28, 12}, array[7]{45, 35, 25, 27, 37, 47, 45}, array[7]{42, 30, 17, 31, 43, 59, 42}};




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

    rotate Rotate
}
