//instancia a sequence de main menu na sala de menu

with obj_menu sequence_id = layer_sequence_create(
	"GAMECONTROL", 
	display_get_gui_width()/2,
	display_get_gui_height()/2,
	sq_menu_main
);

