///sampler_compare_blue(sampler1,sampler2,precision)
//Compare the differences in the blue color channel between two samplers, from 0 to 1, with 0 being the exact same and 1 being the most different possible.
//Higher precision means much less samples and quality, but more speed. Minimum 1. Recommended 1 or 2 unless the samplers are quite big.
var w,h,hi,vi,sampler1,sampler2,xx,yy,diff,num,col1,col2;
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
        col1=abgr_get_rgb(sampler_sample(sampler1,floor(xx),floor(yy)))
        col2=abgr_get_rgb(sampler_sample(sampler2,floor(xx),floor(yy)))
        diff+=abs(color_get_blue(col1)-color_get_blue(col2))/255
        xx+=argument2
    }
    yy+=argument2
}

return diff/num;

