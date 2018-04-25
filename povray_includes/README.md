# Povray include files

The [include files](http://www.povray.org/documentation/view/3.6.2/236/) in this folder
need to be put in a place where POV-Ray will find them.<br>
Or this folder could be added to the library path in `povray.ini`.

## Shared data

Some include files contain the camera, light and variables like color values:
`polyhedra_colors.inc` is for the series of polyhedra with direction colors.
`polyhedra_davinci.inc` is for the wooden da Vinci style polyhedra,
but also used for the auxiliary images showing the vertex numbers.
It contains a switch for the light used (`normal` vs. `fancy`).

Sometimes these files are automatically created before rendering an image.
`polyhedra_colors.inc` is in this folder, so single images can be rendered just
from the command line. But when `run.py` is used, the include file will be created in
the folder itself from `polyhedra_colors_include.tpl`,
so the camera position (and light) will match the perspective entered in `run.py`
(like `blue` for an orthographic projection with the blue element centered).
In the same way `polyhedra_with_duals.inc` is created from `polyhedra_with_duals_include.tpl`.

## Functions

Some rather tricky functions ([macros](http://www.povray.org/documentation/view/3.6.2/243/))
are needed to create the da Vinci style polyhedra.

They are basically a [CSG](https://en.wikipedia.org/wiki/Constructive_solid_geometry)
difference of
* the outer solid (which is the one to be illustrated),
* the inner solid (with the faces moved inwards by an offset),
* and prisms based on the faces (with their edges moved inwards by an offset).

The face normal points used to create the solids come from the method
`_face_normal_points` in `Polyhedron`.

<table>
    <tr>
        <td><img width="300" src="http://paste.watchduck.net/1804/davinci_cube.png"/>
        <td><img width="300" src="http://paste.watchduck.net/1804/davinci_tetrahedron.png"/>
        <td><img width="300" src="http://paste.watchduck.net/1804/davinci_truncuboct.png"/>
    <tr>
        <td><code>davinci_cube.pov</code>
        <td><code>davinci_tetrahedron.pov</code>
        <td><code>davinci_truncuboct.pov</code>
</table>

### `SolidFromFaceNormalPoints`

`SolidFromFaceNormalPoints` takes the normal points of the faces of a polyhedron
(usually these are the face centers) and returns the solid defined by them.
The function takes a face offset as a second argument.
For a positive offset the resulting solid will be smaller.
The halfspaces defined by the normal points are cut away from a big sphere using `PointCutter`

### `PointCutter`

`PointCutter` takes a point and returns a [halfspace](https://en.wikipedia.org/wiki/Half-space_(geometry))
(misnamed "[plane](http://www.povray.org/documentation/view/3.6.2/297/)" in POV-Ray),
which has the point as its [normal](https://en.wikipedia.org/wiki/Normal_(geometry))
and does not contain the origin (i.e. the volume is to the outside).
Using CSG difference this halfspace can be used to cut away parts of another object.
(And it could be used with CSG intersection to show these parts.)
The function takes an offset as a second argument. For a positive offset it will cut deeper.

The halfspace is initially created as the set of points with positive <i>x</i> values properly inside it.
It is then tranlated along the <i>x</i>-axis and rotated in the correct position,
requiring `RotMatFromVectorAndAngle` for the rotation.

<table>
    <tr>
        <td><img width="200" src="http://paste.watchduck.net/1804/PointCutter_offset_0.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/PointCutter_offset_0.5.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidFromFaceNormalPoints_offset_0.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidFromFaceNormalPoints_offset_0.5.png"/>
<tr>
        <td colspan="4">
            Examples of <code>PointCutter</code>
            and <code>SolidFromFaceNormalPoints</code>
            with offsets 0 and 0.5
</table>

### `RotMatFromVectorAndAngle`

<img align="right" width="200" src="http://paste.watchduck.net/1804/RotMatFromVectorAndAngle.png"/>

`RotMatFromVectorAndAngle` takes a point and an angle and can be used to rotate
by that angle around the axis through the point and the origin.
Technically it returns the permutation matrix.
Practically this means that it returns the rotation.

In the image on the right the vector is the yellow point and the angle is 72°.
The rotated object is the red point, which was initially at the location of the blue point.

### `SolidPrismFromVerticesOfPolygon`

`SolidPrismFromVerticesOfPolygon` creates a prism from the vertices of a convex polygon.
The arguments are the array of vertices, the offset by which the edges are moved inwards,
and the thickness of the prism.

This function calculates the points of the corresponding polygon containing the origin.
(That is the polygon containing the origin which forms a right prism with the given polygon.)
It takes a prism based on that polygon from `SolidPrismFromVerticesOfPolygonContainingOrigin`
and moves it back to the original position.

### `SolidPrismFromVerticesOfPolygonContainingOrigin`

`SolidPrismFromVerticesOfPolygonContainingOrigin` creates a prism from the vertices
of a convex polygon containing the origin. The arguments are as above.

This function creates a cylinder parallel to the polygon. Its center is the origin,
its height is the prism thickness, and its radius is big enough.
It then calculates for each polygon edge the point on it that is closest to the origin
and cuts the halfspace defined by that point away from the cylinder using `PointCutter`.

<table>
    <tr>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidPrismFromVerticesOfPolygonContainingOrigin_offset_0.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidPrismFromVerticesOfPolygonContainingOrigin_offset_0.5.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidPrismFromVerticesOfPolygon_offset_0.png"/>
        <td><img width="200" src="http://paste.watchduck.net/1804/SolidPrismFromVerticesOfPolygon_offset_0.5.png"/>
    <tr>
        <td colspan="4">
            Examples of <code>SolidPrismFromVerticesOfPolygonContainingOrigin</code>
            and <code>SolidPrismFromVerticesOfPolygon</code>
            with offsets 0 and 0.5
</table>

### `MovePolygonEdges`

<img align="right" width="200" src="http://paste.watchduck.net/1804/Polyhedron_12-20,_davinci_detail.png"/>

The little frames around the tranparent faces are created with `MovePolygonEdges`.

The function takes the points of a polygon and an offset.<br>
It returns the points that result from moving the edges inwards by the offset.<br>
Each moved point is calculated with `MoveLineIntersectionByLineOffset`.

### `MoveLineIntersectionByLineOffset`

`MoveLineIntersectionByLineOffset` takes the points <i>A</i>, <i>B</i>, <i>C</i> and an offset.
It returns the point <i>B'</i>, which is the intersection of the edges <i>AB</i> and <i>BC</i>
moved inwards by the offset. The calculation is based on the geometry of the rhombus.

<table>
    <tr>
        <td><img width="460" src="http://paste.watchduck.net/1804/MoveLineIntersectionByLineOffset.png"/>
        <td><img width="460" src="http://paste.watchduck.net/1804/MovePolygonEdges.png"/>
    <tr>
        <td colspan="2">
            Examples for <code>MoveLineIntersectionByLineOffset</code>
            and <code>MovePolygonEdges</code> with offset 0.5
</table>
