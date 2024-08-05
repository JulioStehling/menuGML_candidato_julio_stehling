function save() {
	var _stru =
	{
		tela_cheia: global.tela_cheia,
		vol: global.volume
	};

	var _str = json_stringify(_stru);
	var _file = file_text_open_write("save.txt");
	file_text_write_string(_file, _str);
	file_text_close(_file);
	
}

function load() {
	if file_exists("save.txt") {
		var _file = file_text_open_read("save.txt");
		var _json = file_text_read_string(_file);
		var _stru = json_parse(_json);
		
		global.tela_cheia = _stru.tela_cheia;
		global.volume = _stru.vol;
		
	}

}