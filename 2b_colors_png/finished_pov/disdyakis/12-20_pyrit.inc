#declare Unit = union{
    sphere{ P[32], RadVert   texture{ TRed } }
	sphere{ P[51], RadVert   texture{ TYellow } }
	cylinder{ P[32], P[28], RadEdge   texture{ TGray }}
	cylinder{ P[32], P[51], RadEdge   texture{ TGray }}
}

#declare Unit = union{
    object{Unit}
	object{Unit scale -y}
}
#declare Unit = union{
    object{Unit}
	object{Unit scale -x}
}
#declare Unit = union{
    object{Unit}
	object{Unit scale -z}
}

#declare Unit = union{
    object{Unit}
	object{Unit rotate 90*y rotate 90*x}
	object{Unit rotate 90*x rotate 90*y}
}

object{Unit}
