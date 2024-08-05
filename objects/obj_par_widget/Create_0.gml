
image_speed		= 0;

//variáveis de animação de widget
selec			= false;	//faz a animação rodar uma unica vez
frame_atual		= DESELEC;		//0 = widget desselecionado 1 = widget selecionado
crv_progresso	= 0;		//progresso na curva de animação
spd_anim_base	= 0.02;		//velocidade base da curva de animação

//controlam o quanto a animação afeta a escala do widget
xscale_offset	= 0;		
yscale_offset	= 0;

//arquivo de curvas de animações, com a curva em sí 
//selecionada pela variable definition 'curva_anim'
selec_curva		= animcurve_get_channel(crv_widgets, string(curva_anim));

////Variable Definitions
//curva_anim	/seleciona a curva de animação a ser executada
//spd_anim		/altera a velocidade da animação
//ordem			/da uma posição na fila de widgets, para o funcionamento do TECLADO