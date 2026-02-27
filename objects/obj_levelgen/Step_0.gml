mx = mouse_x div cell;
my = mouse_y div cell;
if(mx >= 0 && mx < cell_w && my >= 0 && my < cell_h){
	if(mouse_check_button(mb_left)){
		if(grid_id[# mx, my] == 1){
			grid_crack[# mx, my] += 0.5;
		} else if(grid_id[# mx, my] == 2){
			grid_crack[# mx, my] += 0.4;
		} else if(grid_id[# mx, my] == 3){
			grid_crack[# mx, my] += 0.3;
		} else if(grid_id[# mx, my] == 4){
			grid_crack[# mx, my] += 0.2;
		} else if(grid_id[# mx, my] == 5){
			grid_crack[# mx, my] += 0.1;
		}
	} 
}
if(grid_crack[# mx, my] >= 10)grid_id[# mx, my] = 0;