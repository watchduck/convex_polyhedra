#declare Factor = 2.07128;

#declare Abs = array[10]{ (0.0)*Factor, (-sqrt(5)/4 + 5/4)*Factor, (sqrt(5)/22 + 15/22)*Factor, (sqrt(5)/2)*Factor, (sqrt(5)/6 + 5/6)*Factor, (5/11 + 4*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (5/6 + sqrt(5)/2)*Factor, (9*sqrt(5)/22 + 25/22)*Factor, (sqrt(5))*Factor, }
#declare NumberOfVertices = 62;
#declare P = array[62]{ <-Abs[9],Abs[0],Abs[0]>, <-Abs[8],-Abs[2],Abs[0]>, <-Abs[8],Abs[2],Abs[0]>, <-Abs[7],Abs[0],-Abs[4]>, <-Abs[7],Abs[0],Abs[4]>, <-Abs[6],-Abs[3],-Abs[1]>, <-Abs[6],-Abs[3],Abs[1]>, <-Abs[6],Abs[3],-Abs[1]>, <-Abs[6],Abs[3],Abs[1]>, <-Abs[5],-Abs[5],-Abs[5]>, <-Abs[5],-Abs[5],Abs[5]>, <-Abs[5],Abs[5],-Abs[5]>, <-Abs[5],Abs[5],Abs[5]>, <-Abs[4],-Abs[7],Abs[0]>, <-Abs[4],Abs[7],Abs[0]>, <-Abs[3],-Abs[1],-Abs[6]>, <-Abs[3],-Abs[1],Abs[6]>, <-Abs[3],Abs[1],-Abs[6]>, <-Abs[3],Abs[1],Abs[6]>, <-Abs[2],Abs[0],-Abs[8]>, <-Abs[2],Abs[0],Abs[8]>, <-Abs[1],-Abs[6],-Abs[3]>, <-Abs[1],-Abs[6],Abs[3]>, <-Abs[1],Abs[6],-Abs[3]>, <-Abs[1],Abs[6],Abs[3]>, <-Abs[0],-Abs[9],Abs[0]>, <-Abs[0],-Abs[8],-Abs[2]>, <-Abs[0],-Abs[8],Abs[2]>, <-Abs[0],-Abs[4],-Abs[7]>, <-Abs[0],-Abs[4],Abs[7]>, <-Abs[0],Abs[0],-Abs[9]>, <-Abs[0],Abs[0],Abs[9]>, <-Abs[0],Abs[4],-Abs[7]>, <-Abs[0],Abs[4],Abs[7]>, <-Abs[0],Abs[8],-Abs[2]>, <-Abs[0],Abs[8],Abs[2]>, <-Abs[0],Abs[9],Abs[0]>, <Abs[1],-Abs[6],-Abs[3]>, <Abs[1],-Abs[6],Abs[3]>, <Abs[1],Abs[6],-Abs[3]>, <Abs[1],Abs[6],Abs[3]>, <Abs[2],Abs[0],-Abs[8]>, <Abs[2],Abs[0],Abs[8]>, <Abs[3],-Abs[1],-Abs[6]>, <Abs[3],-Abs[1],Abs[6]>, <Abs[3],Abs[1],-Abs[6]>, <Abs[3],Abs[1],Abs[6]>, <Abs[4],-Abs[7],Abs[0]>, <Abs[4],Abs[7],Abs[0]>, <Abs[5],-Abs[5],-Abs[5]>, <Abs[5],-Abs[5],Abs[5]>, <Abs[5],Abs[5],-Abs[5]>, <Abs[5],Abs[5],Abs[5]>, <Abs[6],-Abs[3],-Abs[1]>, <Abs[6],-Abs[3],Abs[1]>, <Abs[6],Abs[3],-Abs[1]>, <Abs[6],Abs[3],Abs[1]>, <Abs[7],Abs[0],-Abs[4]>, <Abs[7],Abs[0],Abs[4]>, <Abs[8],-Abs[2],Abs[0]>, <Abs[8],Abs[2],Abs[0]>, <Abs[9],Abs[0],Abs[0]>, }

#declare RedVertices = array[12]{3, 4, 13, 14, 28, 29, 32, 33, 47, 48, 57, 58};

#declare YellowVertices = array[20]{1, 2, 9, 10, 11, 12, 19, 20, 26, 27, 34, 35, 41, 42, 49, 50, 51, 52, 59, 60};

#declare BlueVertices = array[30]{0, 5, 6, 7, 8, 15, 16, 17, 18, 21, 22, 23, 24, 25, 30, 31, 36, 37, 38, 39, 40, 43, 44, 45, 46, 53, 54, 55, 56, 61};

#declare UncoloredEdges = array[120]{array[2]{22, 29}, array[2]{3, 17}, array[2]{14, 36}, array[2]{47, 54}, array[2]{34, 36}, array[2]{12, 18}, array[2]{58, 61}, array[2]{25, 47}, array[2]{41, 43}, array[2]{0, 4}, array[2]{21, 28}, array[2]{26, 37}, array[2]{25, 26}, array[2]{8, 14}, array[2]{44, 50}, array[2]{37, 49}, array[2]{37, 47}, array[2]{42, 46}, array[2]{7, 11}, array[2]{18, 33}, array[2]{54, 58}, array[2]{5, 13}, array[2]{9, 15}, array[2]{28, 30}, array[2]{11, 17}, array[2]{32, 45}, array[2]{3, 15}, array[2]{20, 31}, array[2]{57, 61}, array[2]{25, 27}, array[2]{18, 20}, array[2]{34, 39}, array[2]{16, 20}, array[2]{48, 56}, array[2]{43, 49}, array[2]{14, 24}, array[2]{19, 30}, array[2]{51, 55}, array[2]{29, 31}, array[2]{8, 12}, array[2]{47, 53}, array[2]{4, 16}, array[2]{45, 51}, array[2]{36, 48}, array[2]{9, 21}, array[2]{1, 6}, array[2]{22, 27}, array[2]{39, 48}, array[2]{10, 22}, array[2]{35, 40}, array[2]{48, 55}, array[2]{4, 6}, array[2]{7, 14}, array[2]{60, 61}, array[2]{24, 33}, array[2]{28, 43}, array[2]{17, 19}, array[2]{30, 32}, array[2]{43, 57}, array[2]{4, 8}, array[2]{4, 18}, array[2]{23, 32}, array[2]{13, 22}, array[2]{15, 28}, array[2]{56, 58}, array[2]{29, 44}, array[2]{33, 46}, array[2]{13, 25}, array[2]{59, 61}, array[2]{23, 34}, array[2]{39, 51}, array[2]{1, 5}, array[2]{32, 39}, array[2]{54, 59}, array[2]{17, 32}, array[2]{29, 38}, array[2]{45, 57}, array[2]{10, 16}, array[2]{52, 56}, array[2]{46, 52}, array[2]{11, 23}, array[2]{50, 54}, array[2]{21, 26}, array[2]{28, 37}, array[2]{38, 47}, array[2]{0, 3}, array[2]{3, 7}, array[2]{53, 57}, array[2]{35, 36}, array[2]{42, 44}, array[2]{5, 9}, array[2]{56, 60}, array[2]{38, 50}, array[2]{0, 1}, array[2]{27, 38}, array[2]{41, 45}, array[2]{13, 21}, array[2]{12, 24}, array[2]{31, 33}, array[2]{33, 40}, array[2]{49, 53}, array[2]{16, 29}, array[2]{55, 60}, array[2]{14, 23}, array[2]{30, 41}, array[2]{3, 5}, array[2]{40, 52}, array[2]{44, 58}, array[2]{46, 58}, array[2]{2, 7}, array[2]{2, 8}, array[2]{55, 57}, array[2]{6, 10}, array[2]{6, 13}, array[2]{31, 42}, array[2]{15, 19}, array[2]{24, 35}, array[2]{53, 59}, array[2]{40, 48}, array[2]{0, 2}};


union{
    #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
        sphere{ P[YellowVertices[Index]], RadVert }
    #end
    texture{ TYellow }
}
union{
    #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
        sphere{ P[BlueVertices[Index]], RadVert }
    #end
    texture{ TBlue }
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

