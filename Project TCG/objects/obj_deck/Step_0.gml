if mouse_check_button_pressed(mb_right){
	card_select.select = false;
	card_select = 0;
}

#region Stack
/*
if position_meeting(mouse_x, mouse_y, self){
	if mouse_check_button_pressed(mb_left){
		
		if !ds_stack_empty(global.deck){
			var _card = ds_stack_pop(global.deck);
			var _inst = instance_create_layer(mouse_x, mouse_y, "Instances", obj_card);
			_inst.image_index = _card - 1;
			
		card_select = _inst;
		}
	}
}
*/
#endregion 

#region List
	
	if position_meeting(mouse_x, mouse_y, self){
	if mouse_check_button_pressed(mb_left){
		
		if ds_list_size(global.deck > 0 ){ 
			
			var _card = global.deck[| 0];
			var _inst = instance_create_layer(mouse_x, mouse_y, "Instances", obj_card);
			
			_inst.image_index = _card - 1;
			_inst.nome = global.grid_deck[# CARDS.NOME, _inst.image_index];
			_inst.ataque = global.grid_deck[# CARDS.ATAQUE, _inst.image_index];
			_inst.vida = global.grid_deck[# CARDS.VIDA, _inst.image_index];
			
		card_select = _inst;
		ds_list_delete(global.deck, 0);
		}
	}
}

//Embaralhar o deck
if keyboard_check(ord("R")){
	ds_list_shuffle(global.deck);
}

//Retornar card ao deck

var _inst_card =  instance_place(mouse_x, mouse_y, obj_card);
if _inst_card{
	
	if keyboard_check_pressed(ord("T")){
		var _altura = ds_list_size(global.deck);
		global.deck [| _altura] = _inst_card.image_index + 1;
		instance_destroy(_inst_card);
	}
}
#endregion

