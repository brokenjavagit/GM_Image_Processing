///Display Properties
//ideal_width=1530;
//ideal_height=990;


window_width = window_get_width();
window_height =  window_get_height();

aspect_ratio = window_width/window_height;
ideal_aspect_ratio = 17/11;

//dynamically increase width static height
if(aspect_ratio<ideal_aspect_ratio){

ideal_height = window_height;


ideal_width=round(ideal_height*ideal_aspect_ratio);
//ideal_height=round(ideal_width / aspect_ratio);
/*
//Perfect Pixel Scaling
if(window_width mod ideal_width != 0)
{
  var d = round(window_width/ideal_width);
  ideal_width=window_width/d;
}
if(window_height mod ideal_height != 0)
{
  var d = round(window_height/ideal_height);
  ideal_height=window_height/d;
}
*/


//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
  
view_wview[0]=window_width;
view_hview[0]=window_height;



//display_set_gui_size(window_width,window_height);
display_set_gui_size(1280,720);
surface_resize(application_surface,ideal_width,ideal_height);
  


//////////////////////////////////////////////////////////////////////////////////////
}else{//static width change the 

ideal_width = window_width;


ideal_height=round(ideal_width / ideal_aspect_ratio);
/*
//Perfect Pixel Scaling
if(window_width mod ideal_width != 0)
{
  var d = round(window_width/ideal_width);
  ideal_width=window_width/d;
}
if(window_height mod ideal_height != 0)
{
  var d = round(window_height/ideal_height);
  ideal_height=window_height/d;
}
*/


//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
view_wview[0]=window_width;
view_hview[0]=window_height;

display_set_gui_size(1280,720);
//display_set_gui_size(window_width,window_height);
surface_resize(application_surface,ideal_width,ideal_height);

}

