#declare UncoloredEdges = array[36]{array[2]{8, 11}, array[2]{1, 3}, array[2]{11, 13}, array[2]{1, 5}, array[2]{6, 11}, array[2]{1, 2}, array[2]{2, 10}, array[2]{0, 2}, array[2]{4, 8}, array[2]{0, 1}, array[2]{10, 12}, array[2]{12, 13}, array[2]{7, 10}, array[2]{2, 7}, array[2]{4, 7}, array[2]{8, 12}, array[2]{2, 4}, array[2]{3, 11}, array[2]{1, 9}, array[2]{9, 13}, array[2]{3, 6}, array[2]{0, 4}, array[2]{2, 5}, array[2]{3, 4}, array[2]{11, 12}, array[2]{4, 12}, array[2]{9, 10}, array[2]{5, 9}, array[2]{3, 8}, array[2]{5, 10}, array[2]{1, 6}, array[2]{9, 11}, array[2]{10, 13}, array[2]{7, 12}, array[2]{0, 3}, array[2]{6, 9}};

union{
    #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
        sphere{ P[BlueVertices[Index]], RadVert }
    #end
    texture{ TBlue }
}
union{
    #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
        sphere{ P[YellowVertices[Index]], RadVert }
    #end
    texture{ TYellow }
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

