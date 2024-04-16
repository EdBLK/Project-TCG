#region Stack
/*
global.deck = ds_stack_create();
ds_stack_push(global.deck, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
*/
#endregion

#region List

global.deck = ds_list_create();

num_card = 7;
var _card = 1;

repeat(num_card){
	global.deck[| _card - 1] = _card;
	_card += 1;
}

#endregion

enum CARDS{
	NOME,
	ATAQUE,
	VIDA,
	ALTURA
}

#region Grid

global.grid_deck = ds_grid_create(CARDS.ALTURA, 0);
scr_grid_add_card("Um", 1, 1);
scr_grid_add_card("Dois", 2, 2);
scr_grid_add_card("Tres", 3, 3);
scr_grid_add_card("Quatro", 4, 4);
scr_grid_add_card("Cinco", 5, 5);
scr_grid_add_card("Seis", 6, 6);
scr_grid_add_card("Sete", 7, 7);
scr_grid_add_card("Oito", 8, 8);
scr_grid_add_card("Nove", 9, 9);
scr_grid_add_card("Dez", 10, 10);

#endregion

card_select = 0;