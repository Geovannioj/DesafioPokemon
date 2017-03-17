//
//  Jogador.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

//setters
-(void)setNome:(NSString*)currentNome{
    nome = currentNome;
}
-(void)setPokemon:(Pokemon*)newPokemon{
    pokemons = [[NSMutableArray alloc]init];
    [pokemons addObject:newPokemon];
}

//getters
-(NSString*)nome{
    return nome;
}

-(NSMutableArray*)pokemons{
    return pokemons;
}

//construtores
+(instancetype)criarJogador:(NSString*)currentNomeJogador comPokemon:(Pokemon*) currentPokemon{
    
    Jogador *jogador = [[Jogador alloc]init];
    if(jogador){
        [jogador setNome:currentNomeJogador];
        [jogador setPokemon:currentPokemon];
    }
    return jogador;
}

+(instancetype)criarJogador:(NSString *)currentNomeJogador{
    Jogador * jogador = [[Jogador alloc] init];
    
    if(jogador){
        [jogador setNome:currentNomeJogador];
    }
    return jogador;
}

@end
