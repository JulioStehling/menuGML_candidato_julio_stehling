
draw_text_setup(fonte, cor_atual);

draw_text_ext_transformed(
	x, 
	y, 
	texto, 
	linha_sep,
	linha_largura_max,
	abs(image_xscale), 
	abs(image_yscale), 
	image_angle
);

draw_text_reset();

