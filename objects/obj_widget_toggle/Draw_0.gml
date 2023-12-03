event_inherited();

if wid_toggle {
	draw_sprite_ext(toggle_sprite, 
		frame_atual, 
		x, 
		y, 
		(image_xscale + xscale_offset), 
		(image_yscale + yscale_offset), 
		image_angle, 
		image_blend, 
		image_alpha
	);
}