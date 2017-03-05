///abgr_get_rgb(color)
//Convert an ARGB format color to RGB.
var col = argument0 & 16777215
return make_colour_rgb(color_get_blue(col),color_get_green(col),color_get_red(col));

