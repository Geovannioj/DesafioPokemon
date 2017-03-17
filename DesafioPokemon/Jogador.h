//
//  Jogador.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

@interface Jogador : NSObject{
    NSString * nome;
    NSMutableArray * pokemons;
}

//setters
-(void)setNome:(NSString*)currentNome;
-(void)setPokemon:(Pokemon*)newPokemon;

//getters
-(NSString*)nome;
-(NSMutableArray*)pokemons;

//construtor
+(instancetype)criarJogador:(NSString*)currentNomeJogador comPokemon:(Pokemon*) currentPokemon;

@end
