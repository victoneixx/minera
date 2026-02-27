randomize();
mx = 0;
my = 0;
velx = 0;
vely = 0;
cell = 16;
cell_w = room_width div cell;
cell_h = room_height div cell;
grid_crack = ds_grid_create(cell_w, cell_h);
grid_id = ds_grid_create(cell_w, cell_h);
ds_grid_clear(grid_crack, 0);
ds_grid_clear(grid_id, 0);

for(var xx = velx; xx < cell_w; xx++){
	for(var yy = vely; yy < cell_h; yy++){
		grid_crack[# xx, yy] = 0;
		
		var _chance = random(1);
		if(_chance < 0.60){
			grid_id[# xx, yy] = 1;
		} else if(_chance < 0.75){
			grid_id[# xx, yy] = 2;
		} else if(_chance < 0.87){
			grid_id[# xx, yy] = 3;
		} else if(_chance < 0.95){
			grid_id[# xx, yy] = 4;
		} else{
			grid_id[# xx, yy] = 5;
		}
	}
}