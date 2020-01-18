/// @description 
// Draw
if (isRewinding) {
	// GUI
	var _gw = display_get_gui_width();
	var _gh = display_get_gui_height();
	
	// Grey
	draw_set_color(c_gray);
	draw_set_alpha(0.3);
	draw_rectangle(0, 0, _gw, _gh, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	// Base position
	var _x = guiMargin;
	var _y = _gh - (guiMargin + guiRewindBarHeight);
	
	// Rewind icon
	draw_sprite_ext(sGMSRewind_Rewind, !inputRewind && !inputForward, _x + guiRewindBarHeight / 2, _y + guiRewindBarHeight / 2, inputForward ? -1 : 1, 1, 0, -1, 1);
	
	// Bar
	_x += guiRewindBarHeight + guiMargin;
	var _w = _gw - (_x + guiMargin);
	
	draw_set_alpha(guiRewindLineAlpha);
	
	draw_rectangle(_x, _y + ((guiRewindBarHeight - guiRewindLineHeight) / 2), _x + _w, _y + ((guiRewindBarHeight - guiRewindLineHeight) / 2) + guiRewindLineHeight, 0);
	
	// Playhead
	draw_set_alpha(guiRewindPlayheadAlpha);
	
	var _pos = 1 + (rewindStep / min(rewindMaxSteps, ds_list_size(rewindList)));
	
	_x += _w * _pos;
	
	draw_rectangle(_x - guiRewindPlayheadWidth / 2, _y, _x + guiRewindPlayheadWidth / 2, _y + guiRewindBarHeight, 0);
	
	draw_set_alpha(1);
}