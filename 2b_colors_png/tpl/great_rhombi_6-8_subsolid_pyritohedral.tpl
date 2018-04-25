#include "polyhedra_colors.inc"



{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[48]{ <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare DarkbrownVertices = array[24]{2, 2, 4, 4, 10, 10, 12, 12, 18, 18, 20, 20, 24, 24, 30, 30, 32, 32, 38, 38, 40, 40, 46, 46};

#declare LightbrownVertices = array[24]{0, 0, 6, 6, 8, 8, 14, 14, 16, 16, 22, 22, 26, 26, 28, 28, 34, 34, 36, 36, 42, 42, 44, 44};

#declare UncoloredEdges = array[48]{array[2]{8, 16}, array[2]{28, 44}, array[2]{24, 40}, array[2]{4, 12}, array[2]{4, 20}, array[2]{0, 2}, array[2]{10, 34}, array[2]{2, 10}, array[2]{32, 34}, array[2]{22, 30}, array[2]{40, 42}, array[2]{12, 36}, array[2]{18, 26}, array[2]{2, 18}, array[2]{12, 20}, array[2]{32, 40}, array[2]{40, 44}, array[2]{20, 28}, array[2]{26, 30}, array[2]{28, 36}, array[2]{2, 6}, array[2]{14, 22}, array[2]{0, 8}, array[2]{26, 34}, array[2]{10, 18}, array[2]{34, 42}, array[2]{44, 46}, array[2]{8, 32}, array[2]{38, 46}, array[2]{18, 22}, array[2]{36, 44}, array[2]{30, 46}, array[2]{0, 16}, array[2]{24, 28}, array[2]{24, 32}, array[2]{16, 24}, array[2]{4, 6}, array[2]{30, 38}, array[2]{8, 10}, array[2]{0, 4}, array[2]{6, 14}, array[2]{14, 38}, array[2]{36, 38}, array[2]{16, 20}, array[2]{12, 14}, array[2]{6, 22}, array[2]{26, 42}, array[2]{42, 46}};

#declare RedFaces = array[6]{array[5]{24, 16, 20, 28, 24}, array[5]{40, 42, 46, 44, 40}, array[5]{22, 18, 26, 30, 22}, array[5]{2, 6, 4, 0, 2}, array[5]{8, 10, 34, 32, 8}, array[5]{36, 12, 14, 38, 36}};

#declare YellowFaces = array[8]{array[4]{16, 8, 0, 16}, array[4]{4, 20, 12, 4}, array[4]{36, 44, 28, 36}, array[4]{14, 22, 6, 14}, array[4]{10, 2, 18, 10}, array[4]{32, 24, 40, 32}, array[4]{26, 34, 42, 26}, array[4]{46, 30, 38, 46}};

#declare UncoloredFaces = array[12]{array[5]{8, 32, 24, 16, 8}, array[5]{40, 24, 28, 44, 40}, array[5]{36, 44, 46, 38, 36}, array[5]{26, 18, 10, 34, 26}, array[5]{32, 34, 42, 40, 32}, array[5]{10, 2, 0, 8, 10}, array[5]{12, 14, 6, 4, 12}, array[5]{28, 36, 12, 20, 28}, array[5]{38, 14, 22, 30, 38}, array[5]{20, 4, 0, 16, 20}, array[5]{2, 6, 22, 18, 2}, array[5]{42, 46, 30, 26, 42}};



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
        #for( Index, 0, dimension_size(UncoloredFaces, 1) - 1 )
            #local FaceArray = UncoloredFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        pigment{ color rgb<.5, .5, .8> }
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
