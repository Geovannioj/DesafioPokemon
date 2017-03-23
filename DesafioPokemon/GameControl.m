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
    bool validado=NO;
    do{
        scanf("%i",&opcao);
        
        if (opcao-1 < [jogador.pokemons count]&& opcao >0) {
            validado=YES;
        }else
            printf("Escolha um pokémon disponível\n");
    } while(!validado);
    return opcao-1;
}

+(NSMutableArray*)inicializaJogo{
    
    //declarando o vetor de itens
    NSMutableArray *itens = [[NSMutableArray alloc]init];
    
    //criando 10 pokemons de fogo
    Pokemon *charmeleon = [Pokemon criarPokemon:@"Vulpix" noLevel:1 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *charizard = [Pokemon criarPokemon:@"Growlithe" noLevel:1 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *torchic = [Pokemon criarPokemon:@"Ponyta" noLevel:2 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *vulpix = [Pokemon criarPokemon:@"Slugma" noLevel:2 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *ninetales = [Pokemon criarPokemon:@"Flareon" noLevel:3 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *growlithe = [Pokemon criarPokemon:@"Houndour" noLevel:3 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *arcanine = [Pokemon criarPokemon:@"Magmar" noLevel:4 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *ponyta = [Pokemon criarPokemon:@"Numel" noLevel:4 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *rapidash = [Pokemon criarPokemon:@"Torkoal" noLevel:5 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *magmar = [Pokemon criarPokemon:@"Marowak" noLevel:6 comExperiencia:0 comTipo:@"Fogo"];
    
    //criando 10 pokemons de agua
    Pokemon *wartortle = [Pokemon criarPokemon:@"Psyduck" noLevel:1 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *blastoise = [Pokemon criarPokemon:@"Magikarp" noLevel:1 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *psyduck = [Pokemon criarPokemon:@"Poliwag" noLevel:2 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *golduck = [Pokemon criarPokemon:@"Tentacool" noLevel:2 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *poliwag = [Pokemon criarPokemon:@"Slowpoke" noLevel:3 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *poliwhirl = [Pokemon criarPokemon:@"Krabby" noLevel:3 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *seel = [Pokemon criarPokemon:@"Shelder" noLevel:4 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *shellder = [Pokemon criarPokemon:@"Seel" noLevel:4 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *krabby = [Pokemon criarPokemon:@"Vaporeon" noLevel:5 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *kingler = [Pokemon criarPokemon:@"Lapras" noLevel:6 comExperiencia:0 comTipo:@"Agua"];
    
    //criando 10 pokemons de vento
    Pokemon *oddish = [Pokemon criarPokemon:@"Oddish" noLevel:1 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *gloom = [Pokemon criarPokemon:@"Exeggcute" noLevel:1 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *vileplume = [Pokemon criarPokemon:@"Tangela" noLevel:2 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *bellsprout = [Pokemon criarPokemon:@"Bellsprout" noLevel:2 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *weepinbell = [Pokemon criarPokemon:@"Hoppip" noLevel:3 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *victreebell = [Pokemon criarPokemon:@"Sunkern" noLevel:3 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *exeggcute = [Pokemon criarPokemon:@"Seedot" noLevel:4 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *exeggutor = [Pokemon criarPokemon:@"Shroomish" noLevel:4 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *tangela = [Pokemon criarPokemon:@"Roselia" noLevel:5 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *chikorita = [Pokemon criarPokemon:@"Tropius" noLevel:6 comExperiencia:0 comTipo:@"Vento"];
    
    //Criando os jogadores inimigos
    Jogador *giovanni = [Jogador criarJogador:@"Giovanni"];
    Jogador *jesse = [Jogador criarJogador:@"Jesse" ];
    Jogador *james = [Jogador criarJogador:@"James"];
    Jogador *archie = [Jogador criarJogador:@"Archie"];
    
    //criando os ginasios
    Ginasio *pewter = [Ginasio criaGinasio:@"Pewter" comLider:jesse];
    Ginasio *cerulean = [Ginasio criaGinasio:@"Cerulean" comLider:james];
    Ginasio *vermilion = [Ginasio criaGinasio:@"Vermilion" comLider:archie];
    Ginasio *celadon = [Ginasio criaGinasio:@"Celadon" comLider:giovanni];
    
    //criando pokemons dos lideres de ginasio
    Pokemon *chimchar = [Pokemon criarPokemon:@"Chimchar" noLevel:3 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *piplup = [Pokemon criarPokemon:@"Piplup" noLevel:3 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *turtwig = [Pokemon criarPokemon:@"Turtwig" noLevel:3 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *pignite = [Pokemon criarPokemon:@"Pignite" noLevel:6 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *dewott = [Pokemon criarPokemon:@"Dewott" noLevel:6 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *servine = [Pokemon criarPokemon:@"Servine" noLevel:6 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *delphox = [Pokemon criarPokemon:@"Delphox" noLevel:8 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *greninja = [Pokemon criarPokemon:@"Greninja" noLevel:8 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *chesnaught = [Pokemon criarPokemon:@"Chesnaught" noLevel:8 comExperiencia:0 comTipo:@"Vento"];
    Pokemon *groundon = [Pokemon criarPokemon:@"Groudon" noLevel:10 comExperiencia:0 comTipo:@"Fogo"];
    Pokemon *kyogre = [Pokemon criarPokemon:@"Kyogre" noLevel:10 comExperiencia:0 comTipo:@"Agua"];
    Pokemon *rayquaza = [Pokemon criarPokemon:@"Rayquaza" noLevel:10 comExperiencia:0 comTipo:@"Vento"];
    
    //atribuindo pokemons aos lideres de ginasio


    [jesse setPokemon:chimchar];
    [jesse.pokemons addObject:piplup];
    [jesse.pokemons addObject:turtwig];
    
    [james setPokemon:pignite];
    [james.pokemons addObject:dewott];
    [james.pokemons addObject:servine];
    
    [archie setPokemon:delphox];
    [archie.pokemons addObject:greninja];
    [archie.pokemons addObject:chesnaught];
    
    [giovanni setPokemon:groundon];
    [giovanni.pokemons addObject:kyogre];
    [giovanni.pokemons addObject:rayquaza];

    
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
    int opcao;
    bool validado=NO;
    [Visao limpaTela];
    Pokemon *pokemonInimigo = itens[arc4random_uniform(30)];
    [Visao menuCacando:pokemonInimigo];

    do{
        scanf("%d", &opcao);
        switch(opcao){
            case 1:
                validado=YES;
                    [GameControl escolhaLutar:currentJogador contraPokemon:pokemonInimigo];
                break;
            case 2:
                if([currentJogador.pokemons count] >= 5){
                    [Visao excedeNumeroPokemons];
                }
                else{
                    if(arc4random_uniform(2) == 1){
                        [currentJogador.pokemons addObject:pokemonInimigo];
                        [Visao capturouPokemon];
                    }
                    else{
                        [Visao naoCapturouPokemon];
                    }
                }
                validado=YES;
                break;
            case 3:
                [Visao fugiu];
                validado=YES;
                break;
            default:
                printf("Insira uma opção válida: \n");
        }
    }while(!validado);
    
}

+(void)escolherConquistarGinasios:(NSMutableArray*)itens comJogador:(Jogador*)currentJogador{
    int opcao;
    [Visao limpaTela];
    do{
        
        [Visao menuGinasios:itens];
        Ginasio *liderGinasio;
        
        scanf("%d", &opcao);
        NSString *pokemonInimigo;
        
        [Visao limpaTela];
        switch (opcao) {
            case 1:
                liderGinasio = itens [34];
                pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                printf("%s\n",[pokemonInimigo UTF8String]);
                [GameControl escolhaLutar:currentJogador contraPokemon: liderGinasio.leader.pokemons[0]];
                break;
            case 2:
                liderGinasio = itens [35];
                pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                printf("%s\n",[pokemonInimigo UTF8String]);
                [GameControl escolhaLutar:currentJogador contraPokemon: liderGinasio.leader.pokemons[0]];
                break;
            case 3:
                liderGinasio = itens [36];
                pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                printf("%s\n",[pokemonInimigo UTF8String]);
                [GameControl escolhaLutar:currentJogador contraPokemon: liderGinasio.leader.pokemons[0]];
                
                break;
            case 4:
                liderGinasio = itens [37];
                pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                printf("%s\n",[pokemonInimigo UTF8String]);
                [GameControl escolhaLutar:currentJogador contraPokemon: liderGinasio.leader.pokemons[0]];
                break;
            case 5:
                //Retorna ao menu inicial
                break;
            default:
                printf("\nEscolha um ginásio válido\n");
        }
    }while(opcao != 5);
    
}

+(void)mostrarStatusJogador:(Jogador *)currentJogador{
    [Visao limpaTela];
    [Visao menuStatus:currentJogador];
    
}
+(void)escolhaLutar:(Jogador*)jogador contraPokemon:(Pokemon*) pokemonInimigo{
    int indicePokemon = [GameControl escolhaPokemonLutar:jogador];
    [Visao limpaTela];
    printf("O pokemon %s foi escolhido!\n",[[jogador.pokemons[indicePokemon] nome] UTF8String]);
    
    if((signed long)([jogador.pokemons[indicePokemon] level] - [pokemonInimigo level]) >= 3){
        
        [Visao venceu];
        [jogador.pokemons[indicePokemon]addExperiencia];
        [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
        
    }else if((signed long)([pokemonInimigo level] - [jogador.pokemons[indicePokemon]level]) >=3){
        
        [Visao perdeu];
        [jogador.pokemons[indicePokemon]addExperienciaDerrota];
        [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
        
    }else{
       
        if([[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Agua"] && [[pokemonInimigo tipo] isEqualToString:@"Fogo"]){
           
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            
        }else if([[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Fogo"] && [[pokemonInimigo tipo] isEqualToString:@"Vento"]){
            
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];

        }else if( [[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Vento"] && [[pokemonInimigo tipo] isEqualToString:@"Agua"]){
            
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];

        }
        else if([[jogador.pokemons[indicePokemon] tipo] isEqual:pokemonInimigo.tipo]){
            if(arc4random_uniform(2) == 1){
                [Visao venceu];
                [jogador.pokemons[indicePokemon]addExperiencia];
                [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            }
            else{
                [Visao perdeu];
                [jogador.pokemons[indicePokemon]addExperienciaDerrota];
                [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            }
        }
        else{
            [Visao perdeu];
            [jogador.pokemons[indicePokemon]addExperienciaDerrota];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
        }
    }
}

+(void)evoluirPokemon:(Pokemon*)pokemon{
    if([pokemon experiencia] >= 100){
        [pokemon setExperiencia:[pokemon experiencia]-100];
        [pokemon setLevel:[pokemon level]+1];
        [Visao pokemonEvoluiu:pokemon];
    }
}


@end
