/// @description 
#region Camera
enableCamera = true;
res = 0;
	//0: Resolution is the same as the camera size
	//1: Resolution is the same as the window size

//Player following
followObject = oPlayer;
followSpeed = 0.5; //1 is instant

//Camera
if (enableCamera){
	//Resolution
	enum CAM{
		W = 256,
		H = 144,
		SCALE = 4
	}

	//Views
	view_enabled = true;
	view_visible[0] = true;

	//Create camera
	var cam = camera_create_view(0, 0, CAM.W, CAM.H);
	view_set_camera(view_camera, cam);
	
	//Resolution
	if (res) surface_resize(application_surface, CAM.W * CAM.SCALE, CAM.H * CAM.SCALE);
	else surface_resize(application_surface, CAM.W, CAM.H);
	
	//Window
	window_set_size(CAM.W * CAM.SCALE, CAM.H * CAM.SCALE);
	window_set_position(display_get_width()/2 - (CAM.W*CAM.SCALE)/2,
						display_get_height()/2 - (CAM.H*CAM.SCALE)/2);
}
#endregion

#region Delta-timing Vars
onPause = true;

factorTime = 0;
factorTotal = 0;
global.factorAvg = 0;

//Macro
#macro dt global.delta_factor
#endregion