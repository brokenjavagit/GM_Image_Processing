///Display Properties
ideal_width=1530;
ideal_height=990;

display_width=display_get_width();
display_height=display_get_height();

//window_width = window_get_width();
//window_height =  window_get_height();

aspect_ratio = display_width/display_height;
ideal_aspect_ratio = 17/11;

//dynamically increase width static height
if(aspect_ratio<ideal_aspect_ratio){

ideal_height = display_height;


ideal_width=round(ideal_height*ideal_aspect_ratio);
//ideal_height=round(ideal_width / aspect_ratio);
/*
//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height=display_height/d;
}
*/


//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
//Calculate Max Zoom
max_zoom=floor(display_width/ideal_width);  
  
for(var i=1; i<=room_last; i++)
{
  if(room_exists(i))
  {
    room_set_view(i,0,true,0,0,display_width,display_height,0,0,display_width,display_height,0,0,0,0,-1);
    room_set_width(0,ideal_width);
    room_set_height(0,ideal_height);
    room_set_view_enabled(i,true);
  }
}

window_set_size(display_width,display_height);
display_set_gui_size(display_width,display_height);
surface_resize(application_surface,ideal_width,ideal_height);
  
alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.
room_goto(room_next(room));

//////////////////////////////////////////////////////////////////////////////////////
}else{//static width change the 

ideal_width = display_width;


ideal_height=round(ideal_width / ideal_aspect_ratio);
/*
//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height=display_height/d;
}
*/


//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
//Calculate Max Zoom

  
for(var i=1; i<=room_last; i++)
{
  if(room_exists(i))
  {
    room_set_view(i,0,true,0,0,display_width,display_height,0,0,display_width,display_height,0,0,0,0,-1);
    room_set_width(0,ideal_width);
    room_set_height(0,ideal_height);
    room_set_view_enabled(i,true);
  }
}

window_set_size(display_width,display_height);
display_set_gui_size(display_width,display_height);
surface_resize(application_surface,ideal_width,ideal_height);
  
alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.
room_goto(room_next(room));



}

