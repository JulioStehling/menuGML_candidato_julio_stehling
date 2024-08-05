
function manejo_de_input(){
	
	//reseta todos os inputs todo frame de jogo
	global.cima				= false;
	global.baixo			= false;
	global.esq				= false;
	global.dir				= false;
	global.confirma			= false;
	global.m_confirma		= false;
	
	//coleta inputs direcionais do teclado
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)	global.cima			= true;	
	if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)	global.dir			= true;	
	if keyboard_check_pressed(ord("S"))	or keyboard_check_pressed(vk_down)	global.baixo		= true;	
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)	global.esq			= true;
	
	//coleta inputs de confirmação do mouse e teclado
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)
	or keyboard_check_pressed(ord("E"))										global.confirma		= true;	
	if mouse_check_button_pressed(mb_left)									global.m_confirma	= true;
	
	//altera entre ter o modo de input MOUSE e TECLADO
	if (mouse_x_previous != mouse_x) or (mouse_y_previous != mouse_y) or global.m_confirma 
		input_atual		= MOUSE;
	if global.cima	== true or global.baixo		== true or global.esq	== true 
	or global.dir	== true or global.confirma	== true
		input_atual		= TECLADO;
}


function executar_funcao_widget() {
	
	if global.wid_selec != noone {
		
		//executa a função do widget selecionado
		with global.wid_selec script_execute(funcao);
			
		//efeito sonoro de clique
		audio_play_sound(sfx_click, 10, false);
	}
}

