///sampler_sample(ind,x,y)
//Sample a pixel in a sampler for an ABGR color.
var w,ind,buf;
if argument0 = global.last {
    w = global.lastw
    buf = global.lastb
}
else {
    w = ds_map_find_value(argument0,"width")
    buf = ds_map_find_value(argument0,"data")
    global.last = argument0
    global.lastw = w
    global.lastb = buf
}
ind = (argument2 * w + argument1) * 4
return buffer_peek(buf,ind,buffer_u32)

