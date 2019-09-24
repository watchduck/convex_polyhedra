// https://commons.wikimedia.org/wiki/File:Compound_of_five_cubes,_gray_and_rgby.png

#include "RotMatFromVectorAndAngle.inc"
#include "polyhedra_colors.inc"
global_settings { assumed_gamma 1 }


// variables defining the cube

#declare F = 3.6/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4));  // factor

#declare P = array[8]{ <-F,-F,-F>, <-F,-F,F>, <-F,F,-F>, <-F,F,F>, <F,-F,-F>, <F,-F,F>, <F,F,-F>, <F,F,F> }  // points

#declare EdgeArrays = array[12]{array[2]{6, 7}, array[2]{1, 5}, array[2]{1, 3}, array[2]{4, 5}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{4, 6}, array[2]{0, 2}, array[2]{3, 7}, array[2]{2, 6}, array[2]{5, 7}};

#declare FaceArrays = array[6]{array[5]{5, 4, 6, 7, 5}, array[5]{2, 0, 4, 6, 2}, array[5]{0, 4, 5, 1, 0}, array[5]{1, 3, 7, 5, 1}, array[5]{2, 6, 7, 3, 2}, array[5]{1, 0, 2, 3, 1}};


// prepare cube elements
#declare Vertices = union{
	#for( Index, 0, 7 )
	    sphere{ P[Index], RadVert }
	#end
}

#declare Edges = union{
	#for( Index, 0, 11 )
	    #local EdgeArray = EdgeArrays[Index];
	    cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
	#end
}

#declare Faces = union{
	#for( Index, 0, 5 )
	    #local FaceArray = FaceArrays[Index];
	    polygon{ 5,
	        #for(VertexIndexInFace, 0, 4)
	            P[FaceArray[VertexIndexInFace]]
	        #end
	    }
	#end
}


// monochrome colors
#declare MyBlack = srgb .22;
#declare MyGray = srgb .5;
#declare MyWhite = srgb .9;


// cube colors: black, red, yellow, blue, green
#declare EdgeColors = array[5]{MyBlack, srgb<255,0,0>/255, srgb<233,132,0>/255, srgb<0,65,255>/255, srgb<0,143,0>/255};
#declare FaceColors = array[5]{MyGray, srgb<255,89,89>/255, srgb<241,175,89>/255, srgb<89,131,255>/255, srgb<89,182,89>/255};


// prepare rotation
#declare PRot = <0, 1, -(1/2 + sqrt(5)/2)>;  // icosahedron point 6
#declare PRotNorm = vnormalize(PRot);
#declare Fifth = 2*pi/5;

// show rotated cubes
#for (Times, 0, 4)
	object{
		Edges
		RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		pigment{color EdgeColors[Times]}
	}
	object{
		Faces
		RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		pigment{color FaceColors[Times]}
	}
	object{
		Vertices
		RotMatFromVectorAndAngle(PRotNorm, Times*Fifth)
		pigment{color MyWhite}
	}
#end


// black vertices for main cube
#for( Index, 0, 7 )
	sphere{ 
		P[Index], RadVert+.001 
		pigment{color MyBlack}
	}
#end



