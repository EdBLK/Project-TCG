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

#region Grid

global.grid_deck = ds_grid_create(3, 10);
scr_grid_add_card(0, "Um", 1, 1);
scr_grid_add_card(1, "Dois", 2, 2);
scr_grid_add_card(2, "Tres", 3, 3);
scr_grid_add_card(3, "Quatro", 4, 4);
scr_grid_add_card(4, "Cinco", 5, 5);
scr_grid_add_card(5, "Seis", 6, 6);
scr_grid_add_card(6, "Sete", 7, 7);
scr_grid_add_card(7, "Oito", 8, 8);
scr_grid_add_card(8, "Nove", 9, 9);
scr_grid_add_card(9, "Dez", 10, 10);
#endregion

card_select = 0;