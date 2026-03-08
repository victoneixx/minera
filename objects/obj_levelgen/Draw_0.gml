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
		var _minerio = grid_trash[# xx, yy];
		if(_minerio == 1){
			draw_sprite(spr_grid, 5, xx*cell, yy*cell);
		} else if(_minerio == 2){
			draw_sprite(spr_grid, 6, xx*cell, yy*cell);
		}
	}
}


draw_set_alpha(0.8);
for(var xx = velx; xx < cell_w; xx++){
	for(var yy = vely; yy < cell_h; yy++){
		if(grid_crack[# xx, yy] > 0 && grid_crack[# xx, yy] < 10){
			draw_sprite(spr_crack, grid_crack[# xx, yy], xx*cell, yy*cell);
		}
	}
}
draw_set_alpha(1);

//draw_set_alpha(0.5);
if(grid_id[# mx, my] > 0){
	draw_sprite(spr_target, 0, mx*cell, my*cell);
}
//draw_set_alpha(1);