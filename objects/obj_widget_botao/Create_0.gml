event_inherited();



cor_atual		= cor_texto;

//largura e espaçamento das linhas de texto
linha_largura_max	= (sprite_get_width(sprite_index) * 1.5) * image_xscale;
linha_sep			= string_height_ext(texto, 0, linha_largura_max);


//distorção dinâmica do botão
xscale_offset	= 0;
yscale_offset	= 0;

////Variable Definitions
//xscale_offset		/altera manualmente a escala x do texto
//linha_sep_offset	/altera manualmente o espaçamento das linhas de texto
//mostrar_valor		/sobreescreve o 'texto', e faz o obj_texto mostrar uma variável em tempo real
//cor_texto_selec	/cor que o texto do botão toma ao ser selecionado
//apenas_sprite		/desabilita draw de texto para o botão
//funcao			/função executada pelo botão ao ser ativado