/// @description Destruir instancia

image_xscale	= sign(obj_enemy.x - obj_player.x);

if abs(x - obj_enemy.x) >= 1200 {
	instance_destroy();
}
