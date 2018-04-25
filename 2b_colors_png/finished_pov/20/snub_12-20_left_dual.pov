#include "polyhedra_colors.inc"





///////////////////////////// DEFINE


#declare RadVert = RadVert*.9;
#declare RadEdge = RadEdge*.9;

#declare Factor = 1.4305784620308741;

#declare Abs = array[21]{ (0.0)*Factor, (0.1928937)*Factor, (0.2184833)*Factor, (0.3748216)*Factor, (0.5677153)*Factor, (0.7283351)*Factor, (0.7554672)*Factor, (0.8249575)*Factor, (0.9212288)*Factor, (0.9599877)*Factor, (1.1370661)*Factor, (1.1671234)*Factor, (1.2223717)*Factor, (1.2720962)*Factor, (1.527703)*Factor, (1.6469179)*Factor, (1.7461864)*Factor, (1.8654013)*Factor, (1.8884453)*Factor, (1.9778389)*Factor, (2.0970538)*Factor, }


//////////// define vertices

#declare NumberOfVertices = 92;
#declare P = array[92]{ <-Abs[20],-Abs[1],-Abs[2]>, <-Abs[20],Abs[1],Abs[2]>, <-Abs[19],Abs[0],-Abs[6]>, <-Abs[19],Abs[0],Abs[6]>, <-Abs[18],-Abs[11],Abs[0]>, <-Abs[18],Abs[11],Abs[0]>, <-Abs[17],-Abs[4],Abs[7]>, <-Abs[17],Abs[4],-Abs[7]>, <-Abs[16],-Abs[3],-Abs[10]>, <-Abs[16],Abs[3],Abs[10]>, <-Abs[15],-Abs[8],-Abs[9]>, <-Abs[15],Abs[8],Abs[9]>, <-Abs[14],-Abs[5],Abs[13]>, <-Abs[14],Abs[5],-Abs[13]>, <-Abs[13],-Abs[14],Abs[5]>, <-Abs[13],Abs[14],-Abs[5]>, <-Abs[12],-Abs[12],-Abs[12]>, <-Abs[12],-Abs[12],Abs[12]>, <-Abs[12],Abs[12],-Abs[12]>, <-Abs[12],Abs[12],Abs[12]>, <-Abs[11],Abs[0],-Abs[18]>, <-Abs[11],Abs[0],Abs[18]>, <-Abs[10],-Abs[16],-Abs[3]>, <-Abs[10],Abs[16],Abs[3]>, <-Abs[9],-Abs[15],-Abs[8]>, <-Abs[9],Abs[15],Abs[8]>, <-Abs[8],-Abs[9],-Abs[15]>, <-Abs[8],Abs[9],Abs[15]>, <-Abs[7],-Abs[17],Abs[4]>, <-Abs[7],Abs[17],-Abs[4]>, <-Abs[6],-Abs[19],Abs[0]>, <-Abs[6],Abs[19],Abs[0]>, <-Abs[5],-Abs[13],Abs[14]>, <-Abs[5],Abs[13],-Abs[14]>, <-Abs[4],-Abs[7],Abs[17]>, <-Abs[4],Abs[7],-Abs[17]>, <-Abs[3],-Abs[10],-Abs[16]>, <-Abs[3],Abs[10],Abs[16]>, <-Abs[2],-Abs[20],-Abs[1]>, <-Abs[2],Abs[20],Abs[1]>, <-Abs[1],-Abs[2],-Abs[20]>, <-Abs[1],Abs[2],Abs[20]>, <Abs[0],-Abs[18],-Abs[11]>, <Abs[0],-Abs[18],Abs[11]>, <Abs[0],-Abs[6],-Abs[19]>, <Abs[0],-Abs[6],Abs[19]>, <Abs[0],Abs[6],-Abs[19]>, <Abs[0],Abs[6],Abs[19]>, <Abs[0],Abs[18],-Abs[11]>, <Abs[0],Abs[18],Abs[11]>, <Abs[1],-Abs[2],Abs[20]>, <Abs[1],Abs[2],-Abs[20]>, <Abs[2],-Abs[20],Abs[1]>, <Abs[2],Abs[20],-Abs[1]>, <Abs[3],-Abs[10],Abs[16]>, <Abs[3],Abs[10],-Abs[16]>, <Abs[4],-Abs[7],-Abs[17]>, <Abs[4],Abs[7],Abs[17]>, <Abs[5],-Abs[13],-Abs[14]>, <Abs[5],Abs[13],Abs[14]>, <Abs[6],-Abs[19],Abs[0]>, <Abs[6],Abs[19],Abs[0]>, <Abs[7],-Abs[17],-Abs[4]>, <Abs[7],Abs[17],Abs[4]>, <Abs[8],-Abs[9],Abs[15]>, <Abs[8],Abs[9],-Abs[15]>, <Abs[9],-Abs[15],Abs[8]>, <Abs[9],Abs[15],-Abs[8]>, <Abs[10],-Abs[16],Abs[3]>, <Abs[10],Abs[16],-Abs[3]>, <Abs[11],Abs[0],-Abs[18]>, <Abs[11],Abs[0],Abs[18]>, <Abs[12],-Abs[12],-Abs[12]>, <Abs[12],-Abs[12],Abs[12]>, <Abs[12],Abs[12],-Abs[12]>, <Abs[12],Abs[12],Abs[12]>, <Abs[13],-Abs[14],-Abs[5]>, <Abs[13],Abs[14],Abs[5]>, <Abs[14],-Abs[5],-Abs[13]>, <Abs[14],Abs[5],Abs[13]>, <Abs[15],-Abs[8],Abs[9]>, <Abs[15],Abs[8],-Abs[9]>, <Abs[16],-Abs[3],Abs[10]>, <Abs[16],Abs[3],-Abs[10]>, <Abs[17],-Abs[4],-Abs[7]>, <Abs[17],Abs[4],Abs[7]>, <Abs[18],-Abs[11],Abs[0]>, <Abs[18],Abs[11],Abs[0]>, <Abs[19],Abs[0],-Abs[6]>, <Abs[19],Abs[0],Abs[6]>, <Abs[20],-Abs[1],Abs[2]>, <Abs[20],Abs[1],-Abs[2]>, }

#declare NumberOfRedVertices = 12;
#declare RedVertices = array[NumberOfRedVertices]{
    70, 48, 20, 42, 86, 43, 4, 87, 21, 71, 49, 5
}

#declare NumberOfYellowVertices = 20;
#declare YellowVertices = array[NumberOfYellowVertices]{
    30, 60, 46, 44, 72, 74, 88, 16, 73, 17, 45, 89, 47, 75, 19, 61, 31, 3, 18, 2
}


//////////// define edges

#declare NumberOfYellowEdges = 60;
#declare YellowEdges = array[NumberOfYellowEdges]{
    array[2]{65, 74}, array[2]{14, 17}, array[2]{67, 74}, array[2]{73, 80}, array[2]{37, 47}, 
    array[2]{88, 91}, array[2]{83, 88}, array[2]{34, 45}, array[2]{28, 30}, array[2]{23, 31}, 
    array[2]{72, 78}, array[2]{0, 2}, array[2]{31, 39}, array[2]{52, 60}, array[2]{58, 72}, 
    array[2]{19, 25}, array[2]{85, 89}, array[2]{61, 63}, array[2]{45, 50}, array[2]{60, 68}, 
    array[2]{29, 31}, array[2]{44, 56}, array[2]{82, 89}, array[2]{40, 44}, array[2]{15, 18}, 
    array[2]{75, 77}, array[2]{74, 81}, array[2]{75, 79}, array[2]{46, 55}, array[2]{53, 61}, 
    array[2]{30, 38}, array[2]{16, 26}, array[2]{3, 6}, array[2]{22, 30}, array[2]{89, 90}, 
    array[2]{12, 17}, array[2]{2, 7}, array[2]{3, 9},  array[2]{16, 24}, array[2]{35, 46}, 
    array[2]{60, 62}, array[2]{41, 47}, array[2]{59, 75}, array[2]{36, 44}, array[2]{46, 51}, 
    array[2]{13, 18}, array[2]{72, 76}, array[2]{10, 16}, array[2]{84, 88}, array[2]{47, 57}, 
    array[2]{11, 19}, array[2]{45, 54}, array[2]{66, 73}, array[2]{64, 73}, array[2]{61, 69}, 
    array[2]{17, 32}, array[2]{1, 3}, array[2]{18, 33}, array[2]{19, 27}, array[2]{2, 8}
};

#declare NumberOfRedEdges = 60;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{51, 70}, array[2]{70, 83}, array[2]{65, 70}, array[2]{70, 78}, array[2]{56, 70}, 
    array[2]{48, 53}, array[2]{33, 48}, array[2]{48, 67}, array[2]{48, 55}, array[2]{29, 48}, 
    array[2]{20, 35}, array[2]{20, 26}, array[2]{20, 40}, array[2]{13, 20}, array[2]{8, 20}, 
    array[2]{42, 62}, array[2]{36, 42}, array[2]{24, 42}, array[2]{38, 42}, array[2]{42, 58}, 
    array[2]{86, 90}, array[2]{80, 86}, array[2]{76, 86}, array[2]{68, 86}, array[2]{84, 86}, 
    array[2]{43, 52}, array[2]{32, 43}, array[2]{43, 66}, array[2]{43, 54}, array[2]{28, 43}, 
    array[2]{4, 10}, array[2]{4, 6}, array[2]{4, 22}, array[2]{4, 14}, array[2]{0, 4}, 
    array[2]{77, 87}, array[2]{69, 87}, array[2]{81, 87}, array[2]{85, 87}, array[2]{87, 91}, 
    array[2]{21, 34}, array[2]{21, 41}, array[2]{21, 27}, array[2]{12, 21}, array[2]{9, 21}, 
    array[2]{71, 82}, array[2]{64, 71}, array[2]{71, 79}, array[2]{50, 71}, array[2]{57, 71}, 
    array[2]{49, 59}, array[2]{37, 49}, array[2]{25, 49}, array[2]{49, 63}, array[2]{39, 49}, 
    array[2]{5, 7}, array[2]{5, 23}, array[2]{5, 15}, array[2]{5, 11}, array[2]{1, 5}
};

#declare NumberOfBlueEdges = 30;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{40, 51}, array[2]{55, 65}, array[2]{81, 83}, array[2]{33, 35}, array[2]{78, 84}, 
    array[2]{56, 58}, array[2]{67, 69}, array[2]{15, 29}, array[2]{26, 36}, array[2]{39, 53}, 
    array[2]{7, 13}, array[2]{63, 77}, array[2]{79, 85}, array[2]{90, 91}, array[2]{80, 82}, 
    array[2]{54, 64}, array[2]{57, 59}, array[2]{27, 37},  array[2]{23, 25}, array[2]{9, 11}, 
    array[2]{41, 50}, array[2]{32, 34}, array[2]{6, 12}, array[2]{8, 10}, array[2]{0, 1}, 
    array[2]{62, 76}, array[2]{38, 52}, array[2]{66, 68}, array[2]{22, 24}, array[2]{14, 28}, 
};


//////////// define faces

#declare NumberOfTriangles = 180;
#declare Triangles = array[180]{array[4]{5, 7, 18, 5}, array[4]{1, 7, 0, 1}, array[4]{1, 5, 7, 1}, array[4]{1, 5, 11, 1}, array[4]{77, 87, 75, 77}, array[4]{69, 87, 74, 69}, array[4]{55, 48, 74, 55}, array[4]{22, 4, 16, 22}, array[4]{27, 21, 41, 27}, array[4]{6, 4, 17, 6}, array[4]{6, 4, 0, 6}, array[4]{6, 1, 0, 6}, array[4]{86, 80, 90, 86}, array[4]{62, 86, 68, 62}, array[4]{85, 87, 75, 85}, array[4]{50, 71, 64, 50}, array[4]{66, 68, 52, 66}, array[4]{66, 43, 52, 66}, array[4]{34, 21, 17, 34}, array[4]{34, 21, 41, 34}, array[4]{34, 50, 41, 34}, array[4]{13, 7, 18, 13}, array[4]{13, 20, 18, 13}, array[4]{13, 20, 7, 13}, array[4]{8, 20, 16, 8}, array[4]{8, 20, 7, 8}, array[4]{91, 85, 90, 91}, array[4]{91, 85, 87, 91}, array[4]{26, 20, 16, 26}, array[4]{26, 36, 16, 26}, array[4]{29, 48, 18, 29}, array[4]{29, 23, 5, 29}, array[4]{63, 49, 75, 63}, array[4]{63, 77, 75, 63}, array[4]{63, 49, 39, 63}, array[4]{63, 77, 87, 63}, array[4]{63, 69, 87, 63}, array[4]{67, 48, 74, 67}, array[4]{67, 69, 74, 67}, array[4]{53, 29, 39, 53}, array[4]{53, 29, 48, 53}, array[4]{53, 63, 39, 53}, array[4]{53, 67, 48, 53}, array[4]{53, 67, 69, 53}, array[4]{46, 55, 51, 46}, array[4]{24, 22, 16, 24}, array[4]{28, 43, 52, 28}, array[4]{28, 43, 17, 28}, array[4]{28, 22, 4, 28}, array[4]{57, 71, 75, 57}, array[4]{57, 50, 71, 57}, array[4]{57, 47, 41, 57}, array[4]{57, 50, 41, 57}, array[4]{19, 27, 21, 19}, array[4]{19, 5, 11, 19}, array[4]{19, 23, 5, 19}, array[4]{37, 57, 49, 37}, array[4]{37, 57, 47, 37}, array[4]{37, 19, 49, 37}, array[4]{37, 19, 27, 37}, array[4]{37, 47, 41, 37}, array[4]{37, 27, 41, 37}, array[4]{12, 21, 17, 12}, array[4]{12, 6, 17, 12}, array[4]{12, 6, 21, 12}, array[4]{9, 1, 11, 9}, array[4]{9, 6, 21, 9}, array[4]{9, 19, 11, 9}, array[4]{9, 19, 21, 9}, array[4]{60, 68, 52, 60}, array[4]{60, 62, 52, 60}, array[4]{60, 62, 68, 60}, array[4]{42, 62, 72, 42}, array[4]{42, 56, 36, 42}, array[4]{42, 36, 16, 42}, array[4]{42, 24, 16, 42}, array[4]{76, 86, 72, 76}, array[4]{76, 62, 72, 76}, array[4]{76, 62, 86, 76}, array[4]{79, 71, 75, 79}, array[4]{79, 85, 75, 79}, array[4]{79, 85, 71, 79}, array[4]{82, 85, 71, 82}, array[4]{82, 80, 90, 82}, array[4]{73, 66, 43, 73}, array[4]{73, 71, 64, 73}, array[4]{73, 86, 80, 73}, array[4]{73, 82, 71, 73}, array[4]{73, 82, 80, 73}, array[4]{73, 86, 68, 73}, array[4]{73, 66, 68, 73}, array[4]{32, 43, 17, 32}, array[4]{32, 34, 17, 32}, array[4]{32, 34, 43, 32}, array[4]{45, 34, 50, 45}, array[4]{10, 4, 0, 10}, array[4]{10, 8, 0, 10}, array[4]{10, 4, 16, 10}, array[4]{10, 8, 16, 10}, array[4]{2, 7, 0, 2}, array[4]{2, 8, 0, 2}, array[4]{2, 8, 7, 2}, array[4]{65, 55, 51, 65}, array[4]{65, 55, 74, 65}, array[4]{84, 78, 72, 84}, array[4]{84, 86, 72, 84}, array[4]{84, 86, 90, 84}, array[4]{84, 91, 90, 84}, array[4]{81, 87, 74, 81}, array[4]{81, 83, 74, 81}, array[4]{81, 91, 87, 81}, array[4]{81, 83, 91, 81}, array[4]{70, 78, 72, 70}, array[4]{70, 56, 72, 70}, array[4]{70, 84, 78, 70}, array[4]{70, 84, 83, 70}, array[4]{70, 56, 51, 70}, array[4]{70, 65, 51, 70}, array[4]{70, 83, 74, 70}, array[4]{70, 65, 74, 70}, array[4]{40, 56, 51, 40}, array[4]{40, 26, 20, 40}, array[4]{40, 26, 36, 40}, array[4]{31, 23, 39, 31}, array[4]{31, 29, 39, 31}, array[4]{31, 29, 23, 31}, array[4]{15, 5, 18, 15}, array[4]{15, 29, 18, 15}, array[4]{15, 29, 5, 15}, array[4]{61, 63, 69, 61}, array[4]{61, 53, 69, 61}, array[4]{61, 53, 63, 61}, array[4]{35, 20, 18, 35}, array[4]{35, 40, 20, 35}, array[4]{35, 55, 48, 35}, array[4]{35, 46, 55, 35}, array[4]{35, 46, 51, 35}, array[4]{35, 40, 51, 35}, array[4]{14, 4, 17, 14}, array[4]{14, 28, 17, 14}, array[4]{14, 28, 4, 14}, array[4]{59, 49, 75, 59}, array[4]{59, 57, 75, 59}, array[4]{59, 57, 49, 59}, array[4]{25, 19, 49, 25}, array[4]{25, 19, 23, 25}, array[4]{25, 49, 39, 25}, array[4]{25, 23, 39, 25}, array[4]{3, 6, 1, 3}, array[4]{3, 9, 1, 3}, array[4]{3, 9, 6, 3}, array[4]{58, 56, 72, 58}, array[4]{58, 42, 72, 58}, array[4]{58, 42, 56, 58}, array[4]{38, 62, 52, 38}, array[4]{38, 42, 62, 38}, array[4]{38, 28, 52, 38}, array[4]{38, 24, 22, 38}, array[4]{38, 42, 24, 38}, array[4]{89, 85, 90, 89}, array[4]{89, 82, 90, 89}, array[4]{89, 82, 85, 89}, array[4]{54, 50, 64, 54}, array[4]{54, 45, 50, 54}, array[4]{54, 73, 64, 54}, array[4]{54, 73, 43, 54}, array[4]{54, 34, 43, 54}, array[4]{54, 45, 34, 54}, array[4]{88, 83, 91, 88}, array[4]{88, 84, 91, 88}, array[4]{88, 84, 83, 88}, array[4]{44, 56, 36, 44}, array[4]{44, 40, 36, 44}, array[4]{44, 40, 56, 44}, array[4]{33, 48, 18, 33}, array[4]{33, 35, 18, 33}, array[4]{33, 35, 48, 33}, array[4]{30, 28, 22, 30}, array[4]{30, 38, 22, 30}, array[4]{30, 38, 28, 30}};



///////////////////////////// PUT

union{

    //////////// put vertices (gray spheres in all vertices, red and yellow ones slightly bigger)

    union{
        #for(Index, 0, NumberOfVertices-1)
            sphere{ P[Index], RadVert*.99 }
        #end
        texture{ TLightgray }
    }

    union{
        #for(Index, 0, NumberOfRedVertices-1)
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }

    union{
        #for(Index, 0, NumberOfYellowVertices-1)
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }


    //////////// put edges

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
        #for(Index, 0, NumberOfBlueEdges-1)
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }


    //////////// put faces

    union{
        #for(Index, 0, NumberOfTriangles-1)
            #local FaceArray = Triangles[Index];
            polygon{ 4,
                #for(VertexIndexInFace, 0, 3)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TBrown }
    }

    rotate 90*z

}
