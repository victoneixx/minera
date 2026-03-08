if(pdebug){
	draw_set_color(c_black);
	draw_rectangle(0, 0, 224, 104, false);
	draw_set_color(c_white);
	draw_text(2, 0, "Debug Panel - Minera");
	draw_text(2, 16, "Horizontal line: " + string(mx));
	draw_text(2, 32, "Vertical line: " + string(my));
	draw_text(2, 48, "Mineral ID: " + string(grid_id[# mx, my]));
	draw_text(2, 64, "Trash ID: " + string(grid_trash[# mx, my]));
	draw_text(2, 80, "Mineral durability: " + string(grid_crack[# mx, my]));
}