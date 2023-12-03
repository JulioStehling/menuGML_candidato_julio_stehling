//altera variáveis de draw comumente manipulados em draws de texto
function draw_text_setup(_fonte, _cor, _alpha = 1, _halign = fa_center, _valign = fa_middle){
	
	draw_set_font	(_fonte);
	draw_set_color	(_cor);
	draw_set_alpha	(_alpha);
	draw_set_halign	(_halign);
	draw_set_valign	(_valign);
}

//reseta essas variáveis a seus valores padrão
function draw_text_reset(){
	draw_set_font	(fnt_default);
	draw_set_color	(c_white);
	draw_set_alpha	(1);	
	draw_set_halign	(fa_center);
	draw_set_valign	(fa_middle);
}