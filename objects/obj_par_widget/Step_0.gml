
if global.wid_selec == id {
	
	//muda o frame da sprite para o frame de selecionado
	if !selec {
		selec		= true;
		frame_atual = SELEC;
	}
	
	global.wid_ordem = ordem;
	
	//atualiza curva de animação
	crv_progresso = min(1, crv_progresso + (spd_anim_base * spd_anim));

}


else reset_widget_anim();

//altera a escala da widget de acordo com a curva de animação
var _scale_offset	= animcurve_channel_evaluate(selec_curva, crv_progresso);
xscale_offset		= _scale_offset;
yscale_offset		= _scale_offset;
