var cam_width = 640;
var cam_height = 320;

// Create a new camera
var cam = camera_create_view(cam_width, cam_height, 0, noone, -1, -1, -1, -1, 0);

// Assign it to view[0]
view_enabled = true;
view_visible[0] = true;

view_camera[0] = cam;

camera_set_view_size(cam, cam_width, cam_height);
camera_set_view_pos(cam, 0, 0);

camera_set_view_angle(cam, 0);