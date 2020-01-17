/// @description 
//Follow player
var camX = camera_get_view_x(view_camera);
var camY = camera_get_view_y(view_camera);

camX = lerp(camX, followObject.x - CAM.W/2, followSpeed);
camY = lerp(camY, followObject.y - CAM.H/2, followSpeed);

camX = clamp(camX, 0, room_width-CAM.W);
camY = clamp(camY, 0, room_height-CAM.H);

camera_set_view_pos(view_camera, camX, camY);