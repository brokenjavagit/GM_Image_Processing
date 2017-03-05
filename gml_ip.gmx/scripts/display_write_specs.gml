///display_write_specs(display enum)
enum display{disp_screen, disp_window, disp_gui, disp_app_surface, disp_view,disp_room,disp_mouse_gui,disp_mouse_room,disp_viewxy};
var str="";
switch(argument[0])
{
  case display.disp_screen:
    str="Display: "+string(display_get_width())+" x "+string(display_get_height())+" ("+string(display_get_width()/display_get_height())+")";
  break;
  case display.disp_window:
    str="Window: "+string(window_get_width())+" x "+string(window_get_height())+" ("+string(window_get_width()/window_get_height())+")";
  break;
  case display.disp_gui:
    str="GUI: "+string(display_get_gui_width())+" x "+string(display_get_gui_height())+" ("+string(display_get_gui_width()/display_get_gui_height())+")";
  break;
  case display.disp_app_surface:
    str="App Surface: "+string(surface_get_width(application_surface))+" x "+string(surface_get_height(application_surface))+" ("+string(surface_get_width(application_surface)/surface_get_height(application_surface))+")";
  break;
  case display.disp_view:
    str="View: W: "+string(view_wview)+"  H: "+string(view_hview)+" ("+string(view_wview/view_hview)+")";
  break; 
  case display.disp_viewxy:
    str="View x: "+string(view_xview[0])+"  y: "+string(view_yview[0]);
  break;  
  case display.disp_room:
    str="Room: "+string(room_width)+" x "+string(room_height)+" ("+string(room_width/room_height)+")";
  break;
  case display.disp_mouse_room:
    str="mouse_room: x: "+string(device_mouse_x(0))+" y: "+string(device_mouse_y(0));
  break;
  case display.disp_mouse_gui:
    str="mouse_gui: x: "+string(device_mouse_x_to_gui(0))+" y: "+string(device_mouse_y_to_gui(0));
  break;
}
return str;

