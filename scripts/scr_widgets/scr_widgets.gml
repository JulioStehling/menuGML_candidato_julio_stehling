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
	instance_activate_layer("layer_config");
	instance_deactivate_layer(layer);
}

function botao_layer_sair(){
	instance_activate_layer("layer_sair");
	instance_deactivate_layer(layer);
}

function botao_layer_main_menu(){
	instance_activate_layer("layer_main_menu");
	instance_deactivate_layer(layer);
}

//fechar jogo
function botao_game_fechar(){
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
	window_set_fullscreen(wid_toggle);
	reset_widget_anim();
}

function toggle_check_tela_cheia(){
	wid_toggle = window_get_fullscreen();
}