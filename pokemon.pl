pertenece(X,[X|_]).
pertenece(X,[_|Y]):- pertenece(X,Y),!.

% ataque(nombre,tipo,potenciaBase).
ataque(impactrueno,electrico,40).
ataque(hidrobomba,agua,120).
ataque(ascuas,fuego,40).
ataque(destructor,normal,40).
ataque(golpe_karate,lucha,50).
ataque(araniazo,normal,40).
ataque(agarre,normal,55).
ataque(latigo_cepa,planta,35).
ataque(viento_cortante,normal,80).
ataque(vuelo,volador,90).
ataque(mega_patada,lucha,120).
ataque(placaje,normal,35).
ataque(acido,veneno,40).
ataque(ascuas,fuego,40).
ataque(lanzallamas,fuego,95).
ataque(hydrobomba,agua,120).
ataque(pistola_agua,agua,40).
ataque(surf,agua,95).
ataque(ventisca,hielo,120).
ataque(psicorayo,psiquico,65).
ataque(hiperrayo,normal,150).
ataque(picotazo,volador,35).
ataque(fuerza,normal,80).
ataque(hoja_afilada,planta,55).
ataque(rayo_solar,planta,120).
ataque(danza_petalo,planta,90).
ataque(rayo,electrico,95).
ataque(trueno,electrico,120).
ataque(lanza_roca,roca,50).
ataque(confusion,psiquico,50).
ataque(psiquico,psiquico,90).
ataque(ataque_rapido,normal,40).
ataque(bomba_huevo,normal,100).
ataque(lenguetazo,fantasma,20).
ataque(polucion,veneno,20).
ataque(hueso_palo,tierra,65).
ataque(llamarada,fuego,120).
ataque(cascada,agua,80).
ataque(tenaza,agua,35).
ataque(cabezazo,normal,100).
ataque(patada_alta,lucha,100).
ataque(comesuenios,psiquico,100).
ataque(ataque_aereo,volador,140).
ataque(burbuja,agua,20).
ataque(cuchillada,normal,70).


% pokemon(nombre, lista de tipos que puede tener 1 o 2 elementos)
pokemon(pikachu,[electrico]).
pokemon(charizard,[fuego,volador]).
pokemon(gyarados,[agua,volador]).
pokemon(cubone,[tierra]).
pokemon(jigglypuff,[normal,hada]).
pokemon(porygon,[normal]).
pokemon(snorlax,[normal]).
pokemon(moltres,[fuego,volador]).
pokemon(charmander,[fuego]).
pokemon(squirtle,[agua]).
pokemon(poliwrath,[agua,lucha]).
pokemon(tentacool,[agua,veneno]).
pokemon(slowpoke,[agua,psiquico]).
pokemon(cloyster,[agua,hielo]).
pokemon(omanyte,[agua,roca]).
pokemon(kabuto,[agua,roca]).
pokemon(magnemite,[electrico,acero]).
pokemon(zapdos,[electrico,volador]).
pokemon(voltorb,[electrico]).
pokemon(jolteon,[electrico]).
pokemon(bulbasaur,[planta,veneno]).
pokemon(paras,[planta,bicho]).
pokemon(tangela,[planta]).
pokemon(exeggcute,[planta,psiquico]).
pokemon(jynx,[hielo,psiquico]).
pokemon(lapras,[agua,hielo]).
pokemon(articuno,[hielo,volador]).
pokemon(mankey,[lucha]).
pokemon(machamp,[lucha]).
pokemon(hitmonlee,[lucha]).
pokemon(hitmonchan,[lucha]).
pokemon(weedle,[veneno, bicho]).
pokemon(ekans,[veneno]).
pokemon(nidoqueen,[veneno, tierra]).
pokemon(nidorino,[veneno]).
pokemon(zubat,[veneno, volador]).
pokemon(oddish,[veneno, planta]).
pokemon(grimer,[veneno]).
pokemon(gastly,[veneno, fantasma]).
pokemon(sandshrew,[tierra]).
pokemon(diglett,[tierra]).
pokemon(geodude,[tierra,roca]).
pokemon(rhyhorn,[tierra,roca]).
pokemon(dugtrio,[tierra]).
pokemon(butterfree,[volador,bicho]).
pokemon(pidgey,[volador,normal]).
pokemon(spearow,[volador,normal]).
pokemon(scyther,[volador, bicho]).
pokemon(aerodactyl,[volador,roca]).
pokemon(dragonite,[volador, dragon]).
pokemon(abra,[psiquico]).
pokemon(kadabra,[psiquico]).
pokemon(slowbro,[psiquico,agua]).
pokemon(hypno,[psiquico]).
pokemon(starmie,[psiquico,agua]).
pokemon(mr_mime,[psiquico,hada]).
pokemon(mew,[psiquico]).
pokemon(mewtwo,[psiquico]).
pokemon(caterpie,[bicho]).
pokemon(kakuna,[bicho,veneno]).
pokemon(paras,[bicho,planta]).
pokemon(pinsir,[bicho]).
pokemon(onix,[roca,tierra]).
pokemon(omanyte,[roca,agua]).
pokemon(haunter,[fantasma,veneno]).
pokemon(dratini,[dragon]).
pokemon(dragonair,[dragon]).
pokemon(magnemite,[electrico,acero]).
pokemon(magneton,[electrico,acero]).
pokemon(clefairy,[hada]).
pokemon(clefable,[hada  ]).
pokemon(wigglytuff,[normal,hada]).
pokemon(electabuzz,[electrico]).
pokemon(raichu,[electrico]).




% multiplicador_simple(tipo atacante, lista de elementos afectados a un mismo multiplicador, multiplicador de daño)
% tabla completa (basicos) tipo electrico
multiplicador_simple(electrico,[agua,volador],2).
multiplicador_simple(electrico,[electrico,planta,dragon],1/2).
multiplicador_simple(electrico,[tierra],0).
multiplicador_simple(electrico,[fuego,acero,bicho,fantasma,hada,hielo,lucha,normal,psiquico,roca,siniestro,veneno],1).

multiplicador_simple(normal,[],2).
multiplicador_simple(normal,[roca,acero],1/2).
multiplicador_simple(normal,[fantasma],0).
multiplicador_simple(normal,[normal,fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,psiquico,bicho,dragon,siniestro,hada],1).

multiplicador_simple(fuego,[planta,hielo,bicho,acero],2).
multiplicador_simple(fuego,[fuego,agua,roca],1/2).
multiplicador_simple(fuego,[],0).
multiplicador_simple(fuego,[normal,electrico,lucha,veneno,tierra,volador,psiquico,fantasma,siniestro,hada],1).

multiplicador_simple(agua,[fuego,tierra,roca],2).
multiplicador_simple(agua,[agua,planta,dragon],1/2).
multiplicador_simple(agua,[],0).
multiplicador_simple(agua,[normal,electrico,hielo,lucha,veneno,volador,psiquico,bicho,fantasma,siniestro,acero,hada],1).

multiplicador_simple(planta,[agua,tierra,roca],2).
multiplicador_simple(planta,[fuego,planta,veneno,volador,bicho,dragon,acero],1/2).
multiplicador_simple(planta,[],0).
multiplicador_simple(planta,[normal,electrico,hielo,lucha,psiquico,fantasma,siniestro,hada],1).

multiplicador_simple(electrico,[agua,volador],2).
multiplicador_simple(electrico,[planta,electrico,dragon],1/2).
multiplicador_simple(electrico,[tierra],0).
multiplicador_simple(electrico,[normal,fuego,hielo,lucha,veneno,psiquico,bicho,roca,fantasma,siniestro,acero,hada],1).

multiplicador_simple(hielo,[planta,tierra,volador,dragon],2).
multiplicador_simple(hielo,[fuego,agua,hielo,acero],1/2).
multiplicador_simple(hielo,[],0).
multiplicador_simple(hielo,[normal,electrico,lucha,veneno,psiquico,bicho,roca,fantasma,siniestro,hada],1).

multiplicador_simple(lucha,[normal,hielo,roca,siniestro,acero],2).
multiplicador_simple(lucha,[veneno,volador,psiquico,bicho,hada],1/2).
multiplicador_simple(lucha,[fantasma],0).
multiplicador_simple(lucha,[fuego,agua,planta,electrico,lucha,tierra,dragon],1).

multiplicador_simple(veneno,[planta,hada],2).
multiplicador_simple(veneno,[veneno,tierra,roca,fantasma],1/2).
multiplicador_simple(veneno,[acero],0).
multiplicador_simple(veneno,[normal,fuego,agua,electrico,hielo,lucha,volador,psiquico,bicho,dragon,siniestro],1).

multiplicador_simple(tierra,[fuego,electrico,veneno,roca,acero],2).
multiplicador_simple(tierra,[planta,bicho],1/2).
multiplicador_simple(tierra,[volador],0).
multiplicador_simple(tierra,[normal,agua,hielo,lucha,tierra,psiquico,fantasma,dragon,siniestro,hada],1).

multiplicador_simple(volador,[planta,lucha,bicho],2).
multiplicador_simple(volador,[electrico,roca,acero],1/2).
multiplicador_simple(volador,[],0).
multiplicador_simple(volador,[normal,fuego,agua,hielo,veneno,tierra,volador,psiquico,roca,fantasma,dragon,siniestro,hada],1).

multiplicador_simple(psiquico,[lucha,veneno],2).
multiplicador_simple(psiquico,[psiquico,acero],1/2).
multiplicador_simple(psiquico,[siniestro],0).
multiplicador_simple(psiquico,[normal,fuego,agua,planta,electrico,hielo,tierra,volador,bicho,roca,fantasma,dragon,hada],1).

multiplicador_simple(bicho,[planta,siniestro],2).
multiplicador_simple(bicho,[fuego,lucha,veneno,volador,fantasma,acero,hada],1/2).
multiplicador_simple(bicho,[],0).
multiplicador_simple(bicho,[normal,agua,electrico,hielo,lucha,tierra,bicho,roca,dragon],1).

multiplicador_simple(roca,[fuego,hielo,volador,bicho],2).
multiplicador_simple(roca,[lucha,tierra,acero],1/2).
multiplicador_simple(roca,[],0).
multiplicador_simple(roca,[normal,agua,planta,electrico,veneno,psiquico,roca,fantasma,dragon,siniestro,hada],1).

multiplicador_simple(fantasma,[psiquico,fantasma],2).
multiplicador_simple(fantasma,[siniestro],1/2).
multiplicador_simple(fantasma,[normal],0).
multiplicador_simple(fantasma,[fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,bicho,roca,dragon,acero,hada],1).

multiplicador_simple(dragon,[dragon],2).
multiplicador_simple(dragon,[acero],1/2).
multiplicador_simple(dragon,[hada],0).
multiplicador_simple(dragon,[normal,fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,psiquico,bicho,roca,fantasma,siniestro],1).

multiplicador_simple(siniestro,[bicho,fantasma],2).
multiplicador_simple(siniestro,[lucha,siniestro,hada],1/2).
multiplicador_simple(siniestro,[],0).
multiplicador_simple(siniestro,[normal,fuego,agua,planta,electrico,hielo,veneno,tierra,volador,bicho,roca,fantasma,acero],1).

multiplicador_simple(acero,[hielo,roca,hada],2).
multiplicador_simple(acero,[fuego,agua,electrico,acero],1/2).
multiplicador_simple(acero,[],0).
multiplicador_simple(acero,[normal,planta,lucha,veneno,tierra,volador,psiquico,bicho,fantasma,dragon,siniestro],1).

multiplicador_simple(hada,[lucha,dragon,siniestro],2).
multiplicador_simple(hada,[fuego,veneno,acero],1/2).
multiplicador_simple(hada,[],0).
multiplicador_simple(hada,[normal,agua,planta,electrico,hielo,tierra,volador,psiquico,bicho,roca,fantasma,hada],1).

% obtener_multiplicador_simple(tipo atacante, tipo receptor, multiplicador)
% obtiene el valor multiplicador simple a partir de un tipo de ataque y un tipo receptor 
obtener_multiplicador_simple(TA,TR,M):-multiplicador_simple(TA,L,M), pertenece(TR,L),!.

% calcular_multiplicador(tipo del ataque,lista de tipos del pokemon receptor, multiplicador acumulado)
% calcula el multiplicador de daño del tipo del ataque contra cada uno de los tipos del receptor y los acumula (por si tiene 2 tipos receptores)
calcular_multiplicador(_,[],1):-!.
calcular_multiplicador(TA,[H|T],M):- obtener_multiplicador_simple(TA,H,MT),calcular_multiplicador(TA,T,MA), M is MT * MA.

% damage(nombre pokemon receptor, nombre del ataque, daño calculado del ataque)
% del pokemon receptor se consulta sus tipos, del nombre del ataque su tipo y daño base
% se calcula el multiplicador y luego se le aplica al daño base del ataque
% D daño total del ataque luego de aplicar el multiplicador correspondiente
damage(NP,NA,D):-ataque(NA,TA,DB), pokemon(NP,LT),calcular_multiplicador(TA,LT,M), D is DB * M.