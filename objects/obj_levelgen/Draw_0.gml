for(var xx = 0; xx < cell_w; xx++){
	for(var yy = 0; yy < cell_h; yy++){
		if(grid[# xx, yy] == 1){
			draw_sprite(spr_grid, 0, xx*cell, yy*cell);
		}
	}
}