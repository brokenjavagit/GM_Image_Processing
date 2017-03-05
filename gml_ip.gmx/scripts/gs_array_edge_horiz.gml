///gs_array_edge_horiz(gs_array)

/*

    take a gray scale array and find edges
*/

var _gs_array = argument0;
var _edge_array;
var col = 0;
var left_col = 0;
var dif = 0;

var w = array_length_1d(_gs_array);
var h = array_height_2d(_gs_array);

var i,j;
//game maker is shit arrays are fucked
_edge_array[w-1,h-1] = 1;

// Since we are looking at left neighbors
// We skip the first column
for (i = 1; i < w; i++) {
    for (j = 0; j < h; j++ ) {
        // Pixel location and color
        col = _gs_array[ i, j ];
    
        // Pixel to the left location and color
        left_col = _gs_array[ i - 1, j ];
    
        // New color is difference between pixel and left neighbor
        diff = abs(col - left_col);
        
        _edge_array[ i - 1, j ] = diff;
      }
}

return _edge_array

