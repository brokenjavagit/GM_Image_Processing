///surface_to_sampler(ind)
//Get a sampler from a surface.
var sampler,w,h,tbuff;
sampler=ds_map_create()
w = surface_get_width(argument0)
h = surface_get_height(argument0)
ds_map_add(sampler,"width",w)
ds_map_add(sampler,"height",h)
tbuff=buffer_create(w * h * 4,buffer_fixed,4)
buffer_get_surface(tbuff,argument0,0,0,0)
ds_map_add(sampler,"data",tbuff)
global.last = -1
global.lastw = -1
global.lastb = -1

return sampler;

