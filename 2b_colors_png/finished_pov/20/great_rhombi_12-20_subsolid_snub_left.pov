#include "polyhedra_colors.inc"




#declare Factor = 6/((-1 + sqrt(5))*sqrt(12*sqrt(5) + 30));


#declare Abs = array[12]{ (1/(1/2 + sqrt(5)/2))*Factor, (2/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5))*Factor, (pow(1/2 + sqrt(5)/2, 2))*Factor, (3)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (1/2 + 3*sqrt(5)/2)*Factor, (2 + sqrt(5))*Factor, (sqrt(5)/2 + 7/2)*Factor, }


#declare P = array[60]{ <-Abs[11],-Abs[0],Abs[0]>, <-Abs[11],Abs[0],-Abs[0]>, <-Abs[10],-Abs[2],-Abs[1]>, <-Abs[10],Abs[2],Abs[1]>, <-Abs[9],-Abs[5],Abs[0]>, <-Abs[9],Abs[5],-Abs[0]>, <-Abs[8],-Abs[3],Abs[4]>, <-Abs[8],Abs[3],-Abs[4]>, <-Abs[7],-Abs[6],-Abs[2]>, <-Abs[7],Abs[6],Abs[2]>, <-Abs[6],-Abs[2],-Abs[7]>, <-Abs[6],Abs[2],Abs[7]>, <-Abs[5],-Abs[0],Abs[9]>, <-Abs[5],Abs[0],-Abs[9]>, <-Abs[4],-Abs[8],Abs[3]>, <-Abs[4],Abs[8],-Abs[3]>, <-Abs[3],-Abs[4],Abs[8]>, <-Abs[3],Abs[4],-Abs[8]>, <-Abs[2],-Abs[7],-Abs[6]>, <-Abs[2],-Abs[1],-Abs[10]>, <-Abs[2],Abs[1],Abs[10]>, <-Abs[2],Abs[7],Abs[6]>, <-Abs[1],-Abs[10],-Abs[2]>, <-Abs[1],Abs[10],Abs[2]>, <-Abs[0],-Abs[11],Abs[0]>, <-Abs[0],-Abs[9],Abs[5]>, <-Abs[0],-Abs[0],Abs[11]>, <-Abs[0],Abs[0],-Abs[11]>, <-Abs[0],Abs[9],-Abs[5]>, <-Abs[0],Abs[11],-Abs[0]>, <Abs[0],-Abs[11],-Abs[0]>, <Abs[0],-Abs[9],-Abs[5]>, <Abs[0],-Abs[0],-Abs[11]>, <Abs[0],Abs[0],Abs[11]>, <Abs[0],Abs[9],Abs[5]>, <Abs[0],Abs[11],Abs[0]>, <Abs[1],-Abs[10],Abs[2]>, <Abs[1],Abs[10],-Abs[2]>, <Abs[2],-Abs[7],Abs[6]>, <Abs[2],-Abs[1],Abs[10]>, <Abs[2],Abs[1],-Abs[10]>, <Abs[2],Abs[7],-Abs[6]>, <Abs[3],-Abs[4],-Abs[8]>, <Abs[3],Abs[4],Abs[8]>, <Abs[4],-Abs[8],-Abs[3]>, <Abs[4],Abs[8],Abs[3]>, <Abs[5],-Abs[0],-Abs[9]>, <Abs[5],Abs[0],Abs[9]>, <Abs[6],-Abs[2],Abs[7]>, <Abs[6],Abs[2],-Abs[7]>, <Abs[7],-Abs[6],Abs[2]>, <Abs[7],Abs[6],-Abs[2]>, <Abs[8],-Abs[3],-Abs[4]>, <Abs[8],Abs[3],Abs[4]>, <Abs[9],-Abs[5],-Abs[0]>, <Abs[9],Abs[5],Abs[0]>, <Abs[10],-Abs[2],Abs[1]>, <Abs[10],Abs[2],-Abs[1]>, <Abs[11],-Abs[0],-Abs[0]>, <Abs[11],Abs[0],Abs[0]>, }

#declare UncoloredVertices = array[60]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59};

#declare BlueEdges = array[30]{array[2]{10, 19}, array[2]{3, 9}, array[2]{37, 41}, array[2]{52, 54}, array[2]{24, 30}, array[2]{4, 6}, array[2]{2, 8}, array[2]{42, 46}, array[2]{14, 25}, array[2]{40, 49}, array[2]{43, 47}, array[2]{13, 17}, array[2]{50, 56}, array[2]{0, 1}, array[2]{18, 22}, array[2]{31, 44}, array[2]{53, 55}, array[2]{58, 59}, array[2]{12, 16}, array[2]{15, 28}, array[2]{5, 7}, array[2]{36, 38}, array[2]{27, 32}, array[2]{26, 33}, array[2]{21, 23}, array[2]{34, 45}, array[2]{11, 20}, array[2]{29, 35}, array[2]{39, 48}, array[2]{51, 57}};

#declare YellowEdges = array[60]{array[2]{8, 10}, array[2]{38, 48}, array[2]{55, 59}, array[2]{1, 5}, array[2]{44, 52}, array[2]{43, 53}, array[2]{10, 18}, array[2]{2, 4}, array[2]{13, 19}, array[2]{19, 27}, array[2]{42, 52}, array[2]{6, 14}, array[2]{49, 51}, array[2]{48, 50}, array[2]{12, 20}, array[2]{24, 25}, array[2]{9, 21}, array[2]{1, 3}, array[2]{20, 26}, array[2]{3, 5}, array[2]{38, 50}, array[2]{40, 46}, array[2]{24, 36}, array[2]{57, 59}, array[2]{0, 2}, array[2]{39, 47}, array[2]{54, 58}, array[2]{29, 37}, array[2]{23, 34}, array[2]{32, 40}, array[2]{22, 30}, array[2]{22, 31}, array[2]{56, 58}, array[2]{28, 29}, array[2]{30, 31}, array[2]{55, 57}, array[2]{54, 56}, array[2]{42, 44}, array[2]{45, 53}, array[2]{25, 36}, array[2]{7, 17}, array[2]{6, 16}, array[2]{34, 35}, array[2]{15, 17}, array[2]{43, 45}, array[2]{23, 35}, array[2]{41, 51}, array[2]{13, 27}, array[2]{7, 15}, array[2]{41, 49}, array[2]{0, 4}, array[2]{8, 18}, array[2]{33, 47}, array[2]{11, 21}, array[2]{9, 11}, array[2]{33, 39}, array[2]{14, 16}, array[2]{12, 26}, array[2]{28, 37}, array[2]{32, 46}};

#declare RedEdges = array[60]{
    array[2]{19, 32}, array[2]{32, 42}, array[2]{31, 42}, array[2]{18, 31}, array[2]{18, 19}, 
    array[2]{30, 44}, array[2]{44, 54}, array[2]{50, 54}, array[2]{36, 50}, array[2]{30, 36}, 
    array[2]{8, 22}, array[2]{22, 24}, array[2]{14, 24}, array[2]{4, 14}, array[2]{4, 8}, 
    array[2]{25, 38}, array[2]{38, 39}, array[2]{26, 39}, array[2]{16, 26}, array[2]{16, 25}, 
    array[2]{20, 33}, array[2]{33, 43}, array[2]{34, 43}, array[2]{21, 34}, array[2]{20, 21}, 
    array[2]{35, 45}, array[2]{45, 55}, array[2]{51, 55}, array[2]{37, 51}, array[2]{35, 37}, 
    array[2]{5, 9}, array[2]{9, 23}, array[2]{23, 29}, array[2]{15, 29}, array[2]{5, 15}, 
    array[2]{17, 28}, array[2]{28, 41}, array[2]{40, 41}, array[2]{27, 40}, array[2]{17, 27}, 
    array[2]{49, 57}, array[2]{57, 58}, array[2]{52, 58}, array[2]{46, 52}, array[2]{46, 49}, 
    array[2]{53, 59}, array[2]{47, 53}, array[2]{47, 48}, array[2]{48, 56}, array[2]{56, 59}, 
    array[2]{0, 3}, array[2]{0, 6}, array[2]{6, 12}, array[2]{11, 12}, array[2]{3, 11}, 
    array[2]{1, 2}, array[2]{1, 7}, array[2]{7, 13}, array[2]{10, 13}, array[2]{2, 10}
};

#declare RedFaces = array[12]{array[6]{9, 5, 15, 29, 23, 9}, array[6]{17, 28, 41, 40, 27, 17}, array[6]{24, 14, 4, 8, 22, 24}, array[6]{20, 21, 34, 43, 33, 20}, array[6]{47, 53, 59, 56, 48, 47}, array[6]{3, 11, 12, 6, 0, 3}, array[6]{42, 32, 19, 18, 31, 42}, array[6]{36, 50, 54, 44, 30, 36}, array[6]{25, 16, 26, 39, 38, 25}, array[6]{58, 52, 46, 49, 57, 58}, array[6]{7, 1, 2, 10, 13, 7}, array[6]{55, 45, 35, 37, 51, 55}};

#declare YellowFaces = array[20]{array[4]{20, 12, 26, 20}, array[4]{53, 45, 43, 53}, array[4]{10, 18, 8, 10}, array[4]{15, 17, 7, 15}, array[4]{1, 3, 5, 1}, array[4]{57, 59, 55, 57}, array[4]{21, 11, 9, 21}, array[4]{39, 33, 47, 39}, array[4]{13, 27, 19, 13}, array[4]{6, 16, 14, 6}, array[4]{28, 37, 29, 28}, array[4]{51, 49, 41, 51}, array[4]{56, 54, 58, 56}, array[4]{48, 50, 38, 48}, array[4]{46, 32, 40, 46}, array[4]{31, 22, 30, 31}, array[4]{36, 25, 24, 36}, array[4]{4, 2, 0, 4}, array[4]{35, 23, 34, 35}, array[4]{42, 52, 44, 42}};

#declare UncoloredFaces = array[60]{array[4]{33, 47, 43, 33}, array[4]{33, 20, 26, 33}, array[4]{53, 47, 43, 53}, array[4]{53, 45, 55, 53}, array[4]{53, 59, 55, 53}, array[4]{11, 20, 12, 11}, array[4]{52, 54, 58, 52}, array[4]{52, 54, 44, 52}, array[4]{10, 18, 19, 10}, array[4]{16, 12, 26, 16}, array[4]{15, 5, 7, 15}, array[4]{3, 5, 9, 3}, array[4]{3, 11, 9, 3}, array[4]{1, 5, 7, 1}, array[4]{1, 3, 0, 1}, array[4]{57, 59, 58, 57}, array[4]{21, 11, 20, 21}, array[4]{39, 33, 26, 39}, array[4]{32, 27, 40, 32}, array[4]{32, 27, 19, 32}, array[4]{22, 24, 30, 22}, array[4]{22, 18, 8, 22}, array[4]{13, 17, 7, 13}, array[4]{13, 10, 19, 13}, array[4]{13, 27, 17, 13}, array[4]{25, 16, 14, 25}, array[4]{25, 24, 14, 25}, array[4]{6, 16, 12, 6}, array[4]{28, 15, 17, 28}, array[4]{28, 37, 41, 28}, array[4]{28, 15, 29, 28}, array[4]{2, 10, 8, 2}, array[4]{2, 1, 0, 2}, array[4]{49, 41, 40, 49}, array[4]{51, 57, 55, 51}, array[4]{51, 37, 41, 51}, array[4]{51, 49, 57, 51}, array[4]{34, 45, 43, 34}, array[4]{23, 21, 9, 23}, array[4]{23, 34, 21, 23}, array[4]{56, 50, 54, 56}, array[4]{56, 59, 58, 56}, array[4]{48, 39, 38, 48}, array[4]{48, 56, 50, 48}, array[4]{48, 39, 47, 48}, array[4]{46, 49, 40, 46}, array[4]{31, 22, 18, 31}, array[4]{31, 44, 30, 31}, array[4]{36, 25, 38, 36}, array[4]{36, 24, 30, 36}, array[4]{36, 50, 38, 36}, array[4]{4, 6, 14, 4}, array[4]{4, 2, 8, 4}, array[4]{4, 6, 0, 4}, array[4]{35, 34, 45, 35}, array[4]{35, 37, 29, 35}, array[4]{35, 23, 29, 35}, array[4]{42, 31, 44, 42}, array[4]{42, 46, 52, 42}, array[4]{42, 46, 32, 42}};



#declare RadVert = RadVert*.9;
#declare RadEdge = RadEdge*.9;

union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TDarkbrown }
    }

    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }
    union{
        #for( Index, 0, dimension_size(YellowEdges, 1) - 1 )
            #local EdgeArray = YellowEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TYellowish }
    }
    union{
        #for( Index, 0, dimension_size(RedEdges, 1) - 1 )
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TReddish }
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
    union{
        #for( Index, 0, dimension_size(UncoloredFaces, 1) - 1 )
            #local FaceArray = UncoloredFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TLightgray }
    }

    scale -x
    rotate Rotate
}
