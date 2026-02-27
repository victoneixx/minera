for(var xx = velx; xx < cell_w; xx++){
	for(var yy = vely; yy < cell_h; yy++){
		var _minerio = grid_id[# xx, yy];
		if(_minerio > 0){
			draw_sprite(spr_grid, _minerio - 1, xx*cell, yy*cell);
		} 
	}
}

for(var xx = velx; xx < cell_w; xx++){
	for(var yy = vely; yy < cell_h; yy++){
		if(grid_crack[# xx, yy] > 0 && grid_crack[# xx, yy] < 10){
			draw_sprite(spr_crack, grid_crack[# xx, yy], xx*cell, yy*cell);
		}
	}
}