#declare RadVert = 1.2*RadVert;

#declare Vertices = union{
	union{
		#for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
		    sphere{ vnormalize(P[BlueVertices[Index]]) * RadSphere, RadVert }
		#end
		texture{ TBlue }
	}
	union{
		#for( Index, 0, dimension_size(RedVertices, 1) - 1 )
		    sphere{ vnormalize(P[RedVertices[Index]]) * RadSphere, RadVert }
		#end
		texture{ TRed }
	}
	union{
		#for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
		    sphere{ vnormalize(P[YellowVertices[Index]]) * RadSphere, RadVert }
		#end
		texture{ TYellow }
	}
}

#declare EdgesAndVertices = union{
	object{Circles}
	object{Vertices}
}

#include "footer.inc"
