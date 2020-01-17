/// @description 
//Restart
if (keyboard_check_pressed(ord("R"))){
	if (keyboard_check(vk_shift)) game_restart();
	else room_restart();
}