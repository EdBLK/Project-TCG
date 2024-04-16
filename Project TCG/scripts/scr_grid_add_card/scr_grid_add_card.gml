// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_grid_add_card(){
	
	///@arg linha
	///@arg nome
	///@arg ataque
	///@arg vida
	
	var _grid = global.grid_deck;
	
	var _linha = argument[0];
	
	_grid[# 0, _linha] = argument[1];
	_grid[# 1, _linha] = argument[2];
	_grid[# 2, _linha] = argument[3];
}