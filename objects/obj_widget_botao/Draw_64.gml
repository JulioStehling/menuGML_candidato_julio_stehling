event_inherited();

if !apenas_sprite {
	draw_text_setup(fonte, cor_atual);
	draw_text_ext_transformed(
		x, 
		y, 
		texto, 
		linha_sep,
		linha_largura_max,
		abs((image_xscale + (xscale_offset / 2))), 
		abs((image_yscale + (yscale_offset / 2))), 
		image_angle
	);
	
	draw_text_reset();

}
