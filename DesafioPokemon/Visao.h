//
//  Visao.h
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Pokemon.h"
#import "Ginasio.h"

@interface Visao : NSObject

+(Jogador*)criaJogadorInicial;
+(void)menu;
+(void)menuCacando:(Pokemon*)pokemonInimigo;
+(void)excedeNumeroPokemons;
+(void)capturouPokemon;
+(void)naoCapturouPokemon;
<<<<<<< HEAD
+(void)menuLutarJogador:(Jogador*)Jogador;
=======
+(void)menuStatus:(Jogador *)currentJogador;
+(void)fugiu;
+(void)menuGinasios:(NSMutableArray*)itens;
>>>>>>> fc6391585aea5aa68916c4cb086ebb2452f33ed4

@end
