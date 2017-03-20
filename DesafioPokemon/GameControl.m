//
//  GameControl.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "GameControl.h"

@implementation GameControl

-(Jogador *) createPlayerNome:(NSString *)nome{
    Jogador * jogador = [Jogador criarJogador:nome];
    return jogador;
}

+(int)escolhaMenu{
    [Visao menu];
    int opcao;
    scanf("%d", &opcao);
    return opcao;
}
+(int)escolhaPokemonLutar:(Jogador *)jogador{
    [Visao menuLutarJogador:jogador];
    int opcao;
    scanf("%i",&opcao);
    return opcao;
}

+(NSMutableArray*)inicializaJogo{
    
    //declarando o vetor de itens
    NSMutableArray *itens = [[NSMutableArray alloc]init];
    
    //criando 10 pokemons de fogo
    Pokemon *charmeleon = [Pokemon criarPokemon:@"Charmeleon" noLevel:1 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *charizard = [Pokemon criarPokemon:@"Charizard" noLevel:2 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *torchic = [Pokemon criarPokemon:@"Torchic" noLevel:3 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *vulpix = [Pokemon criarPokemon:@"Vulpix" noLevel:4 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *ninetales = [Pokemon criarPokemon:@"Ninetales" noLevel:5 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *growlithe = [Pokemon criarPokemon:@"Growlithe" noLevel:6 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *arcanine = [Pokemon criarPokemon:@"Arcanine" noLevel:7 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *ponyta = [Pokemon criarPokemon:@"Ponyta" noLevel:8 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *rapidash = [Pokemon criarPokemon:@"Rapidash" noLevel:9 comExperiencia:1 comTipo:@"Fogo"];
    Pokemon *magmar = [Pokemon criarPokemon:@"Magmar" noLevel:10 comExperiencia:1 comTipo:@"Fogo"];
    
    //criando 10 pokemons de agua
    Pokemon *wartortle = [Pokemon criarPokemon:@"Wartortle" noLevel:1 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *blastoise = [Pokemon criarPokemon:@"Blastoise" noLevel:2 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *psyduck = [Pokemon criarPokemon:@"Psyduck" noLevel:3 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *golduck = [Pokemon criarPokemon:@"Golduck" noLevel:4 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *poliwag = [Pokemon criarPokemon:@"Poliwag" noLevel:5 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *poliwhirl = [Pokemon criarPokemon:@"Poliwhirl" noLevel:6 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *seel = [Pokemon criarPokemon:@"Seel" noLevel:7 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *shellder = [Pokemon criarPokemon:@"Shellder" noLevel:8 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *krabby = [Pokemon criarPokemon:@"Krabby" noLevel:9 comExperiencia:1 comTipo:@"Agua"];
    Pokemon *kingler = [Pokemon criarPokemon:@"Kingler" noLevel:10 comExperiencia:1 comTipo:@"Agua"];
    
    //criando 10 pokemons de vento
    Pokemon *oddish = [Pokemon criarPokemon:@"Oddish" noLevel:1 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *gloom = [Pokemon criarPokemon:@"Gloom" noLevel:2 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *vileplume = [Pokemon criarPokemon:@"Vileplume" noLevel:3 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *bellsprout = [Pokemon criarPokemon:@"Bellsprout" noLevel:4 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *weepinbell = [Pokemon criarPokemon:@"Weepinbell" noLevel:5 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *victreebell = [Pokemon criarPokemon:@"Victreebell" noLevel:6 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *exeggcute = [Pokemon criarPokemon:@"Exeggcute" noLevel:7 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *exeggutor = [Pokemon criarPokemon:@"Exeggutor" noLevel:8 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *tangela = [Pokemon criarPokemon:@"Tangela" noLevel:9 comExperiencia:1 comTipo:@"Vento"];
    Pokemon *chikorita = [Pokemon criarPokemon:@"Chikorita" noLevel:10 comExperiencia:1 comTipo:@"Vento"];
    
    //Criando os jogadores inimigos
    Jogador *giovanni = [Jogador criarJogador:@"Giovanni"];
    Jogador *jesse = [Jogador criarJogador:@"Jesse"];
    Jogador *james = [Jogador criarJogador:@"James"];
    Jogador *archie = [Jogador criarJogador:@"Archie"];
    
    //criando os ginasios
    Ginasio *pewter = [Ginasio criaGinasio:@"Pewter" comLider:jesse];
    Ginasio *cerulean = [Ginasio criaGinasio:@"Cerulean" comLider:james];
    Ginasio *vermilion = [Ginasio criaGinasio:@"Vermilion" comLider:archie];
    Ginasio *celadon = [Ginasio criaGinasio:@"Celadon" comLider:giovanni];
    
    //colocandos os itens no vetor
    [itens addObject:charmeleon];
    [itens addObject:charizard];
    [itens addObject:torchic];
    [itens addObject:vulpix];
    [itens addObject:ninetales];
    [itens addObject:growlithe];
    [itens addObject:arcanine];
    [itens addObject:ponyta];
    [itens addObject:rapidash];
    [itens addObject:magmar];
    [itens addObject:wartortle];
    [itens addObject:blastoise];
    [itens addObject:psyduck];
    [itens addObject:golduck];
    [itens addObject:poliwag];
    [itens addObject:poliwhirl];
    [itens addObject:seel];
    [itens addObject:shellder];
    [itens addObject:krabby];
    [itens addObject:kingler];
    [itens addObject:oddish];
    [itens addObject:gloom];
    [itens addObject:vileplume];
    [itens addObject:bellsprout];
    [itens addObject:weepinbell];
    [itens addObject:victreebell];
    [itens addObject:exeggcute];
    [itens addObject:exeggutor];
    [itens addObject:tangela];
    [itens addObject:chikorita];
    [itens addObject:giovanni];
    [itens addObject:jesse];
    [itens addObject:james];
    [itens addObject:archie];
    [itens addObject:pewter];
    [itens addObject:cerulean];
    [itens addObject:vermilion];
    [itens addObject:celadon];
    
    return itens;
}

+(void)escolhaCacar:(NSMutableArray*)itens comJogador:(Jogador *)currentJogador{
    Pokemon *pokemonInimigo = itens[arc4random_uniform(30)];
    int opcao;
    [Visao menuCacando:pokemonInimigo];
    scanf("%d", &opcao);
    switch(opcao){
        case 1:
        case 2:
            if([currentJogador.pokemons count] > 5){
                [Visao excedeNumeroPokemons];
            }
            else{
                if(arc4random_uniform(1) == 1){
                    [currentJogador.pokemons addObject:pokemonInimigo];
                    [Visao capturouPokemon];
                }
                else{
                    [Visao naoCapturouPokemon];
                }
            }
        case 3:
            break;
    }
    
}
+(void)escolhaLutar:(Jogador*)jogador:(Pokemon*) pokemonInimigo{
    
    [Visao menuLutarJogador:jogador];
    int indicePokemon = [GameControl escolhaPokemonLutar:jogador];
    printf("O pokemon %s foi escolhido!",[[jogador.pokemons[indicePokemon] nome] UTF8String]);
    
    if([jogador.pokemons[indicePokemon]level] - [pokemonInimigo level] >= 3){
        
        [jogador.pokemons[indicePokemon]addExperiencia];
        printf("Parabéns você venceu a batalha!");
        printf("seu pokemon ganhou 35 de experiência");
        
    }else if([pokemonInimigo level] - [jogador.pokemons[indicePokemon]level] >=3){
        
        [jogador.pokemons[indicePokemon]addExperienciaDerrota];
        
        printf("Você perdeu");
        printf("ahhhhh infelizmente não foi dessa vez!");
        printf("mas você ganhou 10 de exp");
        
    }else if([pokemonInimigo level] - [jogador.pokemons[indicePokemon]level] == 0){
        
        if(([[jogador.pokemons]tipo] == @"agua") && ([[pokemonInimigo]tipo] == @"fogo")){
            
            [jogador.pokemons[indicePokemon]addExperiencia];
            printf("Parabéns você venceu a batalha!");
            printf("seu pokemon ganhou 35 de experiência");
            
        }else if(([[jogador.pokemons]tipo] == @"fogo") && ([[pokemonInimigo]tipo] == @"vento")){
            
            [jogador.pokemons[indicePokemon]addExperiencia];
            printf("Parabéns você venceu a batalha!");
            printf("seu pokemon ganhou 35 de experiência");
            
        }else if( ([[jogador.pokemons]tipo] == @"fogo") && ([[pokemonInimigo]tipo] == @"vento")){
            [jogador.pokemons[indicePokemon]addExperiencia];
            printf("Parabéns você venceu a batalha!");
            printf("seu pokemon ganhou 35 de experiência");
        }
    }
}

@end
