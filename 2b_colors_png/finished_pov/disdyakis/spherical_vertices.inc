#declare RadVert = 1.2*RadVert;

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


// show objects

union{
	union{
		object{Circles}
		object{Vertices}
		no_shadow
	}
	object{Faces}
}
