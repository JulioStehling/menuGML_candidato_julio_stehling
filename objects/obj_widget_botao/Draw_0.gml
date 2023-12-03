event_inherited();

if !apenas_sprite {
	draw_text_setup(fonte, cor_atual);
	draw_text_ext_transformed(
		text_x, 
		text_y, 
		texto, 
		linha_sep,
		linha_largura_max,
		(xscale + (xscale_offset / 2)), 
		(yscale + (yscale_offset / 2)), 
		image_angle
	);
	
	draw_text_reset();

}
