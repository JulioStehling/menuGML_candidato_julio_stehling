
//variáveis salvas

global.volume = 5;
global.tela_cheia = false;

//carregar variáveis salvas

load();

window_set_fullscreen(global.tela_cheia)

global.wid_selec	= noone; //widget atualmente selecionado
global.wid_ordem	= noone; //index de 'ordem de fila' do widget atualmente selecionado

//declaração das variáveis globais de input
global.cima			= false;
global.baixo		= false;
global.esq			= false;
global.dir			= false;
global.confirma		= false;
global.m_confirma	= false;


//posições do mouse no frame anterior
mouse_x_previous	= mouse_x;
mouse_y_previous	= mouse_y;

//guarda se o input sendo usado agora é o MOUSE ou o TECLADO
input_atual			= MOUSE;

//variavel que salva a id da sequence de menu atualmente rodando no jogo
sequence_id = noone


//sai da sala de inicialização e vai para o menu inicial
room_goto(rm_main_menu);