/// @description 
//Debug
if (debug){
	surface_set_target(debugSurf) {
		//Clear
		gpu_set_blendmode_ext_sepalpha(bm_zero, bm_one, bm_zero, bm_src_alpha);
		draw_set_alpha(0.95);
		draw_rectangle(0, 0, room_width, room_height, 0);
		draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
		
		//Movement lines
		draw_set_color(c_red);
		draw_line(x, y, xprevious, yprevious);
		draw_set_color(c_white);
	} surface_reset_target();
	
	//Draw surface
	draw_surface(debugSurf, 0, 0);
		
	//Movement
	var l = 24 * (abs(hsp) > 0.5);
	var d = point_direction(0, 0, hsp, vsp);
		
	draw_set_color(c_blue);
	draw_arrow(x, y, x + lengthdir_x(l, d), y + lengthdir_y(l, d), 8);
	draw_set_color(c_white);
	
	//Bounding box
	draw_set_color(c_lime);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1);
	draw_set_color(c_white);
}

draw_self();