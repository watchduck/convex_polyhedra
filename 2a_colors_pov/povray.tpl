#include "polyhedra_colors.inc"



{{!arrays}}


sphere{<0, 0, 0>, 3   pigment{color rgbt<1, 1, 1, .4>}  }


% povray_color_names = {'Red': 'TRed', 'Blue': 'TBlue', 'Yellow': 'TYellow', 'Uncolored': 'TGray', 'Lightbrown': 'TLightbrown', 'Darkbrown': 'TDarkbrown'}

%for vertex_color in vertex_colors:
    % povray_color_name = povray_color_names[vertex_color]
    union{
        #for( Index, 0, dimension_size({{!vertex_color}}Vertices, 1) - 1 )
            sphere{ P[{{!vertex_color}}Vertices[Index]], RadVert }
        #end
        texture{ {{povray_color_name}} }
    }
%end

%for edge_color in edge_colors:
    % povray_color_name = povray_color_names[edge_color]
    union{
        #for( Index, 0, dimension_size({{!edge_color}}Edges, 1) - 1 )
            #local EdgeArray = {{!edge_color}}Edges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ {{povray_color_name}} }
    }
%end

%for face_color in face_colors:
    % povray_color_name = povray_color_names[face_color]
    union{
        #for( Index, 0, dimension_size({{!face_color}}Faces, 1) - 1 )
            #local FaceArray = {{!face_color}}Faces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ {{povray_color_name}} }
    }
%end