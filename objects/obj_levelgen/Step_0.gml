mx = mouse_x div cell;
my = mouse_y div cell;
if(mx >= 0 && mx < cell_w && my >= 0 && my < cell_h){
	if(mouse_check_button(mb_left)){
		grid_crack[# mx, my] += 0.4;
	} 
}
if(grid_crack[# mx, my] >= 10)grid_id[# mx, my] = 0;