mx = mouse_x div cell;
my = mouse_y div cell;
if(mx >= 0 && mx < cell_w && my >= 0 && my < cell_h){
	if(mouse_check_button(mb_left)){
		if(grid_trash[# mx, my] > 0){
			grid_crack[# mx, my] += 0.1;
			
            if(grid_crack[# mx, my] >= 10){
                grid_trash[# mx, my] = 0;
                grid_crack[# mx, my] = 0;   
            }
		} else if(grid_id[# mx, my] > 0){
			var _dano;
			switch(grid_id[# mx, my]){
				case 1: _dano = 0.5; break;
				case 2: _dano = 0.4; break;
				case 3: _dano = 0.3; break;
				case 4: _dano = 0.2; break;
				case 5: _dano = 0.1; break;
			}
			grid_crack[# mx, my] += _dano;
		} 
	} 
}

if(grid_crack[# mx, my] >= 10){
	if(grid_id[# mx, my] == 1){
		instance_create_layer(mx*16 + 8, my*16 + 8, layer, obj_rock);
	} else if(grid_id[# mx, my] == 2){
		instance_create_layer(mx*16 + 8, my*16 + 8, layer, obj_coal);
	}else if(grid_id[# mx, my] == 3){
		instance_create_layer(mx*16 + 8, my*16 + 8, layer, obj_iron);
	}else if(grid_id[# mx, my] == 4){
		instance_create_layer(mx*16 + 8, my*16 + 8, layer, obj_gold);
	}else if(grid_id[# mx, my] == 5){
		instance_create_layer(mx*16 + 8, my*16 + 8, layer, obj_diamond);
	}
	
	grid_id[# mx, my] = 0;
	grid_crack[# mx, my] = 0;
}

if(keyboard_check_pressed(ord("R"))) game_restart();

var _keybug = (keyboard_check(vk_control) && keyboard_check(vk_shift)) && keyboard_check_pressed(ord("D"));

if(_keybug){
	pdebug =! pdebug;
}