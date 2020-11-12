function scrSetCharTalks() {

	var talk_list = ds_list_create();
		
	// En las posiciones pares habla el enemigo, en las impares, el jugador.
		
	talk_list[|0]	= "Bienvenidos! Soy Mu, el caballero dorado de Aries.";
	talk_list[|1]	= "Maestro Mu, no teniamos idea de que tu fueras el caballero dorado de Aries.";		
	talk_list[|2]	= "Saquen sus armaduras.";
	talk_list[|3]	= "Que dices? Por que quieres que saquemos nuestras armaduras?";
	talk_list[|4]	= "Sus armaduras deben ser reparadas para que recuperen su fuerza.";
	talk_list[|5]	= "Ya veo. Gracias, Mu.";
	talk_list[|6]	= "END_OF_TALK";
	talk_list[|7]	= "Genial! Puedo sentir la respiracion de mi armadura. Parece estar viva!";
	talk_list[|8]	= "Listo. Ahora dense prisa y vayan al siguiente templo.";
	talk_list[|9]	= "Te agradecemos mucho tu ayuda, Mu";
	talk_list[|10]	= "Recuerden: no deben considerar a los caballeros dorados como a alguien comun. Encuentren su septimo sentido.";
	talk_list[|11]	= "Lo haremos!";
	talk_list[|12]	= "END_OF_TALK";
		
	//ds_list_add(global.talks, talk_list);
	global.character_talks[|0] = talk_list;
	ds_list_mark_as_list(global.character_talks, 0);
	//ds_list_destroy(talk_list);
		
	var talk_list	= ds_list_create();
		
	// En las posiciones pares habla el enemigo, en las impares, el jugador.
		
	talk_list[|0]	= "Yo, el caballero dorado Aldebaran de Tauro, no permitire que pasen libremente por esta casa.";
	talk_list[|1]	= "No entiendo. Por que no sentimos su espiritu?";		
	talk_list[|2]	= "Si quieren pasar, tendran que derrotarme, lo cual nunca sucedera. Ja ja ja ja!";
	talk_list[|3]	= "La batalla recien esta comenzando, Aldebaran. Nadie sabe quien va a ganar.";
	talk_list[|4]	= "Tu crees?";
	talk_list[|5]	= "No voy a perder esta pelea. Solo tenemos 11 horas para salvar a Saori.";
	talk_list[|6]	= "END_OF_TALK";
	talk_list[|7]	= "Ahora rindete o te rompere el otro. Sobre advertencia no hay engano, Tauro.";
	talk_list[|8]	= "Ja ja ja ja!";
	talk_list[|9]	= "Que?";
	talk_list[|10]	= "Ja ja jaa! No me diste tiempo de protegerme y rompiste mi cuerno dorado. Eres el primero y el ultimo que hace una cosa asi.";
	talk_list[|11]	= "Que quieres decir?";
	talk_list[|12]	= "Si, adelante! Puedes pasar por la casa de Tauro como te lo prometi.";
	talk_list[|13]	= "END_OF_TALK";
		
	//ds_list_add(global.talks, talk_list);
	global.character_talks[|1] = talk_list;
	ds_list_mark_as_list(global.character_talks, 1);
	//ds_list_destroy(talk_list);



}
