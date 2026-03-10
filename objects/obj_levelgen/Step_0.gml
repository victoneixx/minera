mx = mouse_x div cell;
my = mouse_y div cell;
if(mx >= 0 && mx < cell_w && my >= 0 && my < cell_h){
	if(mouse_check_button(mb_left)){
		var _grid_b = grid_id[# mx, my];
		var _dano;
		if(_grid_b){
			switch(_grid_b){
				case 1: _dano = 0.1; break;
				case 2: _dano = 0.08; break;
				case 3: _dano = 0.06; break;
				case 4: _dano = 0.04; break;
				case 5: _dano = 0.02; break;
			}
			grid_crack[# mx, my] += _dano;
		}
	} 
}

if(grid_crack[# mx, my] >= 10){
	var _minerios;
	switch(grid_id[# mx, my]){
		case 1: _minerios = obj_rock; break;
		case 2: _minerios = obj_coal; break;
		case 3: _minerios = obj_iron; break;
		case 4: _minerios = obj_gold; break;
		case 5: _minerios = obj_diamond; break;
	}
	instance_create_layer(mx*16 + 8, my*16 + 8, layer, _minerios);
	audio_play_sound(snd_broken_stone, 2, 0, , , 1.2);
	audio_play_sound(snd_particles_stone, 0, 0, 0.1, 0.16, random_range(0.8, 1.2));
	grid_id[# mx, my] = 0;
	grid_crack[# mx, my] = 0;
} 

if(keyboard_check_pressed(ord("R"))) game_restart();

var _keybug = (keyboard_check(vk_control) && keyboard_check(vk_shift)) && keyboard_check_pressed(ord("C"));

if(_keybug){
	pdebug =! pdebug;
}

if(grid_crack[# mx, my] > 0){
	if(mouse_check_button(mb_left)){
		snd_delay--;
		if(snd_delay <= 0){
			audio_play_sound(snd_mining_stone, 1, 0, 0.3, 0.59, random_range(0.8, 1.2));
			snd_delay = 12;
		}
	}
}