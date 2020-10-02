#declare Factor = 3.0894;

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2)/7 + 4/7)*Factor, (1.0)*Factor, (sqrt(2))*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 9, 12, 13, 16, 25};

#declare YellowVertices = array[8]{5, 6, 7, 8, 17, 18, 19, 20};

#declare BlueVertices = array[12]{1, 2, 3, 4, 10, 11, 14, 15, 21, 22, 23, 24};

#declare UncoloredEdges = array[48]{array[2]{23, 25}, array[2]{1, 6}, array[2]{9, 11}, array[2]{0, 1}, array[2]{22, 25}, array[2]{19, 24}, array[2]{7, 14}, array[2]{18, 23}, array[2]{11, 18}, array[2]{4, 8}, array[2]{9, 10}, array[2]{14, 16}, array[2]{3, 8}, array[2]{1, 5}, array[2]{24, 25}, array[2]{0, 3}, array[2]{11, 13}, array[2]{5, 10}, array[2]{2, 5}, array[2]{12, 14}, array[2]{12, 22}, array[2]{19, 22}, array[2]{20, 23}, array[2]{4, 16}, array[2]{0, 2}, array[2]{13, 23}, array[2]{15, 16}, array[2]{18, 21}, array[2]{17, 22}, array[2]{2, 12}, array[2]{13, 15}, array[2]{17, 21}, array[2]{6, 11}, array[2]{0, 4}, array[2]{3, 6}, array[2]{3, 13}, array[2]{21, 25}, array[2]{2, 7}, array[2]{4, 7}, array[2]{10, 17}, array[2]{15, 20}, array[2]{14, 19}, array[2]{10, 12}, array[2]{9, 21}, array[2]{20, 24}, array[2]{16, 24}, array[2]{1, 9}, array[2]{8, 15}};

union{
    #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
        sphere{ P[RedVertices[Index]], RadVert }
    #end
    texture{ TRed }
}
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
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}

