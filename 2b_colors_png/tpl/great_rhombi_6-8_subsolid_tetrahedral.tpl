#include "polyhedra_colors.inc"



{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],-Abs[0]>, }

#declare DarkbrownVertices = array[24]{0, 0, 6, 6, 10, 10, 12, 12, 16, 16, 22, 22, 24, 24, 30, 30, 34, 34, 36, 36, 40, 40, 46, 46};

#declare LightbrownVertices = array[24]{2, 2, 4, 4, 8, 8, 14, 14, 18, 18, 20, 20, 26, 26, 28, 28, 32, 32, 38, 38, 42, 42, 44, 44};

#declare UncoloredEdges = array[36]{array[2]{4, 12}, array[2]{24, 32}, array[2]{28, 36}, array[2]{28, 30}, array[2]{36, 44}, array[2]{16, 18}, array[2]{30, 38}, array[2]{12, 20}, array[2]{20, 34}, array[2]{10, 28}, array[2]{32, 40}, array[2]{40, 42}, array[2]{34, 42}, array[2]{6, 14}, array[2]{0, 4}, array[2]{20, 22}, array[2]{2, 10}, array[2]{26, 34}, array[2]{2, 6}, array[2]{4, 6}, array[2]{14, 30}, array[2]{22, 38}, array[2]{8, 16}, array[2]{18, 36}, array[2]{0, 2}, array[2]{40, 44}, array[2]{38, 46}, array[2]{8, 24}, array[2]{12, 26}, array[2]{14, 22}, array[2]{10, 18}, array[2]{44, 46}, array[2]{0, 8}, array[2]{42, 46}, array[2]{24, 26}, array[2]{16, 32}};

#declare RedFaces = array[6]{array[5]{32, 24, 8, 16, 32}, array[5]{40, 44, 46, 42, 40}, array[5]{4, 6, 2, 0, 4}, array[5]{18, 10, 28, 36, 18}, array[5]{12, 20, 34, 26, 12}, array[5]{30, 38, 22, 14, 30}};

#declare YellowFaces = array[8]{array[7]{2, 10, 18, 16, 8, 0, 2}, array[7]{46, 38, 22, 20, 34, 42, 46}, array[7]{22, 14, 6, 4, 12, 20, 22}, array[7]{8, 24, 26, 12, 4, 0, 8}, array[7]{42, 40, 32, 24, 26, 34, 42}, array[7]{16, 32, 40, 44, 36, 18, 16}, array[7]{6, 2, 10, 28, 30, 14, 6}, array[7]{44, 36, 28, 30, 38, 46, 44}};



union{

    union{
        #for( Index, 0, dimension_size(DarkbrownVertices, 1) - 1 )
            sphere{ P[DarkbrownVertices[Index]], RadVert }
        #end
        texture{ TDarkbrown }
    }
    union{
        #for( Index, 0, dimension_size(LightbrownVertices, 1) - 1 )
            sphere{ P[LightbrownVertices[Index]], RadVert }
        #end
        texture{ TLightbrown }
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

    rotate Rotate
}
