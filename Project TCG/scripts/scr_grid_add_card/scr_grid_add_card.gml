function ds_grid_add_row(){
	/// @arg ds_grid
	/// @arg ds_grid_add_row(grid_index)
	
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1)
	return(ds_grid_height(_grid) - 1);
}


function scr_grid_add_card(){
	
	///@arg nome
	///@arg ataque
	///@arg vida
	
	var _grid = global.grid_deck;
	
	var _linha = ds_grid_add_row(_grid);
	
	_grid[# 0, _linha] = argument[0];
	_grid[# 1, _linha] = argument[1];
	_grid[# 2, _linha] = argument[2];
}