////todos widgets
function reset_widget_anim(){
	
	//reinicia os valores de animação dos widgets
	selec			= false;
	frame_atual		= DESELEC;
	crv_progresso	= 0;
}

function reset_e_selec_widget(){
	global.wid_selec = id;
	reset_widget_anim();		
}



////botoes

//mudar de sala
function botao_room_jogar(){
	room_goto(rm_gameplay);
}

function botao_room_menu(){
	room_goto(rm_main_menu);
}

//mudar de submenu
function botao_layer_configuracoes(){
	with obj_menu {
		var cur_seq = sequence_id;
		sequence_id = layer_sequence_create("GAMECONTROL", display_get_gui_width()/2, 
			display_get_gui_height()/2, sq_menu_config);
			
		layer_sequence_destroy(cur_seq);
		
	}
}

function botao_layer_sair(){
	with obj_menu {
		var cur_seq = sequence_id;
		sequence_id = layer_sequence_create("GAMECONTROL", display_get_gui_width()/2, 
			display_get_gui_height()/2, sq_menu_quit);
			
		layer_sequence_destroy(cur_seq);
		
	}
}

function botao_layer_main_menu(){
	with obj_menu {
		var cur_seq = sequence_id;
		sequence_id = layer_sequence_create("GAMECONTROL", display_get_gui_width()/2, 
			display_get_gui_height()/2, sq_menu_main);
			
		layer_sequence_destroy(cur_seq);
		save();
	}
}

//fechar jogo
function botao_game_fechar(){
	save();
	game_end();	
}

//volume
function botao_som_mais(){
	global.volume = min(global.volume + 1, VOLMAX);
	reset_widget_anim();
}

function botao_som_menos(){
	global.volume = max(global.volume - 1, VOLMIN);
	reset_widget_anim();
}



////togggles
function toggle_tela_cheia(){
	wid_toggle = !wid_toggle;
	global.tela_cheia = wid_toggle;
	window_set_fullscreen(global.tela_cheia);
	reset_widget_anim();
}

function toggle_check_tela_cheia(){
	wid_toggle = global.tela_cheia;
}