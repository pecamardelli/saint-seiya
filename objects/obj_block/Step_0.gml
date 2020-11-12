/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// SE HACEN DOS COMPROBACIONES PARA QUE NO CAMBIE EL SPRITE A IDLE
// CUANDO EL JUGADOR ESTÁ ELEVÁNDOSE Y A LA MISMA ALTURA QUE EL SÓLIDO
/*
if y - sprite_height > obj_player.y && place_empty(x,y-1) {
	solid = true;
}
else if y - sprite_height < obj_player.y {
	solid = false;
}
