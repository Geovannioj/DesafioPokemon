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

    bool validado=NO;
    Pokemon *pokemon;
    
    do {
    
        
        scanf("%d", &pokemonInicial);
        
        switch (pokemonInicial) {
            case 1:
                //constor do jogador
                pokemon = [Pokemon criarPokemon:@"Charmander"noLevel:1 comExperiencia:0 comTipo:@"Fogo"];
                validado=YES;
                break;
            case 2:
                pokemon = [Pokemon criarPokemon:@"Squirtle" noLevel:1 comExperiencia:0 comTipo:@"Agua"];
                validado=YES;
                break;
            case 3:
                pokemon = [Pokemon criarPokemon:@"Bulbasaur" noLevel:1 comExperiencia:0 comTipo:@"Vento"];
                validado=YES;
                break;
            default:
                printf("Insira uma opção válida: \n");
        }
    } while(!validado);
    
    NSString *nome = [NSString stringWithUTF8String:currentNome];
    
    Jogador *jogador = [Jogador criarJogador:nome comPokemon:pokemon];

    [Visao limpaTela];
    
    return jogador;
}

+(void)menu{
    printf("Digite 1 para caçar/evoluir pokemons\n");
    printf("Digite 2 para conquistar ginásios\n");
    printf("Digite 3 para ver seus status e seus pokemons\n");
    printf("Digite 4 para Sair\n");
}

+(void)menuCacando:(Pokemon*)pokemonInimigo{
    printf("Voce encontrou o pokemon %s! de level %ld com o elemento %s\n", [pokemonInimigo.nome UTF8String], (long)pokemonInimigo.level, [pokemonInimigo.tipo UTF8String]);
    printf("Digite 1 para lutar\n");
    printf("Digite 2 para capturar\n");
    printf("Digite 3 para fugir\n");
}

+(void)excedeNumeroPokemons{
    printf("Voce ja possui 5 pokemons! Voce nao pode mais capturar pokemons!\n");
}

+(void)capturouPokemon{
    [Visao limpaTela];
    printf("Parabéns! Voce conseguiu capturar o pokemon!\n");
}
+(void)naoCapturouPokemon{
    [Visao limpaTela];
    printf("Nao foi dessa vez! Voce nao conseguiu capturar o pokemon\n");
}

+(void)menuLutarJogador:(Jogador*)Jogador{
    printf("Escolha o pokemon para batalhar!\n");
    int contador = 0;
    for(Pokemon *pokemon in Jogador.pokemons){
        printf("Digite %d para escolher o pokemon %s de nivel %lu com o elemento %s\n", contador+1, [pokemon.nome UTF8String], pokemon.level, [pokemon.tipo UTF8String]);

        contador++;
    }
}

+(void)menuStatus:(Jogador *)currentJogador{
    int pokemonAtual;
    printf("Nome: %s\n", [currentJogador.nome UTF8String]);
    printf("Nº de pokémons: %lu\n", (unsigned long)[currentJogador.pokemons count]);
    
    for(pokemonAtual=0; pokemonAtual<[currentJogador.pokemons count]; pokemonAtual++){
        printf("%d || %s ||",pokemonAtual+1, [[currentJogador.pokemons[pokemonAtual] nome] UTF8String]);
        printf(" Tipo: %s ||", [[currentJogador.pokemons[pokemonAtual] tipo] UTF8String]);
        printf(" Nivel: %lu ||",(unsigned long)[currentJogador.pokemons[pokemonAtual] level]);
        printf(" Exp: %lu\n", (unsigned long)[currentJogador.pokemons[pokemonAtual] experiencia]);
    }
}

+(void)fugiu{
    //[Visao limpaTela];
    printf("Voce fugiu!\n");
}

+(void)menuGinasios:(NSMutableArray*)itens{
    printf("Digite 1 para Conquistar o Ginasio %s com o lider %s(Nivel 3)\n", [[itens[34] name] UTF8String], [[[itens[34] leader] nome] UTF8String]);
    printf("Digite 2 para Conquistar o Ginasio %s com o lider %s(Nivel 6)\n", [[itens[35] name] UTF8String], [[[itens[35] leader] nome] UTF8String]);
    printf("Digite 3 para Conquistar o Ginasio %s com o lider %s(Nivel 8)\n", [[itens[36] name] UTF8String], [[[itens[36] leader] nome] UTF8String]);
    printf("Digite 4 para Conquistar o Ginasio %s com o lider %s(Nivel 10)\n", [[itens[37] name] UTF8String], [[[itens[37] leader] nome] UTF8String]);
    printf("Digite 5 para voltar ao menu inicial\n");
}

+(void)venceu{
    printf("Parabéns você venceu a batalha!\n\n");
    printf("Seu pokemon ganhou 35 de experiência\n\n");
}
+(void)perdeu{
    printf("Você perdeu!\n\n");
    printf("Ahhhhh infelizmente não foi dessa vez! \n");
    printf("Mas você ganhou 10 de exp\n\n");
}

+(void)limpaTela{
    for(int contador = 0; contador < 20; contador++){
        printf("\n");
    }
}

+(void)pokemonsInsuficientes{
    [Visao limpaTela];
    printf("Voce nao tem pokemons suficientes!\n");
    printf("Voce precisa ter ao menos 3 pokemons para lutar em ginasios\n");
}

+(void)pokemonEvoluiu:(Pokemon*)pokemon{
    printf("O seu pokemon: %s evoluiu!\n", [pokemon.nome UTF8String]);
    printf("Agora ele está no level: %lu\n", pokemon.level);
}

@end
