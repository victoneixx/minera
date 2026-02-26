cell = 16;
cell_w = room_width div cell;
cell_h = room_height div cell;
mx = 0;
my = 0;
grid = ds_grid_create(cell_w, cell_h);
ds_grid_clear(grid, 0);

for(var xx = 0; xx < cell_w; xx++){
	for(var yy = 0; yy < cell_h; yy++){
		grid[# xx, yy] = 1;
	}
}