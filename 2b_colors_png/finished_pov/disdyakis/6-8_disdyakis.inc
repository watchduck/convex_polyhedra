#declare UncoloredEdges = array[72]{array[2]{13, 23}, array[2]{3, 6}, array[2]{6, 11}, array[2]{19, 24}, array[2]{10, 12}, array[2]{17, 25}, array[2]{14, 16}, array[2]{4, 8}, array[2]{3, 13}, array[2]{1, 6}, array[2]{23, 25}, array[2]{12, 14}, array[2]{0, 4}, array[2]{12, 22}, array[2]{7, 12}, array[2]{4, 7}, array[2]{20, 25}, array[2]{2, 7}, array[2]{13, 15}, array[2]{22, 25}, array[2]{12, 17}, array[2]{9, 18}, array[2]{15, 16}, array[2]{18, 21}, array[2]{4, 16}, array[2]{1, 5}, array[2]{0, 3}, array[2]{0, 1}, array[2]{17, 22}, array[2]{15, 20}, array[2]{0, 5}, array[2]{16, 24}, array[2]{16, 20}, array[2]{7, 14}, array[2]{0, 7}, array[2]{13, 20}, array[2]{0, 6}, array[2]{2, 12}, array[2]{19, 25}, array[2]{24, 25}, array[2]{20, 23}, array[2]{11, 18}, array[2]{9, 10}, array[2]{17, 21}, array[2]{20, 24}, array[2]{9, 17}, array[2]{18, 23}, array[2]{0, 2}, array[2]{6, 13}, array[2]{9, 11}, array[2]{6, 9}, array[2]{2, 5}, array[2]{5, 9}, array[2]{3, 8}, array[2]{21, 25}, array[2]{5, 10}, array[2]{8, 16}, array[2]{19, 22}, array[2]{7, 16}, array[2]{5, 12}, array[2]{8, 15}, array[2]{13, 18}, array[2]{14, 19}, array[2]{16, 19}, array[2]{12, 19}, array[2]{8, 13}, array[2]{0, 8}, array[2]{10, 17}, array[2]{11, 13}, array[2]{18, 25}, array[2]{1, 9}, array[2]{9, 21}};


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

