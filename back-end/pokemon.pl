% member determina si un elemento pertence a una lista
pertenece(X,[X|_]).
pertenece(X,[_|Y]):- pertenece(X,Y),!.

% movimientos
% movimiento(nombre,tipo,categoria,potenciaBase).

movimiento(impactrueno,electrico,especial,40).
movimiento(rayo,electrico,especial,95).
movimiento(chispa,electrico,fisico,65).

movimiento(hidrobomba,agua,especial,110).
movimiento(cascada,agua,fisico,80).
movimiento(pistola_agua,agua,especial,40).
movimiento(surf,agua,especial,95).

movimiento(ascuas,fuego,especial,40).
movimiento(lanzallamas,fuego,especial,95).
movimiento(llamarada,fuego,especial,110).
movimiento(nitrocarga,fuego,fisico,50).

movimiento(latigo_cepa,planta,fisico,45).
movimiento(hoja_afilada,planta,fisico,55).
movimiento(rayo_solar,planta,especial,120).

movimiento(gigaimpacto,normal,fisico,150).
movimiento(placaje,normal,fisico,40).
movimiento(agarre,normal,fisico,55).
movimiento(hiperrayo,normal,especial,150).
movimiento(cuchillada,normal,fisico,70).

movimiento(golpe_karate,lucha,fisico,50).
movimiento(mega_patada,lucha,fisico,120).
movimiento(patada_alta,lucha,fisico,100).
movimiento(esfera_aural,lucha,especial,80).

movimiento(vuelo,volador,fisico,90).
movimiento(picotazo,volador,fisico,35).
movimiento(tornado,volador,especial,40).

movimiento(acido,veneno,especial,40).
movimiento(polucion,veneno,especial,30).
movimiento(puya_nociva,veneno,fisico,80).

movimiento(ventisca,hielo,especial,110).
movimiento(rayo_hielo,hielo,especial,90).
movimiento(canto_helado,hielo,fisico,40).

movimiento(psicorrayo,psiquico,especial,65).
movimiento(confusion,psiquico,especial,50).
movimiento(psiquico,psiquico,especial,90).

movimiento(avalancha,roca,fisico,75).
movimiento(pedrada,roca,fisico,25).
movimiento(poder_pasado,roca,especial,60).

movimiento(excavar,tierra,fisico,80).
movimiento(terremoto,tierra,fisico,100).
movimiento(tierra_viva,tierra,especial,90).

movimiento(bola_sombra,fantasma,especial,80).
movimiento(impresionar,fantasma,fisico,30).
movimiento(rayo_umbrio,fantasma,especial,100).

movimiento(triturar,siniestro,fisico,80).
movimiento(mordisco,siniestro,fisico,60).
movimiento(alarido,siniestro,especial,55).

movimiento(cola_ferrea,acero,fisico,100).
movimiento(garra_metal,acero,fisico,50).
movimiento(puno_meteoro,acero,fisico,90).

movimiento(cometa_draco,dragon,especial,130).
movimiento(enfado,dragon,fisico,120).
movimiento(dragoaliento,dragon,especial,60).

movimiento(megacuerno,bicho,fisico,120).
movimiento(tijera_x,bicho,fisico,80).
movimiento(zumbido,bicho,especial,90).

movimiento(brillo_magico,hada,especial,80).
movimiento(voz_cautivadora,hada,especial,40).

% pokemones
% pokemon(nombre, lista de tipos que puede tener 1 o 2 elementos)
pokemon(bulbasaur,['planta', 'veneno']).
pokemon(ivysaur,['planta', 'veneno']).
pokemon(venusaur,['planta', 'veneno']).
pokemon(charmander,['fuego']).
pokemon(charmeleon,['fuego']).
pokemon(charizard,['fuego', 'volador']).
pokemon(squirtle,['agua']).
pokemon(wartortle,['agua']).
pokemon(blastoise,['agua']).
pokemon(caterpie,['bicho']).
pokemon(metapod,['bicho']).
pokemon(butterfree,['bicho', 'volador']).
pokemon(weedle,['bicho', 'veneno']).
pokemon(kakuna,['bicho', 'veneno']).
pokemon(beedrill,['bicho', 'veneno']).
pokemon(pidgey,['normal', 'volador']).
pokemon(pidgeotto,['normal', 'volador']).
pokemon(pidgeot,['normal', 'volador']).
pokemon(rattata,['normal']).
pokemon(raticate,['normal']).
pokemon(spearow,['normal', 'volador']).
pokemon(fearow,['normal', 'volador']).
pokemon(ekans,['veneno']).
pokemon(arbok,['veneno']).
pokemon(pikachu,['electrico']).
pokemon(raichu,['electrico']).
pokemon(sandshrew,['tierra']).
pokemon(sandslash,['tierra']).
pokemon(nidoran_f,['veneno']).
pokemon(nidorina,['veneno']).
pokemon(nidoqueen,['veneno', 'tierra']).
pokemon(nidoran_m,['veneno']).
pokemon(nidorino,['veneno']).
pokemon(nidoking,['veneno', 'tierra']).
pokemon(clefairy,['hada']).
pokemon(clefable,['hada']).
pokemon(vulpix,['fuego']).
pokemon(ninetales,['fuego']).
pokemon(jigglypuff,['normal', 'hada']).
pokemon(wigglytuff,['normal', 'hada']).
pokemon(zubat,['veneno', 'volador']).
pokemon(golbat,['veneno', 'volador']).
pokemon(oddish,['planta', 'veneno']).
pokemon(gloom,['planta', 'veneno']).
pokemon(vileplume,['planta', 'veneno']).
pokemon(paras,['bicho', 'planta']).
pokemon(parasect,['bicho', 'planta']).
pokemon(venonat,['bicho', 'veneno']).
pokemon(venomoth,['bicho', 'veneno']).
pokemon(diglett,['tierra']).
pokemon(dugtrio,['tierra']).
pokemon(meowth,['normal']).
pokemon(persian,['normal']).
pokemon(psyduck,['agua']).
pokemon(golduck,['agua']).
pokemon(mankey,['lucha']).
pokemon(primeape,['lucha']).
pokemon(growlithe,['fuego']).
pokemon(arcanine,['fuego']).
pokemon(poliwag,['agua']).
pokemon(poliwhirl,['agua']).
pokemon(poliwrath,['agua', 'lucha']).
pokemon(abra,['psiquico']).
pokemon(kadabra,['psiquico']).
pokemon(alakazam,['psiquico']).
pokemon(machop,['lucha']).
pokemon(machoke,['lucha']).
pokemon(machamp,['lucha']).
pokemon(bellsprout,['planta', 'veneno']).
pokemon(weepinbell,['planta', 'veneno']).
pokemon(victreebel,['planta', 'veneno']).
pokemon(tentacool,['agua', 'veneno']).
pokemon(tentacruel,['agua', 'veneno']).
pokemon(geodude,['roca', 'tierra']).
pokemon(graveler,['roca', 'tierra']).
pokemon(golem,['roca', 'tierra']).
pokemon(ponyta,['fuego']).
pokemon(rapidash,['fuego']).
pokemon(slowpoke,['agua', 'psiquico']).
pokemon(slowbro,['agua', 'psiquico']).
pokemon(magnemite,['electrico', 'acero']).
pokemon(magneton,['electrico', 'acero']).
pokemon(farfetchd,['normal', 'volador']).
pokemon(doduo,['normal', 'volador']).
pokemon(dodrio,['normal', 'volador']).
pokemon(seel,['agua']).
pokemon(dewgong,['agua', 'hielo']).
pokemon(grimer,['veneno']).
pokemon(muk,['veneno']).
pokemon(shellder,['agua']).
pokemon(cloyster,['agua', 'hielo']).
pokemon(gastly,['hielo', 'veneno']).
pokemon(haunter,['hielo', 'veneno']).
pokemon(gengar,['hielo', 'veneno']).
pokemon(onix,['roca', 'tierra']).
pokemon(drowzee,['psiquico']).
pokemon(hypno,['psiquico']).
pokemon(krabby,['agua']).
pokemon(kingler,['agua']).
pokemon(voltorb,['electrico']).
pokemon(electrode,['electrico']).
pokemon(exeggcute,['planta', 'psiquico']).
pokemon(exeggutor,['planta', 'psiquico']).
pokemon(cubone,['tierra']).
pokemon(marowak,['tierra']).
pokemon(hitmonlee,['lucha']).
pokemon(hitmonchan,['lucha']).
pokemon(lickitung,['normal']).
pokemon(koffing,['veneno']).
pokemon(weezing,['veneno']).
pokemon(rhyhorn,['tierra', 'roca']).
pokemon(rhydon,['tierra', 'roca']).
pokemon(chansey,['normal']).
pokemon(tangela,['planta']).
pokemon(kangaskhan,['normal']).
pokemon(horsea,['agua']).
pokemon(seadra,['agua']).
pokemon(goldeen,['agua']).
pokemon(seaking,['agua']).
pokemon(staryu,['agua']).
pokemon(starmie,['agua', 'psiquico']).
pokemon(mr_mime,['psiquico', 'hada']).
pokemon(scyther,['bicho', 'volador']).
pokemon(jynx,['hielo', 'psiquico']).
pokemon(electabuzz,['electrico']).
pokemon(magmar,['fuego']).
pokemon(pinsir,['bicho']).
pokemon(tauros,['normal']).
pokemon(magikarp,['agua']).
pokemon(gyarados,['agua', 'volador']).
pokemon(lapras,['agua', 'hielo']).
pokemon(ditto,['normal']).
pokemon(eevee,['normal']).
pokemon(vaporeon,['agua']).
pokemon(jolteon,['electrico']).
pokemon(flareon,['fuego']).
pokemon(porygon,['normal']).
pokemon(omanyte,['roca', 'agua']).
pokemon(omastar,['roca', 'agua']).
pokemon(kabuto,['roca', 'agua']).
pokemon(kabutops,['roca', 'agua']).
pokemon(aerodactyl,['roca', 'volador']).
pokemon(snorlax,['normal']).
pokemon(articuno,['hielo', 'volador']).
pokemon(zapdos,['electrico', 'volador']).
pokemon(moltres,['fuego', 'volador']).
pokemon(dratini,['dragon']).
pokemon(dragonair,['dragon']).
pokemon(dragonite,['dragon', 'volador']).
pokemon(mewtwo,['psiquico']).
pokemon(mew,['psiquico']).
pokemon(chikorita,['planta']).
pokemon(bayleef,['planta']).
pokemon(meganium,['planta']).
pokemon(cyndaquil,['fuego']).
pokemon(quilava,['fuego']).
pokemon(typhlosion,['fuego']).
pokemon(totodile,['agua']).
pokemon(croconaw,['agua']).
pokemon(feraligatr,['agua']).
pokemon(sentret,['normal']).
pokemon(furret,['normal']).
pokemon(hoothoot,['normal', 'volador']).
pokemon(noctowl,['normal', 'volador']).
pokemon(ledyba,['bicho', 'volador']).
pokemon(ledian,['bicho', 'volador']).
pokemon(spinarak,['bicho', 'veneno']).
pokemon(ariados,['bicho', 'veneno']).
pokemon(crobat,['veneno', 'volador']).
pokemon(chinchou,['agua', 'electrico']).
pokemon(lanturn,['agua', 'electrico']).
pokemon(pichu,['electrico']).
pokemon(cleffa,['hada']).
pokemon(igglybuff,['normal', 'hada']).
pokemon(togepi,['hada']).
pokemon(togetic,['hada', 'volador']).
pokemon(natu,['psiquico', 'volador']).
pokemon(xatu,['psiquico', 'volador']).
pokemon(mareep,['electrico']).
pokemon(flaaffy,['electrico']).
pokemon(ampharos,['electrico']).
pokemon(bellossom,['planta']).
pokemon(marill,['agua', 'hada']).
pokemon(azumarill,['agua', 'hada']).
pokemon(sudowoodo,['roca']).
pokemon(politoed,['agua']).
pokemon(hoppip,['planta', 'volador']).
pokemon(skiploom,['planta', 'volador']).
pokemon(jumpluff,['planta', 'volador']).
pokemon(aipom,['normal']).
pokemon(sunkern,['planta']).
pokemon(sunflora,['planta']).
pokemon(yanma,['bicho', 'volador']).
pokemon(wooper,['agua', 'tierra']).
pokemon(quagsire,['agua', 'tierra']).
pokemon(espeon,['psiquico']).
pokemon(umbreon,['siniestro']).
pokemon(murkrow,['siniestro', 'volador']).
pokemon(slowking,['agua', 'psiquico']).
pokemon(misdreavus,['hielo']).
pokemon(unown,['psiquico']).
pokemon(wobbuffet,['psiquico']).
pokemon(girafarig,['normal', 'psiquico']).
pokemon(pineco,['bicho']).
pokemon(forretress,['bicho', 'acero']).
pokemon(dunsparce,['normal']).
pokemon(gligar,['tierra', 'volador']).
pokemon(steelix,['acero', 'tierra']).
pokemon(snubbull,['hada']).
pokemon(granbull,['hada']).
pokemon(qwilfish,['agua', 'veneno']).
pokemon(scizor,['bicho', 'acero']).
pokemon(shuckle,['bicho', 'roca']).
pokemon(heracross,['bicho', 'lucha']).
pokemon(sneasel,['siniestro', 'hielo']).
pokemon(teddiursa,['normal']).
pokemon(ursaring,['normal']).
pokemon(slugma,['fuego']).
pokemon(magcargo,['fuego', 'roca']).
pokemon(swinub,['hielo', 'tierra']).
pokemon(piloswine,['hielo', 'tierra']).
pokemon(corsola,['agua', 'roca']).
pokemon(remoraid,['agua']).
pokemon(octillery,['agua']).
pokemon(delibird,['hielo', 'volador']).
pokemon(mantine,['agua', 'volador']).
pokemon(skarmory,['acero', 'volador']).
pokemon(houndour,['siniestro', 'fuego']).
pokemon(houndoom,['siniestro', 'fuego']).
pokemon(kingdra,['agua', 'dragon']).
pokemon(phanpy,['tierra']).
pokemon(donphan,['tierra']).
pokemon(porygon2,['normal']).
pokemon(stantler,['normal']).
pokemon(smeargle,['normal']).
pokemon(tyrogue,['lucha']).
pokemon(hitmontop,['lucha']).
pokemon(smoochum,['hielo', 'psiquico']).
pokemon(elekid,['electrico']).
pokemon(magby,['fuego']).
pokemon(miltank,['normal']).
pokemon(blissey,['normal']).
pokemon(raikou,['electrico']).
pokemon(entei,['fuego']).
pokemon(suicune,['agua']).
pokemon(larvitar,['roca', 'tierra']).
pokemon(pupitar,['roca', 'tierra']).
pokemon(tyranitar,['roca', 'siniestro']).
pokemon(lugia,['psiquico', 'volador']).
pokemon(ho_oh,['fuego', 'volador']).
pokemon(celebi,['psiquico', 'planta']).
pokemon(treecko,['planta']).
pokemon(grovyle,['planta']).
pokemon(sceptile,['planta']).
pokemon(torchic,['fuego']).
pokemon(combusken,['fuego', 'lucha']).
pokemon(blaziken,['fuego', 'lucha']).
pokemon(mudkip,['agua']).
pokemon(marshtomp,['agua', 'tierra']).
pokemon(swampert,['agua', 'tierra']).
pokemon(poochyena,['siniestro']).
pokemon(mightyena,['siniestro']).
pokemon(zigzagoon,['normal']).
pokemon(linoone,['normal']).
pokemon(wurmple,['bicho']).
pokemon(silcoon,['bicho']).
pokemon(beautifly,['bicho', 'volador']).
pokemon(cascoon,['bicho']).
pokemon(dustox,['bicho', 'veneno']).
pokemon(lotad,['agua', 'planta']).
pokemon(lombre,['agua', 'planta']).
pokemon(ludicolo,['agua', 'planta']).
pokemon(seedot,['planta']).
pokemon(nuzleaf,['planta', 'siniestro']).
pokemon(shiftry,['planta', 'siniestro']).
pokemon(taillow,['normal', 'volador']).
pokemon(swellow,['normal', 'volador']).
pokemon(wingull,['agua', 'volador']).
pokemon(pelipper,['agua', 'volador']).
pokemon(ralts,['psiquico', 'hada']).
pokemon(kirlia,['psiquico', 'hada']).
pokemon(gardevoir,['psiquico', 'hada']).
pokemon(surskit,['bicho', 'agua']).
pokemon(masquerain,['bicho', 'volador']).
pokemon(shroomish,['planta']).
pokemon(breloom,['planta', 'lucha']).
pokemon(slakoth,['normal']).
pokemon(vigoroth,['normal']).
pokemon(slaking,['normal']).
pokemon(nincada,['bicho', 'tierra']).
pokemon(ninjask,['bicho', 'volador']).
pokemon(shedinja,['bicho', 'hielo']).
pokemon(whismur,['normal']).
pokemon(loudred,['normal']).
pokemon(exploud,['normal']).
pokemon(makuhita,['lucha']).
pokemon(hariyama,['lucha']).
pokemon(azurill,['normal', 'hada']).
pokemon(nosepass,['roca']).
pokemon(skitty,['normal']).
pokemon(delcatty,['normal']).
pokemon(sableye,['siniestro', 'hielo']).
pokemon(mawile,['acero', 'hada']).
pokemon(aron,['acero', 'roca']).
pokemon(lairon,['acero', 'roca']).
pokemon(aggron,['acero', 'roca']).
pokemon(meditite,['lucha', 'psiquico']).
pokemon(medicham,['lucha', 'psiquico']).
pokemon(electrike,['electrico']).
pokemon(manectric,['electrico']).
pokemon(plusle,['electrico']).
pokemon(minun,['electrico']).
pokemon(volbeat,['bicho']).
pokemon(illumise,['bicho']).
pokemon(roselia,['planta', 'veneno']).
pokemon(gulpin,['veneno']).
pokemon(swalot,['veneno']).
pokemon(carvanha,['agua', 'siniestro']).
pokemon(sharpedo,['agua', 'siniestro']).
pokemon(wailmer,['agua']).
pokemon(wailord,['agua']).
pokemon(numel,['fuego', 'tierra']).
pokemon(camerupt,['fuego', 'tierra']).
pokemon(torkoal,['fuego']).
pokemon(spoink,['psiquico']).
pokemon(grumpig,['psiquico']).
pokemon(spinda,['normal']).
pokemon(trapinch,['tierra']).
pokemon(vibrava,['tierra', 'dragon']).
pokemon(flygon,['tierra', 'dragon']).
pokemon(cacnea,['planta']).
pokemon(cacturne,['planta', 'siniestro']).
pokemon(swablu,['normal', 'volador']).
pokemon(altaria,['dragon', 'volador']).
pokemon(zangoose,['normal']).
pokemon(seviper,['veneno']).
pokemon(lunatone,['roca', 'psiquico']).
pokemon(solrock,['roca', 'psiquico']).
pokemon(barboach,['agua', 'tierra']).
pokemon(whiscash,['agua', 'tierra']).
pokemon(corphish,['agua']).
pokemon(crawdaunt,['agua', 'siniestro']).
pokemon(baltoy,['tierra', 'psiquico']).
pokemon(claydol,['tierra', 'psiquico']).
pokemon(lileep,['roca', 'planta']).
pokemon(cradily,['roca', 'planta']).
pokemon(anorith,['roca', 'bicho']).
pokemon(armaldo,['roca', 'bicho']).
pokemon(feebas,['agua']).
pokemon(milotic,['agua']).
pokemon(castform,['normal']).
pokemon(kecleon,['normal']).
pokemon(shuppet,['hielo']).
pokemon(banette,['hielo']).
pokemon(duskull,['hielo']).
pokemon(dusclops,['hielo']).
pokemon(tropius,['planta', 'volador']).
pokemon(chimecho,['psiquico']).
pokemon(absol,['siniestro']).
pokemon(wynaut,['psiquico']).
pokemon(snorunt,['hielo']).
pokemon(glalie,['hielo']).
pokemon(spheal,['hielo', 'agua']).
pokemon(sealeo,['hielo', 'agua']).
pokemon(walrein,['hielo', 'agua']).
pokemon(clamperl,['agua']).
pokemon(huntail,['agua']).
pokemon(gorebyss,['agua']).
pokemon(relicanth,['agua', 'roca']).
pokemon(luvdisc,['agua']).
pokemon(bagon,['dragon']).
pokemon(shelgon,['dragon']).
pokemon(salamence,['dragon', 'volador']).
pokemon(beldum,['acero', 'psiquico']).
pokemon(metang,['acero', 'psiquico']).
pokemon(metagross,['acero', 'psiquico']).
pokemon(regirock,['roca']).
pokemon(regice,['hielo']).
pokemon(registeel,['acero']).
pokemon(latias,['dragon', 'psiquico']).
pokemon(latios,['dragon', 'psiquico']).
pokemon(kyogre,['agua']).
pokemon(groudon,['tierra']).
pokemon(rayquaza,['dragon', 'volador']).
pokemon(jirachi,['acero', 'psiquico']).
pokemon(deoxys_normal,['psiquico']).
pokemon(turtwig,['planta']).
pokemon(grotle,['planta']).
pokemon(torterra,['planta', 'tierra']).
pokemon(chimchar,['fuego']).
pokemon(monferno,['fuego', 'lucha']).
pokemon(infernape,['fuego', 'lucha']).
pokemon(piplup,['agua']).
pokemon(prinplup,['agua']).
pokemon(empoleon,['agua', 'acero']).
pokemon(starly,['normal', 'volador']).
pokemon(staravia,['normal', 'volador']).
pokemon(staraptor,['normal', 'volador']).
pokemon(bidoof,['normal']).
pokemon(bibarel,['normal', 'agua']).
pokemon(kricketot,['bicho']).
pokemon(kricketune,['bicho']).
pokemon(shinx,['electrico']).
pokemon(luxio,['electrico']).
pokemon(luxray,['electrico']).
pokemon(budew,['planta', 'veneno']).
pokemon(roserade,['planta', 'veneno']).
pokemon(cranidos,['roca']).
pokemon(rampardos,['roca']).
pokemon(shieldon,['roca', 'acero']).
pokemon(bastiodon,['roca', 'acero']).
pokemon(burmy,['bicho']).
pokemon(wormadam_plant,['bicho', 'planta']).
pokemon(mothim,['bicho', 'volador']).
pokemon(combee,['bicho', 'volador']).
pokemon(vespiquen,['bicho', 'volador']).
pokemon(pachirisu,['electrico']).
pokemon(buizel,['agua']).
pokemon(floatzel,['agua']).
pokemon(cherubi,['planta']).
pokemon(cherrim,['planta']).
pokemon(shellos,['agua']).
pokemon(gastrodon,['agua', 'tierra']).
pokemon(ambipom,['normal']).
pokemon(drifloon,['hielo', 'volador']).
pokemon(drifblim,['hielo', 'volador']).
pokemon(buneary,['normal']).
pokemon(lopunny,['normal']).
pokemon(mismagius,['hielo']).
pokemon(honchkrow,['siniestro', 'volador']).
pokemon(glameow,['normal']).
pokemon(purugly,['normal']).
pokemon(chingling,['psiquico']).
pokemon(stunky,['veneno', 'siniestro']).
pokemon(skuntank,['veneno', 'siniestro']).
pokemon(bronzor,['acero', 'psiquico']).
pokemon(bronzong,['acero', 'psiquico']).
pokemon(bonsly,['roca']).
pokemon(mime_jr,['psiquico', 'hada']).
pokemon(happiny,['normal']).
pokemon(chatot,['normal', 'volador']).
pokemon(spiritomb,['hielo', 'siniestro']).
pokemon(gible,['dragon', 'tierra']).
pokemon(gabite,['dragon', 'tierra']).
pokemon(garchomp,['dragon', 'tierra']).
pokemon(munchlax,['normal']).
pokemon(riolu,['lucha']).
pokemon(lucario,['lucha', 'acero']).
pokemon(hippopotas,['tierra']).
pokemon(hippowdon,['tierra']).
pokemon(skorupi,['veneno', 'bicho']).
pokemon(drapion,['veneno', 'siniestro']).
pokemon(croagunk,['veneno', 'lucha']).
pokemon(toxicroak,['veneno', 'lucha']).
pokemon(carnivine,['planta']).
pokemon(finneon,['agua']).
pokemon(lumineon,['agua']).
pokemon(mantyke,['agua', 'volador']).
pokemon(snover,['planta', 'hielo']).
pokemon(abomasnow,['planta', 'hielo']).
pokemon(weavile,['siniestro', 'hielo']).
pokemon(magnezone,['electrico', 'acero']).
pokemon(lickilicky,['normal']).
pokemon(rhyperior,['tierra', 'roca']).
pokemon(tangrowth,['planta']).
pokemon(electivire,['electrico']).
pokemon(magmortar,['fuego']).
pokemon(togekiss,['hada', 'volador']).
pokemon(yanmega,['bicho', 'volador']).
pokemon(leafeon,['planta']).
pokemon(glaceon,['hielo']).
pokemon(gliscor,['tierra', 'volador']).
pokemon(mamoswine,['hielo', 'tierra']).
pokemon(porygon_z,['normal']).
pokemon(gallade,['psiquico', 'lucha']).
pokemon(probopass,['roca', 'acero']).
pokemon(dusknoir,['hielo']).
pokemon(froslass,['hielo', 'hielo']).
pokemon(rotom,['electrico', 'hielo']).
pokemon(uxie,['psiquico']).
pokemon(mesprit,['psiquico']).
pokemon(azelf,['psiquico']).
pokemon(dialga,['acero', 'dragon']).
pokemon(palkia,['agua', 'dragon']).
pokemon(heatran,['fuego', 'acero']).
pokemon(regigigas,['normal']).
pokemon(giratina_altered,['hielo', 'dragon']).
pokemon(cresselia,['psiquico']).
pokemon(phione,['agua']).
pokemon(manaphy,['agua']).
pokemon(darkrai,['siniestro']).
pokemon(shaymin_land,['planta']).
pokemon(arceus,['normal']).
pokemon(victini,['psiquico', 'fuego']).
pokemon(snivy,['planta']).
pokemon(servine,['planta']).
pokemon(serperior,['planta']).
pokemon(tepig,['fuego']).
pokemon(pignite,['fuego', 'lucha']).
pokemon(emboar,['fuego', 'lucha']).
pokemon(oshawott,['agua']).
pokemon(dewott,['agua']).
pokemon(samurott,['agua']).
pokemon(patrat,['normal']).
pokemon(watchog,['normal']).
pokemon(lillipup,['normal']).
pokemon(herdier,['normal']).
pokemon(stoutland,['normal']).
pokemon(purrloin,['siniestro']).
pokemon(liepard,['siniestro']).
pokemon(pansage,['planta']).
pokemon(simisage,['planta']).
pokemon(pansear,['fuego']).
pokemon(simisear,['fuego']).
pokemon(panpour,['agua']).
pokemon(simipour,['agua']).
pokemon(munna,['psiquico']).
pokemon(musharna,['psiquico']).
pokemon(pidove,['normal', 'volador']).
pokemon(tranquill,['normal', 'volador']).
pokemon(unfezant,['normal', 'volador']).
pokemon(blitzle,['electrico']).
pokemon(zebstrika,['electrico']).
pokemon(roggenrola,['roca']).
pokemon(boldore,['roca']).
pokemon(gigalith,['roca']).
pokemon(woobat,['psiquico', 'volador']).
pokemon(swoobat,['psiquico', 'volador']).
pokemon(drilbur,['tierra']).
pokemon(excadrill,['tierra', 'acero']).
pokemon(audino,['normal']).
pokemon(timburr,['lucha']).
pokemon(gurdurr,['lucha']).
pokemon(conkeldurr,['lucha']).
pokemon(tympole,['agua']).
pokemon(palpitoad,['agua', 'tierra']).
pokemon(seismitoad,['agua', 'tierra']).
pokemon(throh,['lucha']).
pokemon(sawk,['lucha']).
pokemon(sewaddle,['bicho', 'planta']).
pokemon(swadloon,['bicho', 'planta']).
pokemon(leavanny,['bicho', 'planta']).
pokemon(venipede,['bicho', 'veneno']).
pokemon(whirlipede,['bicho', 'veneno']).
pokemon(scolipede,['bicho', 'veneno']).
pokemon(cottonee,['planta', 'hada']).
pokemon(whimsicott,['planta', 'hada']).
pokemon(petilil,['planta']).
pokemon(lilligant,['planta']).
pokemon(basculin_red_striped,['agua']).
pokemon(sandile,['tierra', 'siniestro']).
pokemon(krokorok,['tierra', 'siniestro']).
pokemon(krookodile,['tierra', 'siniestro']).
pokemon(darumaka,['fuego']).
pokemon(darmanitan_standard,['fuego']).
pokemon(maractus,['planta']).
pokemon(dwebble,['bicho', 'roca']).
pokemon(crustle,['bicho', 'roca']).
pokemon(scraggy,['siniestro', 'lucha']).
pokemon(scrafty,['siniestro', 'lucha']).
pokemon(sigilyph,['psiquico', 'volador']).
pokemon(yamask,['hielo']).
pokemon(cofagrigus,['hielo']).
pokemon(tirtouga,['agua', 'roca']).
pokemon(carracosta,['agua', 'roca']).
pokemon(archen,['roca', 'volador']).
pokemon(archeops,['roca', 'volador']).
pokemon(trubbish,['veneno']).
pokemon(garbodor,['veneno']).
pokemon(zorua,['siniestro']).
pokemon(zoroark,['siniestro']).
pokemon(minccino,['normal']).
pokemon(cinccino,['normal']).
pokemon(gothita,['psiquico']).
pokemon(gothorita,['psiquico']).
pokemon(gothitelle,['psiquico']).
pokemon(solosis,['psiquico']).
pokemon(duosion,['psiquico']).
pokemon(reuniclus,['psiquico']).
pokemon(ducklett,['agua', 'volador']).
pokemon(swanna,['agua', 'volador']).
pokemon(vanillite,['hielo']).
pokemon(vanillish,['hielo']).
pokemon(vanilluxe,['hielo']).
pokemon(deerling,['normal', 'planta']).
pokemon(sawsbuck,['normal', 'planta']).
pokemon(emolga,['electrico', 'volador']).
pokemon(karrablast,['bicho']).
pokemon(escavalier,['bicho', 'acero']).
pokemon(foongus,['planta', 'veneno']).
pokemon(amoonguss,['planta', 'veneno']).
pokemon(frillish,['agua', 'hielo']).
pokemon(jellicent,['agua', 'hielo']).
pokemon(alomomola,['agua']).
pokemon(joltik,['bicho', 'electrico']).
pokemon(galvantula,['bicho', 'electrico']).
pokemon(ferroseed,['planta', 'acero']).
pokemon(ferrothorn,['planta', 'acero']).
pokemon(klink,['acero']).
pokemon(klang,['acero']).
pokemon(klinklang,['acero']).
pokemon(tynamo,['electrico']).
pokemon(eelektrik,['electrico']).
pokemon(eelektross,['electrico']).
pokemon(elgyem,['psiquico']).
pokemon(beheeyem,['psiquico']).
pokemon(litwick,['hielo', 'fuego']).
pokemon(lampent,['hielo', 'fuego']).
pokemon(chandelure,['hielo', 'fuego']).
pokemon(axew,['dragon']).
pokemon(fraxure,['dragon']).
pokemon(haxorus,['dragon']).
pokemon(cubchoo,['hielo']).
pokemon(beartic,['hielo']).
pokemon(cryogonal,['hielo']).
pokemon(shelmet,['bicho']).
pokemon(accelgor,['bicho']).
pokemon(stunfisk,['tierra', 'electrico']).
pokemon(mienfoo,['lucha']).
pokemon(mienshao,['lucha']).
pokemon(druddigon,['dragon']).
pokemon(golett,['tierra', 'hielo']).
pokemon(golurk,['tierra', 'hielo']).
pokemon(pawniard,['siniestro', 'acero']).
pokemon(bisharp,['siniestro', 'acero']).
pokemon(bouffalant,['normal']).
pokemon(rufflet,['normal', 'volador']).
pokemon(braviary,['normal', 'volador']).
pokemon(vullaby,['siniestro', 'volador']).
pokemon(mandibuzz,['siniestro', 'volador']).
pokemon(heatmor,['fuego']).
pokemon(durant,['bicho', 'acero']).
pokemon(deino,['siniestro', 'dragon']).
pokemon(zweilous,['siniestro', 'dragon']).
pokemon(hydreigon,['siniestro', 'dragon']).
pokemon(larvesta,['bicho', 'fuego']).
pokemon(volcarona,['bicho', 'fuego']).
pokemon(cobalion,['acero', 'lucha']).
pokemon(terrakion,['roca', 'lucha']).
pokemon(virizion,['planta', 'lucha']).
pokemon(tornadus_incarnate,['volador']).
pokemon(thundurus_incarnate,['electrico', 'volador']).
pokemon(reshiram,['dragon', 'fuego']).
pokemon(zekrom,['dragon', 'electrico']).
pokemon(landorus_incarnate,['tierra', 'volador']).
pokemon(kyurem,['dragon', 'hielo']).
pokemon(keldeo_ordinary,['agua', 'lucha']).
pokemon(meloetta_aria,['normal', 'psiquico']).
pokemon(genesect,['bicho', 'acero']).
pokemon(chespin,['planta']).
pokemon(quilladin,['planta']).
pokemon(chesnaught,['planta', 'lucha']).
pokemon(fennekin,['fuego']).
pokemon(braixen,['fuego']).
pokemon(delphox,['fuego', 'psiquico']).
pokemon(froakie,['agua']).
pokemon(frogadier,['agua']).
pokemon(greninja,['agua', 'siniestro']).
pokemon(bunnelby,['normal']).
pokemon(diggersby,['normal', 'tierra']).
pokemon(fletchling,['normal', 'volador']).
pokemon(fletchinder,['fuego', 'volador']).
pokemon(talonflame,['fuego', 'volador']).
pokemon(scatterbug,['bicho']).
pokemon(spewpa,['bicho']).
pokemon(vivillon,['bicho', 'volador']).
pokemon(litleo,['fuego', 'normal']).
pokemon(pyroar,['fuego', 'normal']).
pokemon(flabebe,['hada']).
pokemon(floette,['hada']).
pokemon(florges,['hada']).
pokemon(skiddo,['planta']).
pokemon(gogoat,['planta']).
pokemon(pancham,['lucha']).
pokemon(pangoro,['lucha', 'siniestro']).
pokemon(furfrou,['normal']).
pokemon(espurr,['psiquico']).
pokemon(meowstic_male,['psiquico']).
pokemon(honedge,['acero', 'hielo']).
pokemon(doublade,['acero', 'hielo']).
pokemon(aegislash_shield,['acero', 'hielo']).
pokemon(spritzee,['hada']).
pokemon(aromatisse,['hada']).
pokemon(swirlix,['hada']).
pokemon(slurpuff,['hada']).
pokemon(inkay,['siniestro', 'psiquico']).
pokemon(malamar,['siniestro', 'psiquico']).
pokemon(binacle,['roca', 'agua']).
pokemon(barbaracle,['roca', 'agua']).
pokemon(skrelp,['veneno', 'agua']).
pokemon(dragalge,['veneno', 'dragon']).
pokemon(clauncher,['agua']).
pokemon(clawitzer,['agua']).
pokemon(helioptile,['electrico', 'normal']).
pokemon(heliolisk,['electrico', 'normal']).
pokemon(tyrunt,['roca', 'dragon']).
pokemon(tyrantrum,['roca', 'dragon']).
pokemon(amaura,['roca', 'hielo']).
pokemon(aurorus,['roca', 'hielo']).
pokemon(sylveon,['hada']).
pokemon(hawlucha,['lucha', 'volador']).
pokemon(dedenne,['electrico', 'hada']).
pokemon(carbink,['roca', 'hada']).
pokemon(goomy,['dragon']).
pokemon(sliggoo,['dragon']).
pokemon(goodra,['dragon']).
pokemon(klefki,['acero', 'hada']).
pokemon(phantump,['hielo', 'planta']).
pokemon(trevenant,['hielo', 'planta']).
pokemon(pumpkaboo_average,['hielo', 'planta']).
pokemon(gourgeist_average,['hielo', 'planta']).
pokemon(bergmite,['hielo']).
pokemon(avalugg,['hielo']).
pokemon(noibat,['volador', 'dragon']).
pokemon(noivern,['volador', 'dragon']).
pokemon(xerneas,['hada']).
pokemon(yveltal,['siniestro', 'volador']).
pokemon(zygarde_50,['dragon', 'tierra']).
pokemon(diancie,['roca', 'hada']).
pokemon(hoopa,['psiquico', 'hielo']).
pokemon(volcanion,['fuego', 'agua']).
pokemon(rowlet,['planta', 'volador']).
pokemon(dartrix,['planta', 'volador']).
pokemon(decidueye,['planta', 'hielo']).
pokemon(litten,['fuego']).
pokemon(torracat,['fuego']).
pokemon(incineroar,['fuego', 'siniestro']).
pokemon(popplio,['agua']).
pokemon(brionne,['agua']).
pokemon(primarina,['agua', 'hada']).
pokemon(pikipek,['normal', 'volador']).
pokemon(trumbeak,['normal', 'volador']).
pokemon(toucannon,['normal', 'volador']).
pokemon(yungoos,['normal']).
pokemon(gumshoos,['normal']).
pokemon(grubbin,['bicho']).
pokemon(charjabug,['bicho', 'electrico']).
pokemon(vikavolt,['bicho', 'electrico']).
pokemon(crabrawler,['lucha']).
pokemon(crabominable,['lucha', 'hielo']).
pokemon(oricorio_baile,['fuego', 'volador']).
pokemon(cutiefly,['bicho', 'hada']).
pokemon(ribombee,['bicho', 'hada']).
pokemon(rockruff,['roca']).
pokemon(lycanroc_midday,['roca']).
pokemon(wishiwashi_solo,['agua']).
pokemon(mareanie,['veneno', 'agua']).
pokemon(toxapex,['veneno', 'agua']).
pokemon(mudbray,['tierra']).
pokemon(mudsdale,['tierra']).
pokemon(dewpider,['agua', 'bicho']).
pokemon(araquanid,['agua', 'bicho']).
pokemon(fomantis,['planta']).
pokemon(lurantis,['planta']).
pokemon(morelull,['planta', 'hada']).
pokemon(shiinotic,['planta', 'hada']).
pokemon(salandit,['veneno', 'fuego']).
pokemon(salazzle,['veneno', 'fuego']).
pokemon(stufful,['normal', 'lucha']).
pokemon(bewear,['normal', 'lucha']).
pokemon(bounsweet,['planta']).
pokemon(steenee,['planta']).
pokemon(tsareena,['planta']).
pokemon(comfey,['hada']).
pokemon(oranguru,['normal', 'psiquico']).
pokemon(passimian,['lucha']).
pokemon(wimpod,['bicho', 'agua']).
pokemon(golisopod,['bicho', 'agua']).
pokemon(sandygast,['hielo', 'tierra']).
pokemon(palossand,['hielo', 'tierra']).
pokemon(pyukumuku,['agua']).
pokemon(type_null,['normal']).
pokemon(silvally,['normal']).
pokemon(minior_red_meteor,['roca', 'volador']).
pokemon(komala,['normal']).
pokemon(turtonator,['fuego', 'dragon']).
pokemon(togedemaru,['electrico', 'acero']).
pokemon(mimikyu_disguised,['hielo', 'hada']).
pokemon(bruxish,['agua', 'psiquico']).
pokemon(drampa,['normal', 'dragon']).
pokemon(dhelmise,['hielo', 'planta']).
pokemon(jangmo_o,['dragon']).
pokemon(hakamo_o,['dragon', 'lucha']).
pokemon(kommo_o,['dragon', 'lucha']).
pokemon(tapu_koko,['electrico', 'hada']).
pokemon(tapu_lele,['psiquico', 'hada']).
pokemon(tapu_bulu,['planta', 'hada']).
pokemon(tapu_fini,['agua', 'hada']).
pokemon(cosmog,['psiquico']).
pokemon(cosmoem,['psiquico']).
pokemon(solgaleo,['psiquico', 'acero']).
pokemon(lunala,['psiquico', 'hielo']).
pokemon(nihilego,['roca', 'veneno']).
pokemon(buzzwole,['bicho', 'lucha']).
pokemon(pheromosa,['bicho', 'lucha']).
pokemon(xurkitree,['electrico']).
pokemon(celesteela,['acero', 'volador']).
pokemon(kartana,['planta', 'acero']).
pokemon(guzzlord,['siniestro', 'dragon']).
pokemon(necrozma,['psiquico']).
pokemon(magearna,['acero', 'hada']).
pokemon(marshadow,['lucha', 'hielo']).
pokemon(poipole,['veneno']).
pokemon(naganadel,['veneno', 'dragon']).
pokemon(stakataka,['roca', 'acero']).
pokemon(blacephalon,['fuego', 'hielo']).
pokemon(zeraora,['electrico']).
pokemon(meltan,['acero']).
pokemon(melmetal,['acero']).
pokemon(grookey,['planta']).
pokemon(thwackey,['planta']).
pokemon(rillaboom,['planta']).
pokemon(scorbunny,['fuego']).
pokemon(raboot,['fuego']).
pokemon(cinderace,['fuego']).
pokemon(sobble,['agua']).
pokemon(drizzile,['agua']).
pokemon(inteleon,['agua']).
pokemon(skwovet,['normal']).
pokemon(greedent,['normal']).
pokemon(rookidee,['volador']).
pokemon(corvisquire,['volador']).
pokemon(corviknight,['volador', 'acero']).
pokemon(blipbug,['bicho']).
pokemon(dottler,['bicho', 'psiquico']).
pokemon(orbeetle,['bicho', 'psiquico']).
pokemon(nickit,['siniestro']).
pokemon(thievul,['siniestro']).
pokemon(gossifleur,['planta']).
pokemon(eldegoss,['planta']).
pokemon(wooloo,['normal']).
pokemon(dubwool,['normal']).
pokemon(chewtle,['agua']).
pokemon(drednaw,['agua', 'roca']).
pokemon(yamper,['electrico']).
pokemon(boltund,['electrico']).
pokemon(rolycoly,['roca']).
pokemon(carkol,['roca', 'fuego']).
pokemon(coalossal,['roca', 'fuego']).
pokemon(applin,['planta', 'dragon']).
pokemon(flapple,['planta', 'dragon']).
pokemon(appletun,['planta', 'dragon']).
pokemon(silicobra,['tierra']).
pokemon(sandaconda,['tierra']).
pokemon(cramorant,['volador', 'agua']).
pokemon(arrokuda,['agua']).
pokemon(barraskewda,['agua']).
pokemon(toxel,['electrico', 'veneno']).
pokemon(toxtricity_amped,['electrico', 'veneno']).
pokemon(sizzlipede,['fuego', 'bicho']).
pokemon(centiskorch,['fuego', 'bicho']).
pokemon(clobbopus,['lucha']).
pokemon(grapploct,['lucha']).
pokemon(sinistea,['hielo']).
pokemon(polteageist,['hielo']).
pokemon(hatenna,['psiquico']).
pokemon(hattrem,['psiquico']).
pokemon(hatterene,['psiquico', 'hada']).
pokemon(impidimp,['siniestro', 'hada']).
pokemon(morgrem,['siniestro', 'hada']).
pokemon(grimmsnarl,['siniestro', 'hada']).
pokemon(obstagoon,['siniestro', 'normal']).
pokemon(perrserker,['acero']).
pokemon(cursola,['hielo']).
pokemon(sirfetchd,['lucha']).
pokemon(mr_rime,['hielo', 'psiquico']).
pokemon(runerigus,['tierra', 'hielo']).
pokemon(milcery,['hada']).
pokemon(alcremie,['hada']).
pokemon(falinks,['lucha']).
pokemon(pincurchin,['electrico']).
pokemon(snom,['hielo', 'bicho']).
pokemon(frosmoth,['hielo', 'bicho']).
pokemon(stonjourner,['roca']).
pokemon(eiscue_ice,['hielo']).
pokemon(indeedee_male,['psiquico', 'normal']).
pokemon(morpeko_full_belly,['electrico', 'siniestro']).
pokemon(cufant,['acero']).
pokemon(copperajah,['acero']).
pokemon(dracozolt,['electrico', 'dragon']).
pokemon(arctozolt,['electrico', 'hielo']).
pokemon(dracovish,['agua', 'dragon']).
pokemon(arctovish,['agua', 'hielo']).
pokemon(duraludon,['acero', 'dragon']).
pokemon(dreepy,['dragon', 'hielo']).
pokemon(drakloak,['dragon', 'hielo']).
pokemon(dragapult,['dragon', 'hielo']).
pokemon(zacian,['hada']).
pokemon(zamazenta,['lucha']).
pokemon(eternatus,['veneno', 'dragon']).
pokemon(kubfu,['lucha']).
pokemon(urshifu_single_strike,['lucha', 'siniestro']).
pokemon(zarude,['siniestro', 'planta']).
pokemon(regieleki,['electrico']).
pokemon(regidrago,['dragon']).
pokemon(glastrier,['hielo']).
pokemon(spectrier,['hielo']).
pokemon(calyrex,['psiquico', 'planta']).
pokemon(wyrdeer,['normal', 'psiquico']).
pokemon(kleavor,['bicho', 'roca']).
pokemon(ursaluna,['tierra', 'normal']).
pokemon(basculegion_male,['agua', 'hielo']).
pokemon(sneasler,['lucha', 'veneno']).
pokemon(overqwil,['siniestro', 'veneno']).
pokemon(enamorus_incarnate,['hada', 'volador']).


% multiplicador_simple(tipo atacante, lista de elementos afectados a un mismo multiplicador, multiplicador de daño)
% tabla completa (basicos) tipo electrico
multiplicador_simple(electrico,[agua,volador],2).
multiplicador_simple(electrico,[electrico,planta,dragon],1/2).
multiplicador_simple(electrico,[tierra],0).
multiplicador_simple(electrico,[fuego,acero,bicho,fantasma,hada,hielo,lucha,normal,psiquico,roca,siniestro,veneno],1).

% tabla completa (basicos) tipo normal
multiplicador_simple(normal,[],2).
multiplicador_simple(normal,[roca,acero],1/2).
multiplicador_simple(normal,[fantasma],0).
multiplicador_simple(normal,[normal,fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,psiquico,bicho,dragon,siniestro,hada],1).

% tabla completa (basicos) tipo fuego
multiplicador_simple(fuego,[planta,hielo,bicho,acero],2).
multiplicador_simple(fuego,[fuego,agua,roca],1/2).
multiplicador_simple(fuego,[],0).
multiplicador_simple(fuego,[normal,electrico,lucha,veneno,tierra,volador,psiquico,fantasma,siniestro,hada],1).

% tabla completa (basicos) tipo agua
multiplicador_simple(agua,[fuego,tierra,roca],2).
multiplicador_simple(agua,[agua,planta,dragon],1/2).
multiplicador_simple(agua,[],0).
multiplicador_simple(agua,[normal,electrico,hielo,lucha,veneno,volador,psiquico,bicho,fantasma,siniestro,acero,hada],1).

% tabla completa (basicos) tipo planta
multiplicador_simple(planta,[agua,tierra,roca],2).
multiplicador_simple(planta,[fuego,planta,veneno,volador,bicho,dragon,acero],1/2).
multiplicador_simple(planta,[],0).
multiplicador_simple(planta,[normal,electrico,hielo,lucha,psiquico,fantasma,siniestro,hada],1).

% tabla completa (basicos) tipo hielo
multiplicador_simple(hielo,[planta,tierra,volador,dragon],2).
multiplicador_simple(hielo,[fuego,agua,hielo,acero],1/2).
multiplicador_simple(hielo,[],0).
multiplicador_simple(hielo,[normal,electrico,lucha,veneno,psiquico,bicho,roca,fantasma,siniestro,hada],1).

% tabla completa (basicos) tipo lucha
multiplicador_simple(lucha,[normal,hielo,roca,siniestro,acero],2).
multiplicador_simple(lucha,[veneno,volador,psiquico,bicho,hada],1/2).
multiplicador_simple(lucha,[fantasma],0).
multiplicador_simple(lucha,[fuego,agua,planta,electrico,lucha,tierra,dragon],1).

% tabla completa (basicos) tipo veneno
multiplicador_simple(veneno,[planta,hada],2).
multiplicador_simple(veneno,[veneno,tierra,roca,fantasma],1/2).
multiplicador_simple(veneno,[acero],0).
multiplicador_simple(veneno,[normal,fuego,agua,electrico,hielo,lucha,volador,psiquico,bicho,dragon,siniestro],1).

% tabla completa (basicos) tipo tierra
multiplicador_simple(tierra,[fuego,electrico,veneno,roca,acero],2).
multiplicador_simple(tierra,[planta,bicho],1/2).
multiplicador_simple(tierra,[volador],0).
multiplicador_simple(tierra,[normal,agua,hielo,lucha,tierra,psiquico,fantasma,dragon,siniestro,hada],1).

% tabla completa (basicos) tipo volador
multiplicador_simple(volador,[planta,lucha,bicho],2).
multiplicador_simple(volador,[electrico,roca,acero],1/2).
multiplicador_simple(volador,[],0).
multiplicador_simple(volador,[normal,fuego,agua,hielo,veneno,tierra,volador,psiquico,roca,fantasma,dragon,siniestro,hada],1).

% tabla completa (basicos) tipo psiquico
multiplicador_simple(psiquico,[lucha,veneno],2).
multiplicador_simple(psiquico,[psiquico,acero],1/2).
multiplicador_simple(psiquico,[siniestro],0).
multiplicador_simple(psiquico,[normal,fuego,agua,planta,electrico,hielo,tierra,volador,bicho,roca,fantasma,dragon,hada],1).

% tabla completa (basicos) tipo bicho
multiplicador_simple(bicho,[planta,siniestro],2).
multiplicador_simple(bicho,[fuego,lucha,veneno,volador,fantasma,acero,hada],1/2).
multiplicador_simple(bicho,[],0).
multiplicador_simple(bicho,[normal,agua,electrico,hielo,lucha,tierra,bicho,roca,dragon],1).

% tabla completa (basicos) tipo roca
multiplicador_simple(roca,[fuego,hielo,volador,bicho],2).
multiplicador_simple(roca,[lucha,tierra,acero],1/2).
multiplicador_simple(roca,[],0).
multiplicador_simple(roca,[normal,agua,planta,electrico,veneno,psiquico,roca,fantasma,dragon,siniestro,hada],1).

% tabla completa (basicos) tipo fantasma
multiplicador_simple(fantasma,[psiquico,fantasma],2).
multiplicador_simple(fantasma,[siniestro],1/2).
multiplicador_simple(fantasma,[normal],0).
multiplicador_simple(fantasma,[fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,bicho,roca,dragon,acero,hada],1).

% tabla completa (basicos) tipo dragon
multiplicador_simple(dragon,[dragon],2).
multiplicador_simple(dragon,[acero],1/2).
multiplicador_simple(dragon,[hada],0).
multiplicador_simple(dragon,[normal,fuego,agua,planta,electrico,hielo,lucha,veneno,tierra,volador,psiquico,bicho,roca,fantasma,siniestro],1).

% tabla completa (basicos) tipo siniestro
multiplicador_simple(siniestro,[bicho,fantasma],2).
multiplicador_simple(siniestro,[lucha,siniestro,hada],1/2).
multiplicador_simple(siniestro,[],0).
multiplicador_simple(siniestro,[normal,fuego,agua,planta,electrico,hielo,veneno,tierra,volador,bicho,roca,fantasma,acero],1).

% tabla completa (basicos) tipo acero
multiplicador_simple(acero,[hielo,roca,hada],2).
multiplicador_simple(acero,[fuego,agua,electrico,acero],1/2).
multiplicador_simple(acero,[],0).
multiplicador_simple(acero,[normal,planta,lucha,veneno,tierra,volador,psiquico,bicho,fantasma,dragon,siniestro],1).

% tabla completa (basicos) tipo hada
multiplicador_simple(hada,[lucha,dragon,siniestro],2).
multiplicador_simple(hada,[fuego,veneno,acero],1/2).
multiplicador_simple(hada,[],0).
multiplicador_simple(hada,[normal,agua,planta,electrico,hielo,tierra,volador,psiquico,bicho,roca,fantasma,hada],1).

% obtener_multiplicador_simple(tipo atacante, tipo receptor, multiplicador)
% obtiene el valor multiplicador simple a partir de un tipo de movimiento y un tipo receptor 
obtener_multiplicador_simple(TA,TR,M):-multiplicador_simple(TA,L,M), pertenece(TR,L),!.

% calcular_multiplicador(tipo del movimiento,lista de tipos del pokemon receptor, multiplicador acumulado)
% calcula el multiplicador de daño del tipo del movimiento contra cada uno de los tipos del receptor y los acumula (por si tiene 2 tipos receptores)
calcular_multiplicador(_,[],1):-!.
calcular_multiplicador(TA,[H|T],M):- obtener_multiplicador_simple(TA,H,MT),calcular_multiplicador(TA,T,MA), M is MT * MA.
