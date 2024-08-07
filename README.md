PT-BR

	# menuGML_candidato_julio_stehling
	Sistema de menu simples criado em GML como teste para vaga de programação em GML.

v 1.0

		Optei por criar um sistema de menu que seja mais amigável aos designers e artistas do 
	projeto hipotético, mantendo um bom nível de escalabilidade, ainda que um pouco mais 
	pesado e complexo do que uma solução convencional em GML.

		Nesse sistema, utiliza-se um objeto 'obj_menu' para manejar as interações de menu, 
	e então se arrasta os objetos 'widgets' desejados à sala, podendo editá-los de diversas formas
	no próprio editor de salas, através das 'Variable Definitions'. É possível escalar o texto, 
	mudar a fonte, sprite, cor, rotação, curva de anim (p/ quando o objeto é selecionado),
	e a função executada pelo widget, tudo no próprio editor de salas.
		Para criar um novo submenu em uma sala é necessário criar uma nova layer, aonde irão 
	os elementos desse novo submenu, e então desabilitar a layer no codigo de criação da sala.

v 1.1
	
		Projeto atualizado para a versão atual do gamemaker, v2024.6.1.208.

	Após fazer uso extenso deste sistema de menu em um projeto de jogo completo, pude perceber 
	falhas significativas em seu design. As principais sendo:

		-ter que confirmar manualmente qualquer mudança feita em uma dada tela de menu na room
	"original" em todas as rooms "filhas", mesmo elas possuindo o botão de "inherit" ativado,
	provavelmente devido a algum erro ainda não consertado da engine.
		-salas do jogo ficarem extremamente infladas quanto ao número de layers, uma vez que
	na versão atual do sistema qualquer tela de menu necessita a criação de uma nova layer,
	dificultando a navegação nas fases para o level designer.
		-por existirem e serem instanciadas dentro das camadas das rooms, todos os objetos de 
	UI precisariam de ter suas posições ajustadas dinamicamente na eventualidade de uma room 
	que possua dimensões maiores do que as dimensões da viewport do jogo.

		Esses pontos negativos comprometeram significativamente a escalabilidade do projeto em
	que implementei esse sistema de menu, especialmente por se tratar de um jogo de puzzle com
	dezenas de rooms diferentes. 
		Após alguma deliberação, me dei conta de que todos esses pontos negativos vinham de uma 
	questão central: os elementos de UI estavam sendo instanciados nas próprias rooms. A melhor 
	forma de me livrar de todos esses problemas, portanto, seria transpor a instanciação desses 
	objetos para algum outro sistema da engine que não tenha tantos pontos negativos. Pesquisei um
	pouco, e me deparei com uma solução de menus apresentada pela própria yoyo games em sua página 
	de tutoriais:	
	
		https://gamemaker.io/en/tutorials/how-to-make-buttons

		Percebi então que a solução mais apropriada para um sistema de menu no gamemaker 2
	(e provavelmente a solução pretendida pela yoyo games, enquanto eles não lançam uma atualização
	com um sistema de widgets embutido na engine) é um sistema de menu que instancia seus objetos
	de UI através do sistema de sequences da engine.


v 1.2
		
	O sistema de menu agora opera junto ao sistema de sequences da engine:
	
		Ao criar uma nova tela de menu, é necessário criar uma sequence, e uma função que instancie
	esta sequence, que por sua vez será vinculada ao devido botão.

	Draw mudado para draw GUI:

		Todo o draw event dos objetos foi mudado para o evento draw GUI, permitindo que os botões
	permaneçam fixos nas posições corretas independente da posição da câmera do jogo.

v 1.3
	
	tamanho das sprites ajustado

v 1.4

	sistema de save simples adicionado ao projeto

v 1.5
	
	chamada da função "save" adicionada a função que fecha a tela de configurações

Consideraçôes Finais

	Infelizmente, devido à limitação da engine de não ser possível alterar as "variable definitions" 
 	de um objeto instanciado em uma sequence, tal como se faz em uma layer de uma room, essa nova 
  	versão do sistema de menu requer que qualquer nova instancia de alguma widget exija que um novo 
   	objeto seja criado no projeto, e ele seja feito "children" (filho) do widget em questão, e então,
    	NESTE objeto específico, se alteram as devidas "variable definitions". 
      	Apesar desta pequena inconveniência, posso afirmar por experiência pessoal, após utilizar tanto esta nova 
       	versão do meu sistema de menus, quanto a versão antiga, em um projeto de jogo completo, que ela é vastamente 
	superior a versão 1.0, fazendo um uso muito mais inteligente dos recursos da engine, e sendo muito mais 
 	fácil de manter e escalar, além de proporcionar opções de animação das telas de menu como um todo quando 
  	elas são instanciadas, algo que não era possível na versão anterior.
 	Também adiciono que a inconveniência de se ter que criar um novo objeto para cada nova instância de widget 
  	possa vir a ser facilmente superada, na eventualidade de uma atualização da engine em que a Yoyo passe a 
   	permitir que as "variable definitions" possam ser editadas também em instâncias objetos em sequences.







EN-US

	# menuGML_candidato_julio_stehling
	A simple menu system created in GML as a submission for a job opening in GML programming.

v 1.0

		I opted for a more designer-and-artist-friendly menu system for this hypothetical project, 
	while maintaining a good level of scalability, though a bit heavier and more complex than
	a conventional GML menu solution.


		This system uses an object called 'obj_menu' to manage all of the menu interactions. Then, you
	drag the desired 'widget' objects to the menu room and can edit them in the room editor itself,
	through their 'Variable Definitions'. It's possible to scale text, change fonts, sprites,
	collors, rotation, animation curves (for when the object is selected), and the  function
	executed by the widget, all through the room editor.

		To create a new submenu in a menu room, you must create a layer for it, where all the 
	new elements for this submenu will go, and then you must disable the layer in the room's
	creation code.

v 1.1
	
	Project updated to current gamemaker version, v2024.6.1.208.

	After making extensive use of this menu system in a full-game project, I managed to spot
	significat flaws in its design. The main ones being:

		-having to manually confirm any change made in a given menu screen made in the "original."
	room in all of its child rooms, even though they have the "inherit" button activated on their 
	layers settigns.  Issue probably due to a persisting engine bug.

		-game rooms with an excessive number of layers, since any new menu screen necessitates the
	creation of a new layer, making the level design process more difficult.

		-since the UI objects exist and are instanced inside of the room's layers, they all would
	need some way off having their positions adjusted dynamically in case of a room that's bigger than
	the room's viewport.

		These negative points have significantly compromised the scalability of the project that
	I implemented this system, especially for it being a puzzle game with many different rooms.
	After some deliberation, I realized that all these negative points came from the same
	issue: the UI elements were being instanced in the room's layers themselves. Therefore, the best 
	A way to get rid of these problems would be to move the installation of these objects to another one.
	of the engine's systems. I then did some research and found a menu solution by Yoyo themselves in
	their tutorial page:

	https://gamemaker.io/en/tutorials/how-to-make-buttons

		I realized then that the most appropriate solution for a menu system in GameMaker 2 (and
	probably the intended one by Yoyo, while they don't release an update adding a built-in widget.
	system) is a menu system that instances its UI objects through the engine's sequence system.

v 1.2

		The menu system now uses the engine's sequence system:

	When creating a new menu screen, it is necessary to create a new sequence and a function that
	instances that sequence, which will be attached to the appropriate button.

		Draw event changed to draw GUI:

	All the drawing of the objects is now handled by the draw GUI event, allowing the buttons to
	remain fixed in the correct positions independent of the game's camera position.

v 1.3
	
	sprites size adjusted

v 1.4

	simple save system added to the project

v 1.5
	
	save function call added to the function that saves the config screen

 Final Toughts

 	Unfortunately, due to the engine's limitation of it not being possible to alter an object's 
  	"variable definitions" in a sequence, as one would in any other instance of that object, this
   	new version of the menu system demands that any new instance of any "widget" object is to be 
    	created instead as a brand new object, that is then made "children" of the specific widget, 
     	and THEN have it's "variable definitions" altered.
	Despite this minor inconvenience, I can safely say through personal experience, after 
 	utilizing both the first AND current versions of my menu system in a full game project, that 
  	the current iteration is vastly superior to version 1.0. It makes smarter usage of the engine's 
   	resources, is easier to maintain and scale, and topps it off by providing animation options for 
    	menu screens as a whole when they are instanced, something that was not possible in the 
     	previous version.
	I'd also add that the inconvenience of having to create a new object for every new instance of a 
 	given widget may be easily overcome in the future, if Yoyo Games eventually releases an update that 
  	allows you to edit "variable definitions" in an instance of an object that exists inside of a 
   	sequence.
