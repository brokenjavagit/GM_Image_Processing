///sampler_compare(sampler1,sampler2,precision)
//Compare the differences in color between two samplers, from 0 to 1, with 0 being the exact same and 1 being the most different possible.
//Higher precision means much less samples and quality, but more speed. Minimum 1. Recommended 1 or 2 unless the samplers are quite big.
var w,h,hi,vi,sampler1,sampler2,xx,yy,diff,num,abgr1,abgr2,a1,a2,col1,col2;
w=min(sampler_get_width(argument0),sampler_get_width(argument1))
h=min(sampler_get_height(argument0),sampler_get_height(argument1))
hi=floor(w/argument2)
vi=floor(h/argument2)
sampler1=argument0
sampler2=argument1

diff=0
num=vi*hi
yy=0
repeat vi {
    xx=0
    repeat hi {
        abgr1=sampler_sample(sampler1,floor(xx),floor(yy))
        abgr2=sampler_sample(sampler2,floor(xx),floor(yy))
        a1=abgr_get_a(abgr1)
        a2=abgr_get_a(abgr2)
        col1=abgr_get_rgb(abgr1)
        col2=abgr_get_rgb(abgr2)
        diff+=(abs(color_get_red(col1)-color_get_red(col2))/255+abs(color_get_green(col1)-color_get_green(col2))/255+abs(color_get_blue(col1)-color_get_blue(col2))/255+abs(a1-a2)/255)/4
        xx+=argument2
    }
    yy+=argument2
}

return diff/num;

