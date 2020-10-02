#include "header.inc"

#declare Factor = (8*sqrt(2/3)) / 3;

#declare Abs = array[3]{ 0, (3*sqrt(2)/4)*Factor, (9*sqrt(2)/8)*Factor, }

#declare ToCube = 2/3;
#declare ToTetra = 1/3;
#declare ToDodeca = 4/3;

#declare CoordinateVariants = array[5]{
	array[14]{  // 0  disdyakis hexa
		<-Abs[2],Abs[0],Abs[0]>,  // blue
		<-Abs[1],-Abs[1],-Abs[1]>,  // yellow
		<-Abs[1],-Abs[1],Abs[1]>,  // red
		<-Abs[1],Abs[1],-Abs[1]>,  // red
		<-Abs[1],Abs[1],Abs[1]>,  // yellow
		<Abs[0],-Abs[2],Abs[0]>,  // blue
		<Abs[0],Abs[0],-Abs[2]>,  // blue
		<Abs[0],Abs[0],Abs[2]>,  // blue
		<Abs[0],Abs[2],Abs[0]>,  // blue
		<Abs[1],-Abs[1],-Abs[1]>,  // red
		<Abs[1],-Abs[1],Abs[1]>,  // yellow
		<Abs[1],Abs[1],-Abs[1]>,  // yellow
		<Abs[1],Abs[1],Abs[1]>,  // red
		<Abs[2],Abs[0],Abs[0]>,  // blue
	},
	array[14]{  // 1  'rhombic' hexa
		<-Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
		<-Abs[1],-Abs[1],-Abs[1]>,  // yellow
		<-Abs[1],-Abs[1],Abs[1]>,  // red
		<-Abs[1],Abs[1],-Abs[1]>,  // red
		<-Abs[1],Abs[1],Abs[1]>,  // yellow
		<Abs[0],-Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[0],Abs[0],-Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[0],Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[1],-Abs[1],-Abs[1]>,  // red
		<Abs[1],-Abs[1],Abs[1]>,  // yellow
		<Abs[1],Abs[1],-Abs[1]>,  // yellow
		<Abs[1],Abs[1],Abs[1]>,  // red
		<Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
	},
	array[14]{  // 2  tetra a
		<-Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
		<-Abs[1],-Abs[1],-Abs[1]>,  // yellow
		<-Abs[1],-Abs[1],Abs[1]>*ToTetra,  // red
		<-Abs[1],Abs[1],-Abs[1]>*ToTetra,  // red
		<-Abs[1],Abs[1],Abs[1]>,  // yellow
		<Abs[0],-Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[0],Abs[0],-Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[0],Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[1],-Abs[1],-Abs[1]>*ToTetra,  // red
		<Abs[1],-Abs[1],Abs[1]>,  // yellow
		<Abs[1],Abs[1],-Abs[1]>,  // yellow
		<Abs[1],Abs[1],Abs[1]>*ToTetra,  // red
		<Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
	},
	array[14]{  // 3  tetra b
		<-Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
		<-Abs[1],-Abs[1],-Abs[1]>*ToTetra,  // yellow
		<-Abs[1],-Abs[1],Abs[1]>,  // red
		<-Abs[1],Abs[1],-Abs[1]>,  // red
		<-Abs[1],Abs[1],Abs[1]>*ToTetra,  // yellow
		<Abs[0],-Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[0],Abs[0],-Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[0],Abs[2]>*ToCube,  // blue
		<Abs[0],Abs[2],Abs[0]>*ToCube,  // blue
		<Abs[1],-Abs[1],-Abs[1]>,  // red
		<Abs[1],-Abs[1],Abs[1]>*ToTetra,  // yellow
		<Abs[1],Abs[1],-Abs[1]>*ToTetra,  // yellow
		<Abs[1],Abs[1],Abs[1]>,  // red
		<Abs[2],Abs[0],Abs[0]>*ToCube,  // blue
	},
	array[14]{  // 4  'deltoidal' dodeca
		<-Abs[2],Abs[0],Abs[0]>*ToDodeca,  // blue
		<-Abs[1],-Abs[1],-Abs[1]>,  // yellow
		<-Abs[1],-Abs[1],Abs[1]>,  // red
		<-Abs[1],Abs[1],-Abs[1]>,  // red
		<-Abs[1],Abs[1],Abs[1]>,  // yellow
		<Abs[0],-Abs[2],Abs[0]>*ToDodeca,  // blue
		<Abs[0],Abs[0],-Abs[2]>*ToDodeca,  // blue
		<Abs[0],Abs[0],Abs[2]>*ToDodeca,  // blue
		<Abs[0],Abs[2],Abs[0]>*ToDodeca,  // blue
		<Abs[1],-Abs[1],-Abs[1]>,  // red
		<Abs[1],-Abs[1],Abs[1]>,  // yellow
		<Abs[1],Abs[1],-Abs[1]>,  // yellow
		<Abs[1],Abs[1],Abs[1]>,  // red
		<Abs[2],Abs[0],Abs[0]>*ToDodeca,  // blue
	},
}

#declare P = CoordinateVariants[VariantIndex];


#declare RedVertices = array[4]{2, 3, 9, 12};

#declare YellowVertices = array[4]{1, 4, 10, 11};

#declare BlueVertices = array[6]{0, 5, 6, 7, 8, 13};

#declare LightbrownFaces = array[12]{array[4]{12, 4, 8, 12}, array[4]{3, 4, 0, 3}, array[4]{11, 12, 13, 11}, array[4]{11, 3, 8, 11}, array[4]{10, 12, 7, 10}, array[4]{2, 4, 7, 2}, array[4]{2, 10, 5, 2}, array[4]{1, 3, 6, 1}, array[4]{1, 2, 0, 1}, array[4]{9, 11, 6, 9}, array[4]{9, 10, 13, 9}, array[4]{9, 1, 5, 9}};

#declare DarkbrownFaces = array[12]{array[4]{12, 4, 7, 12}, array[4]{3, 4, 8, 3}, array[4]{11, 12, 8, 11}, array[4]{11, 3, 6, 11}, array[4]{10, 12, 13, 10}, array[4]{2, 4, 0, 2}, array[4]{2, 10, 7, 2}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 5, 1}, array[4]{9, 11, 13, 9}, array[4]{9, 10, 5, 9}, array[4]{9, 1, 6, 9}};


#declare Faces = union{
    union{
        #for( Index, 0, dimension_size(DarkbrownFaces, 1) - 1 )
            #local FaceArray = DarkbrownFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TDarkbrown }
    }
    union{
        #for( Index, 0, dimension_size(LightbrownFaces, 1) - 1 )
            #local FaceArray = LightbrownFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TLightbrown }
    }
}

#declare EdgesAndVertices = union{
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

	// include envelope
	#declare RadVert = 1.2*RadVert;
	#if (VariantIndex = 0)  // disdyakis hexa
		#include "4-4_disdyakis.inc"
	#end
	#if (VariantIndex = 1)  // 'rhombic' hexa
		#include "4-4_rhombic.inc"
	#end
	#if (VariantIndex = 2)  // tetra a
		#include "4-4_tetra_a.inc"
	#end
	#if (VariantIndex = 3)  // tetra b
		#include "4-4_tetra_b.inc"
	#end
	#if (VariantIndex = 4)  // 'deltoidal' dodeca
		#include "4-4_deltoidal.inc"
	#end
}


#include "footer.inc"
