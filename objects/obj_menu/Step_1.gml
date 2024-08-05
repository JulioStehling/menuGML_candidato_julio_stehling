manejo_de_input();


//comportamento com input de MOUSE
if input_atual == MOUSE {
	
	//checa se o mouse está sobre um widget, e se não, reseta os valores que armazenam o widget atual
	global.wid_selec = instance_position( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_par_widget);
	if global.wid_selec == noone global.wid_ordem = noone;
	
	//executa a função do widget atualmente selecionado pelo MOUSE caso haja um clique
	if global.m_confirma executar_funcao_widget();

}

//comportamento com input de TECLADO
else {
	
	//armazena a quantia atual de widgets em tela para efetuar a navegação por TECLADO
	var _num_de_widgets = instance_number(obj_par_widget) - 1;
	
	with obj_par_widget {
		
		//caso já haja algum widget selecionado
		if global.wid_ordem	!= noone {
			
			//selecionar widget anterior, loopando pela fila se necessário
			if global.cima or global.esq {
				if (global.wid_ordem == _num_de_widgets)  {
					if (ordem == 0) reset_e_selec_widget();	
				} else if ordem == global.wid_ordem + 1 reset_e_selec_widget();
			
			//selecionar próximo widget, loopando pela fila se necessário
			} else if global.baixo or global.dir {
				if (global.wid_ordem == 0)  {
					if (ordem == _num_de_widgets) reset_e_selec_widget();
				} else if ordem == global.wid_ordem - 1 reset_e_selec_widget();				
			}
			
		//caso NÃO haja algum widget selecionado, o último da fila é selecionado
		} else if ordem == _num_de_widgets reset_e_selec_widget();
	}
	
	//executa a função do widget atualmente selecionado pelo TECLADO caso haja uma seleção
	if global.confirma executar_funcao_widget();
	
}


