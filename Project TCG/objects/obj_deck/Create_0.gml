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

card_select = 0;