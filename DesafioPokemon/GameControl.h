//
//  GameControl.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Visao.h"
#import "Pokemon.h"
#import "Ginasio.h"

@interface GameControl : NSObject

-(Jogador *)createPlayerNome: (NSString *)nome;
+(int)escolhaMenu;
+(int)escolhaPokemonLutar:(Jogador *) jogador;
+(NSMutableArray*)inicializaJogo;
+(void)escolhaCacar:(NSMutableArray*)itens comJogador:(Jogador*)currentJogador;
+(void)escolhaLutar:(Jogador*) jogador contraPokemon: (Pokemon*) pokemonInimigo;
+(void)mostrarStatusJogador:(Jogador *)currentJogador;
+(void)escolherConquistarGinasios:(NSMutableArray*)itens comJogador:(Jogador*)currentJogador;
+(void)conquistar:(NSMutableArray*)itens ginasio:(int)opcao comJogador:(Jogador*)currentJogador;

@end
