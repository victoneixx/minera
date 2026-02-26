mx = mouse_x div cell;
my = mouse_y div cell;
if(mx >= 0 && mx < cell_w && my >= 0 && my < cell_h){
	if(mouse_check_button_pressed(mb_left)){
		grid[# mx, my] = 0;
	}
}