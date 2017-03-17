//
//  Visao.m
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Visao.h"
#import "Jogador.h"
#import "Pokemon.h"

@implementation Visao

+(Jogador*)criaJogadorInicial{
    char currentNome[50];
    int pokemonInicial;
    
    NSLog(@"Digite seu nome: "); scanf("%s", currentNome);
    NSLog(@"Escolha o seu Pokemon!");
    NSLog(@"Digite 1 para escolher o Charmander(Elemento: Fogo - Nivel: 1)");
    NSLog(@"Digite 2 para escolher o Squirtle(Elemento: Agua - Nivel: 1)");
    NSLog(@"Digite 3 para escolher o Bulbasaur(Elemento: Vento - Nivel: 1)");
    scanf("%d", &pokemonInicial);
    
    Pokemon *pokemon;
    switch (pokemonInicial) {
        case 1:
            //constor do jogador
            pokemon = [Pokemon criarPokemon:@"Charmander"noLevel:1 comExperiencia:0 comTipo:@"Fogo"];
            break;
        case 2:
            pokemon = [Pokemon criarPokemon:@"Squirtle" noLevel:1 comExperiencia:0 comTipo:@"Agua"];
            break;
        default:
            pokemon = [Pokemon criarPokemon:@"Bulbasaur" noLevel:1 comExperiencia:0 comTipo:@"Vento"];
    }
    NSString *nome = [NSString stringWithUTF8String:currentNome];
    
    Jogador *jogador = [Jogador criarJogador:nome comPokemon:pokemon];
    
    return jogador;
}

@end
