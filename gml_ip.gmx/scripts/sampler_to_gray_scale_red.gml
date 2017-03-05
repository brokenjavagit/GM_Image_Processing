///sampler_to_array(sampler)
//use a sampler from a surface and create a 2d array of grayscale values AVERAGRE

var sampler = argument0;
var gs_array = -1;
var i,j;
var w = sampler_get_width(sampler);
var h = sampler_get_height(sampler);

if(w<1)return -1;
if(h<1)return -1;

//color value;
var rgb_val = 0;
var pix_val = 0;

var gs_val;
var r,g,b;

//initialize the size of the array for faster creation
gs_array[w-1,h-1] = 1;

for ( i=0; i<w; i++ ){

    for ( j=0 j<h; j++ ){
    
        pix_val = sampler_sample(sampler,i,j);
        rgb_val = abgr_get_rgb(pix_val);
        
        r = colour_get_red(rgb_val);
        //g = colour_get_green(rgb_val);
        //b = colour_get_blue(rgb_val);
        
        
        
        gs_array[ i, j ] = make_colour_rgb( r, r, r);
        
    };

};



return gs_array;

