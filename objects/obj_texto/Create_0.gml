
cor_atual		= cor_texto;

//largura e espaçamento das linhas de texto
linha_largura_max	= (sprite_get_width(sprite_index) * 1.5) * image_xscale;
linha_sep			= string_height_ext(texto, 0, linha_largura_max)+ linha_sep_offset;


////Variable Definitions
//xscale_offset		/altera manualmente a escala x do texto
//linha_sep_offset	/altera manualmente o espaçamento das linhas de texto
//mostrar_var		/sobreescreve o 'texto', e faz o obj_texto mostrar uma variável em tempo real