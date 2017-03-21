//
//  Visao.m
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Visao.h"

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

+(void)menuCacando:(Pokemon*)pokemonInimigo{
    printf("Voce encontrou o pokemon %s! de level %ld\n", [pokemonInimigo.nome UTF8String], (long)pokemonInimigo.level);
    printf("Digite 1 para lutar\n");
    printf("Digite 2 para capturar\n");
    printf("Digite 3 para fugir\n");
    printf("Digite 4 para voltar ao menu inicial\n");
}

+(void)excedeNumeroPokemons{
    printf("Voce ja possui 5 pokemons! Voce nao pode mais capturar pokemons!\n");
}

+(void)capturouPokemon{
    printf("Parabéns! Voce conseguiu capturar o pokemon!\n");
}
+(void)naoCapturouPokemon{
    printf("Nao foi dessa vez! Voce nao conseguiu capturar o pokemon\n");
}

<<<<<<< HEAD
+(void)menuLutar:(Jogador*)Jogador{
    printf("Escolha o pokemon para batalhar");
    printf("%@",Jogador.pokemons);
    printf("Digite o número do pokemon que você deseja lutar: ");
    
=======
+(void)menuStatus:(Jogador *)currentJogador{
    int pokemonAtual;
    printf("Nome: %s\n", [currentJogador.nome UTF8String]);
    printf("Nº de pokémon: %lu\n", (unsigned long)[currentJogador.pokemons count]);
    
    for(pokemonAtual=0; pokemonAtual<[currentJogador.pokemons count]; pokemonAtual++){
        printf("%d -> %s -",pokemonAtual+1, [[currentJogador.pokemons[pokemonAtual] nome] UTF8String]);
        printf(" Tipo: %s -", [[currentJogador.pokemons[pokemonAtual] tipo] UTF8String]);
        printf(" Nivel: %lu -",(unsigned long)[currentJogador.pokemons[pokemonAtual] level]);
        printf(" Exp: %lu\n", (unsigned long)[currentJogador.pokemons[pokemonAtual] experiencia]);
    }
}

+(void)fugiu{
    printf("Voce fugiu!\n");
}

+(void)menuGinasios:(NSMutableArray*)itens{
    printf("Digite 1 para Conquistar o Ginasio %s com o lider %s(Nivel 3)\n", [[itens[34] name] UTF8String], [[[itens[34] leader] nome] UTF8String]);
    printf("Digite 2 para Conquistar o Ginasio %s com o lider %s(Nivel 6)\n", [[itens[35] name] UTF8String], [[[itens[35] leader] nome] UTF8String]);
    printf("Digite 3 para Conquistar o Ginasio %s com o lider %s(Nivel 8)\n", [[itens[36] name] UTF8String], [[[itens[36] leader] nome] UTF8String]);
    printf("Digite 4 para Conquistar o Ginasio %s com o lider %s(Nivel 10)\n", [[itens[37] name] UTF8String], [[[itens[37] leader] nome] UTF8String]);
    printf("Digite 5 para voltar ao menu inicial\n");
>>>>>>> fc6391585aea5aa68916c4cb086ebb2452f33ed4
}

@end
