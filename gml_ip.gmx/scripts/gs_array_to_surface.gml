///gs_array_to_surface(gs_array)

//draw contents of array to surface

var _gs_array = argument0;
var _gs_surf = -1;
var col = 0;

var w = array_length_1d(_gs_array);
var h = array_height_2d(_gs_array);

var i,j;

_gs_surf = surface_create(w,h);

surface_set_target(_gs_surf);

for ( i=0; i<w; i++ ){

    for ( j=0; j<h; j++ ){
    
        col = _gs_array[i,j];  
        draw_point_colour(i,j,col);   
        
    };

};

surface_reset_target();

return _gs_surf;

