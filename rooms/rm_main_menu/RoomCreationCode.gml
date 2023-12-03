//é necessário criar uma layer separada para cada submenu do menu principal
//e então desabilita-las ao iniciar a sala

//tornar as layers visíveis serve apenas para facilitar a manipulação 
//da sua visibilidade por parte do designer, mas não é necessário
layer_set_visible("layer_config",		true);
layer_set_visible("layer_sair",			true);
layer_set_visible("layer_main_menu",	true);


instance_deactivate_layer("layer_config");
instance_deactivate_layer("layer_sair");
