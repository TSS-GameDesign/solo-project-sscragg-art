/// @description Shooting gun
if(has_shot == false){
    has_shot = true;
    instance_create_depth(x,y,depth+1,obj_bullet);
    show_debug_message("bang")
}