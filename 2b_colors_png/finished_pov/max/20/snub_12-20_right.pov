#include "polyhedra_colors.inc"


#declare RadVert = RadVert*.9;
#declare RadEdge = RadEdge*.9;


#declare Factor = 1.97;


#declare Abs = array[15]{ (0.1928937)*Factor, (0.330921)*Factor, (0.3748216)*Factor, (0.5677153)*Factor, (0.6430296)*Factor, (0.7283351)*Factor, (0.84755)*Factor, (1.1031568)*Factor, (1.2495037)*Factor, (1.4152654)*Factor, (1.4540242)*Factor, (1.6469179)*Factor, (1.7461864)*Factor, (1.9778389)*Factor, (2.0970538)*Factor, }



#declare NumberOfVertices = 60;
#declare P = array[60]{ <-Abs[14],-Abs[2],-Abs[1]>, <-Abs[14],Abs[2],Abs[1]>, <-Abs[13],-Abs[3],Abs[4]>, <-Abs[13],Abs[3],-Abs[4]>, <-Abs[12],-Abs[0],-Abs[8]>, <-Abs[12],Abs[0],Abs[8]>, <-Abs[11],-Abs[7],-Abs[6]>, <-Abs[11],Abs[7],Abs[6]>, <-Abs[10],-Abs[9],Abs[5]>, <-Abs[10],Abs[9],-Abs[5]>, <-Abs[9],-Abs[5],Abs[10]>, <-Abs[9],Abs[5],-Abs[10]>, <-Abs[8],-Abs[12],-Abs[0]>, <-Abs[8],Abs[12],Abs[0]>, <-Abs[7],-Abs[6],-Abs[11]>, <-Abs[7],Abs[6],Abs[11]>, <-Abs[6],-Abs[11],-Abs[7]>, <-Abs[6],Abs[11],Abs[7]>, <-Abs[5],-Abs[10],Abs[9]>, <-Abs[5],Abs[10],-Abs[9]>, <-Abs[4],-Abs[13],Abs[3]>, <-Abs[4],Abs[13],-Abs[3]>, <-Abs[3],-Abs[4],Abs[13]>, <-Abs[3],Abs[4],-Abs[13]>, <-Abs[2],-Abs[1],-Abs[14]>, <-Abs[2],Abs[1],Abs[14]>, <-Abs[1],-Abs[14],-Abs[2]>, <-Abs[1],Abs[14],Abs[2]>, <-Abs[0],-Abs[8],-Abs[12]>, <-Abs[0],Abs[8],Abs[12]>, <Abs[0],-Abs[8],Abs[12]>, <Abs[0],Abs[8],-Abs[12]>, <Abs[1],-Abs[14],Abs[2]>, <Abs[1],Abs[14],-Abs[2]>, <Abs[2],-Abs[1],Abs[14]>, <Abs[2],Abs[1],-Abs[14]>, <Abs[3],-Abs[4],-Abs[13]>, <Abs[3],Abs[4],Abs[13]>, <Abs[4],-Abs[13],-Abs[3]>, <Abs[4],Abs[13],Abs[3]>, <Abs[5],-Abs[10],-Abs[9]>, <Abs[5],Abs[10],Abs[9]>, <Abs[6],-Abs[11],Abs[7]>, <Abs[6],Abs[11],-Abs[7]>, <Abs[7],-Abs[6],Abs[11]>, <Abs[7],Abs[6],-Abs[11]>, <Abs[8],-Abs[12],Abs[0]>, <Abs[8],Abs[12],-Abs[0]>, <Abs[9],-Abs[5],-Abs[10]>, <Abs[9],Abs[5],Abs[10]>, <Abs[10],-Abs[9],-Abs[5]>, <Abs[10],Abs[9],Abs[5]>, <Abs[11],-Abs[7],Abs[6]>, <Abs[11],Abs[7],-Abs[6]>, <Abs[12],-Abs[0],Abs[8]>, <Abs[12],Abs[0],-Abs[8]>, <Abs[13],-Abs[3],-Abs[4]>, <Abs[13],Abs[3],Abs[4]>, <Abs[14],-Abs[2],Abs[1]>, <Abs[14],Abs[2],-Abs[1]>, }
#declare NumberOfEdges = 150;

#declare NumberOfYellowEdges = 60;
#declare YellowEdges = array[NumberOfYellowEdges]{
    array[2]{1, 2}, array[2]{49, 51}, array[2]{44, 52}, array[2]{55, 59}, array[2]{14, 16}, 
    array[2]{31, 35}, array[2]{29, 37}, array[2]{38, 46}, array[2]{43, 45}, array[2]{13, 21}, 
    array[2]{0, 4}, array[2]{23, 31}, array[2]{41, 51}, array[2]{42, 52}, array[2]{23, 35}, 
    array[2]{25, 29}, array[2]{20, 26}, array[2]{28, 36}, array[2]{7, 17}, array[2]{24, 28}, 
    array[2]{45, 53}, array[2]{40, 50}, array[2]{15, 17}, array[2]{55, 56}, array[2]{12, 20}, 
    array[2]{9, 11}, array[2]{39, 47}, array[2]{43, 53}, array[2]{33, 39}, array[2]{24, 36}, 
    array[2]{1, 5}, array[2]{3, 4}, array[2]{41, 49}, array[2]{8, 18}, array[2]{0, 3}, 
    array[2]{32, 46}, array[2]{11, 19}, array[2]{8, 10}, array[2]{22, 30}, array[2]{30, 34}, 
    array[2]{12, 26}, array[2]{33, 47}, array[2]{25, 37}, array[2]{21, 27}, array[2]{2, 5}, 
    array[2]{22, 34}, array[2]{13, 27}, array[2]{56, 59}, array[2]{7, 15}, array[2]{6, 14}, 
    array[2]{9, 19}, array[2]{10, 18}, array[2]{54, 57}, array[2]{40, 48}, array[2]{32, 38}, 
    array[2]{57, 58}, array[2]{6, 16}, array[2]{54, 58}, array[2]{42, 44}, array[2]{48, 50}
};

#declare NumberOfRedEdges = 60;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{29, 41}, array[2]{39, 41}, array[2]{27, 39}, array[2]{17, 27}, array[2]{17, 29}, 
    array[2]{21, 33}, array[2]{33, 43}, array[2]{31, 43}, array[2]{19, 31}, array[2]{19, 21}, 
    array[2]{11, 23}, array[2]{23, 24}, array[2]{14, 24}, array[2]{4, 14}, array[2]{4, 11}, 
    array[2]{35, 45}, array[2]{45, 55}, array[2]{48, 55}, array[2]{36, 48}, array[2]{35, 36}, 
    array[2]{56, 58}, array[2]{52, 58}, array[2]{46, 52}, array[2]{46, 50}, array[2]{50, 56}, 
    array[2]{53, 59}, array[2]{47, 53}, array[2]{47, 51}, array[2]{51, 57}, array[2]{57, 59}, 
    array[2]{37, 49}, array[2]{34, 37}, array[2]{34, 44}, array[2]{44, 54}, array[2]{49, 54}, 
    array[2]{5, 15}, array[2]{5, 10}, array[2]{10, 22}, array[2]{22, 25}, array[2]{15, 25}, 
    array[2]{9, 13}, array[2]{3, 9}, array[2]{1, 3}, array[2]{1, 7}, array[2]{7, 13}, 
    array[2]{0, 6}, array[2]{6, 12}, array[2]{8, 12}, array[2]{2, 8}, array[2]{0, 2}, 
    array[2]{28, 40}, array[2]{38, 40}, array[2]{26, 38}, array[2]{16, 26}, array[2]{16, 28}, 
    array[2]{20, 32}, array[2]{32, 42}, array[2]{30, 42}, array[2]{18, 30}, array[2]{18, 20}, 
};

#declare NumberOfBlueEdges = 30;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{31, 45}, array[2]{24, 35}, array[2]{53, 55}, array[2]{19, 23}, array[2]{43, 47}, 
    array[2]{36, 40}, array[2]{48, 56}, array[2]{27, 33}, array[2]{14, 28}, array[2]{9, 21}, 
    array[2]{39, 51}, array[2]{58, 59}, array[2]{3, 11}, array[2]{49, 57}, array[2]{37, 41}, 
    array[2]{52, 54}, array[2]{42, 46}, array[2]{30, 44}, array[2]{15, 29}, array[2]{5, 7}, 
    array[2]{25, 34}, array[2]{18, 22}, array[2]{2, 10}, array[2]{13, 17}, array[2]{0, 1}, 
    array[2]{4, 6}, array[2]{12, 16}, array[2]{26, 32}, array[2]{38, 50}, array[2]{8, 20}
};

#declare NumberOfGrayTriangles = 60;
#declare GrayTriangles = array[NumberOfGrayTriangles]{
    array[4]{1, 2, 0, 1}, array[4]{17, 13, 7, 17}, array[4]{5, 1, 7, 5}, array[4]{3, 1, 0, 3}, array[4]{57, 51, 49, 57}, 
    array[4]{57, 54, 49, 57}, array[4]{53, 45, 55, 53}, array[4]{39, 33, 27, 39}, array[4]{10, 8, 2, 10}, array[4]{10, 5, 2, 10}, 
    array[4]{12, 16, 26, 12}, array[4]{28, 14, 24, 28}, array[4]{28, 14, 16, 28}, array[4]{11, 19, 23, 11}, array[4]{11, 3, 4, 11}, 
    array[4]{21, 33, 27, 21}, array[4]{21, 19, 9, 21}, array[4]{21, 13, 9, 21}, array[4]{35, 23, 24, 35}, array[4]{18, 10, 22, 18}, 
    array[4]{52, 42, 46, 52}, array[4]{52, 54, 58, 52}, array[4]{52, 54, 44, 52}, array[4]{47, 39, 51, 47}, array[4]{47, 53, 43, 47}, 
    array[4]{59, 57, 58, 59}, array[4]{59, 53, 55, 59}, array[4]{59, 56, 58, 59}, array[4]{41, 39, 51, 41}, array[4]{6, 4, 0, 6}, 
    array[4]{6, 14, 4, 6}, array[4]{6, 12, 16, 6},  array[4]{31, 45, 43, 31}, array[4]{31, 35, 45, 31}, array[4]{48, 56, 55, 48}, 
    array[4]{15, 5, 7, 15}, array[4]{15, 29, 17, 15}, array[4]{30, 18, 22, 30}, array[4]{30, 34, 44, 30}, array[4]{30, 42, 44, 30}, 
    array[4]{32, 42, 46, 32}, array[4]{32, 38, 26, 32}, array[4]{37, 41, 49, 37}, array[4]{36, 35, 24, 36}, array[4]{36, 48, 40, 36}, 
    array[4]{36, 28, 40, 36}, array[4]{50, 38, 40, 50}, array[4]{50, 38, 46, 50}, array[4]{50, 48, 56, 50}, array[4]{17, 13, 27, 17}
    array[4]{20, 32, 26, 20}, array[4]{20, 18, 8, 20}, array[4]{20, 12, 8, 20}, array[4]{25, 37, 34, 25}, array[4]{25, 15, 29, 25}, 
    array[4]{25, 34, 22, 25}, array[4]{37, 41, 29, 37}, array[4]{31, 19, 23, 31}, array[4]{47, 33, 43, 47}, array[4]{11, 3, 9, 11}, 
};

#declare NumberOfYellowTriangles = 20;
#declare YellowTriangles = array[20]{
    array[4]{47, 39, 33, 47}, array[4]{41, 51, 49, 41}, array[4]{21, 13, 27, 21}, array[4]{32, 38, 46, 32}, array[4]{20, 12, 26, 20}, 
    array[4]{6, 14, 16, 6}, array[4]{59, 56, 55, 59}, array[4]{36, 28, 24, 36}, array[4]{52, 42, 44, 52}, array[4]{18, 10, 8, 18}, 
    array[4]{30, 34, 22, 30}, array[4]{25, 37, 29, 25}, array[4]{57, 54, 58, 57}, array[4]{15, 17, 7, 15}, array[4]{5, 1, 2, 5}, 
    array[4]{53, 45, 43, 53}, array[4]{3, 4, 0, 3}, array[4]{11, 19, 9, 11}, array[4]{31, 35, 23, 31}, array[4]{50, 48, 40, 50}, 
}

#declare NumberOfPentagonTriangles = 36;
#declare PentagonTriangles = array[36]{
    array[4]{21, 19, 33, 21}, array[4]{19, 33, 43, 19}, array[4]{31, 19, 43, 31}, 
    array[4]{11, 23, 24, 11}, array[4]{11, 14, 24, 11}, array[4]{11, 14, 4, 11}, 
    array[4]{48, 45, 55, 48}, array[4]{48, 35, 45, 48}, array[4]{36, 48, 35, 36}, 
    array[4]{47, 53, 51, 47}, array[4]{59, 53, 51, 59}, array[4]{59, 57, 51, 59}, 
    array[4]{15, 10, 5, 15}, , array[4]{25, 15, 10, 25}, array[4]{25, 10, 22, 25},
    array[4]{37, 34, 49, 37}, array[4]{34, 44, 49, 34}, array[4]{54, 44, 49, 54}, 
    array[4]{41, 29, 17, 41}, array[4]{41, 17, 27, 41}, array[4]{41, 39, 27, 41}, 
    array[4]{30, 18, 42, 30}, array[4]{32, 18, 42, 32}, array[4]{20, 32, 18, 20}, 
    array[4]{50, 52, 46, 50}, array[4]{50, 52, 58, 50}, array[4]{50, 56, 58, 50},
    array[4]{28, 40, 16, 28}, array[4]{40, 16, 26, 40}, array[4]{38, 40, 26, 38}, 
    array[4]{6, 12, 8, 6}, array[4]{6, 8, 0, 6}, array[4]{8, 2, 0, 8}, 
    array[4]{13, 7, 9, 13}, array[4]{1, 7, 9, 1}, array[4]{3, 1, 9, 3}, 
}




union{


    union{
        #for(VertexIndex, 0, NumberOfVertices-1)
            sphere{ P[VertexIndex], RadVert }
        #end
        texture{ TBrown }
    }

    union{
        #for(Index, 0, NumberOfBlueEdges-1)
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }
    union{
        #for(Index, 0, NumberOfYellowEdges-1)
            #local EdgeArray = YellowEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TYellowish }
    }
    union{
        #for(Index, 0, NumberOfRedEdges-1)
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TReddish }
    }

    union{
        #for(Index, 0, NumberOfGrayTriangles-1)
            #local FaceArray = GrayTriangles[Index];
            polygon{ 4,
                #for(VertexIndexInFace, 0, 3)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TLightgray }
    }
    union{
        #for(Index, 0, NumberOfYellowTriangles-1)
            #local FaceArray = YellowTriangles[Index];
            polygon{ 4,
                #for(VertexIndexInFace, 0, 3)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TYellow }
    }
    union{
        #for(Index, 0, NumberOfPentagonTriangles-1)
            #local FaceArray = PentagonTriangles[Index];
            polygon{ 4,
                #for(VertexIndexInFace, 0, 3)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TRed }
    }

    
    rotate 90*z
    rotate Rotate
}

