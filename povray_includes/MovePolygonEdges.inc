#include "MoveLineIntersectionByLineOffset.inc"


#macro MovePolygonEdges(Points, Offset)

    // Move edges between points to the inside. Return new points.
    // `Points` must not contain the fist element again at the end!

    #declare NumberOfPoints = dimension_size(Points, 1);

    #declare WorkPoints = array[NumberOfPoints+2];
    #declare WorkPoints[0] = Points[NumberOfPoints-1];
    #for(Index, 0, NumberOfPoints-1)
        #declare WorkPoints[Index+1] = Points[Index];
    #end
    #declare WorkPoints[NumberOfPoints+1] = Points[0];

    #declare NewPoints = array[NumberOfPoints];
    #for(Index, 0, NumberOfPoints-1)
        #declare A = WorkPoints[Index];
        #declare B = WorkPoints[Index+1];
        #declare C = WorkPoints[Index+2];
        #declare NewPoints[Index] = MoveLineIntersectionByLineOffset(A, B, C, Offset);
    #end

    NewPoints

#end
