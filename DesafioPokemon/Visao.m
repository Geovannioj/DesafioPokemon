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
    
    printf("Digite seu nome: \n"); scanf("%s", currentNome);
    printf("Escolha o seu Pokemon!\n");
    printf("Digite 1 para escolher o Charmander(Elemento: Fogo - Nivel: 1)\n");
    printf("Digite 2 para escolher o Squirtle(Elemento: Agua - Nivel: 1)\n");
    printf("Digite 3 para escolher o Bulbasaur(Elemento: Vento - Nivel: 1)\n");
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

+(void)menu{
    printf("Digite 1 para caçar/evoluir pokemons\n");
    printf("Digite 2 para conquistar ginásios\n");
    printf("Digite 3 para ver seus status e seus pokemons\n");
    printf("Digite 4 para Sair\n");
}

+(void)menuCacarOuEvoluir{
    printf("Escolhar um campo para caçar/evoluir: \n");
    printf("Digite 1 para entrar no Campo 1(niveis:1-3)\n");
    printf("Digite 2 para entrar no Campo 2(niveis:4-6)\n");
    printf("Digite 3 para entrar no Campo 3(niveis:7-8)\n");
    printf("Digite 4 para entrar no Campo 4(niveis:9-10)\n");
}

+(void)menuCacando{
    printf("Pokemon tal encontrado!\n");
    printf("Digite 1 para lutar\n");
    printf("Digite 2 para capturar\n");
    printf("Digite 3 para fugir\n");
}

@end
