//pos do texto
text_x			= x;
text_y			= y;

cor_atual		= cor_texto;

//largura e espaçamento das linhas de texto
linha_largura_max	= (sprite_get_width(sprite_index) * 1.5) * image_xscale;
linha_sep			= string_height_ext(texto, 0, linha_largura_max)+ linha_sep_offset;

//escala do texto
escala_fonte	= font_get_size(fonte) / 4;

//mantêm a escala do texto regular
if image_xscale > image_yscale var	_scale = image_yscale;
else								_scale = image_xscale;

//aplica as distorções feitas na instancia do texto
xscale			= (((_scale / escala_fonte)) + xscale_offset);
yscale			= (((_scale / escala_fonte)) + yscale_offset);

////Variable Definitions
//xscale_offset		/altera manualmente a escala x do texto
//linha_sep_offset	/altera manualmente o espaçamento das linhas de texto
//mostrar_var		/sobreescreve o 'texto', e faz o obj_texto mostrar uma variável em tempo real