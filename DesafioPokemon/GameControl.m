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
    bool respostaLutar;
    [Visao limpaTela];
    Pokemon *pokemonInimigo = itens[arc4random_uniform(30)];
    [Visao menuCacando:pokemonInimigo];

    do{
        scanf("%d", &opcao);
        switch(opcao){
            case 1:
                validado=YES;
                respostaLutar = [GameControl escolhaLutar:currentJogador contraPokemon: pokemonInimigo];
                break;
            case 2:
                if([currentJogador.pokemons count] >= 5){
                    [Visao excedeNumeroPokemons];
                }
                else{
                    if(arc4random_uniform(2) == 1){
                        [currentJogador.pokemons addObject:pokemonInimigo];
                        [GameControl ordenarPokemonsJogador:currentJogador];
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
+(void)batalhaGinasioJogador:(Jogador *)jogador inimigo:(Jogador *)inimigo ginasio:(Ginasio *)ginasio{
    
    NSString *pokemonInimigo;
    
    pokemonInimigo = [[[inimigo pokemons] objectAtIndex:0] nome];
    
    printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
    
    printf("Round 1!\n\n");
    BOOL estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon: inimigo.pokemons[0]];
    
    if(estatusBatalha){
        //usuário ganhou o primeiro round
        printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
        printf("Round 2!\n\n");
        estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[1]];
        
        if(estatusBatalha){
            //usuário ganhou o segundo round
            printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
            printf("Round 3!\n\n");
            estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[2]];
            if(estatusBatalha){
                //o usuário ganhou os 3 rounds e vira o novo lider do ginásio
                [Visao limpaTela];
                printf("Parabéns! você virou o novo líder desse ginásio!\n");
                [ginasio setLeader:jogador];
                
            }else{
                //o usuário ganhou o pimeiro o segundo e perdeu o terceiro
                //o usuário vira líder de ginásio
                [Visao limpaTela];
                printf("Parabéns! você virou o novo líder desse ginásio!\n");
                [ginasio setLeader:jogador];
            }
        }else{
            //usuário perdeu o segundo round
            printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
            printf("Round 3\n");
            estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[1]];
            
            if(estatusBatalha){
                //usuário ganhou o primeiro round perdeu o segundo e ganhou o terceiro
                //vira líder de ginásio
                [Visao limpaTela];
                printf("Parabéns! você virou o novo líder desse ginásio!\n");
                [ginasio setLeader:jogador];
                
            }else{
                //o usuário perdeu o segundo e o terceiro round
                [Visao limpaTela];
                printf("Infelizmente não foi dessa vez, evolua seus pokemons e tente novamente!\n");
                
            }
            
        }
    }else{
        //usuário perdeu o primeiro round
        printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
        printf("Round 2!\n\n");
        estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[0]];
        
        if(estatusBatalha){
            //perdeu o primeiro e ganhou o segundo
            printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
            printf("Round 3!\n\n");
            estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[1]];
            
            if(estatusBatalha){
                //perdeu o primeiro, ganhou o segundo e o terceiro
                //jogador vira líder do ginásio
                [Visao limpaTela];
                printf("Parabéns! você virou o novo líder desse ginásio!\n");
                [ginasio setLeader:jogador];
            }
        }else{
            //jogador perdeu o primeiro e o segundo round
            printf("O pokemon adversário é o : %s\n",[pokemonInimigo UTF8String]);
            printf("Round 3!\n\n");
            estatusBatalha = [GameControl escolhaLutar:jogador contraPokemon:inimigo.pokemons[0]];
            
            if(estatusBatalha){
                //o usuário perdeu os dois pimeiros e ganhou o último
                [Visao limpaTela];
                printf(" Infelizmente não foi dessa vez que você virou líder do ginásio\n evolua seus pokemons, treine bastante e volte para tentar novamente!\n");
            }else
                //o usuário perdeu os três rounds
                [Visao limpaTela];
                printf(" Infelizmente não foi dessa vez que você virou líder do ginásio\n evolua seus pokemons, treine bastante e volte para tentar novamente!\n");
        }
    }
    
}
+(BOOL)verificaliderGinasio:(Ginasio*)ginasio jogador:(Jogador*)jogador{
    
    if([[[ginasio leader]nome] isEqualToString: [jogador nome]]){
        printf("Você já é o líder deste ginásio, escolha outro !\n");
        return NO;
    }else{
        return YES;
    }
}
+(void)escolherConquistarGinasios:(NSMutableArray*)itens comJogador:(Jogador*)currentJogador{
    int opcao;
    BOOL verificaLiderGinasio;
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
                verificaLiderGinasio = [GameControl verificaliderGinasio:liderGinasio jogador:currentJogador];
                
                if(verificaLiderGinasio){
                    pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                    [GameControl batalhaGinasioJogador:currentJogador inimigo:[liderGinasio leader] ginasio:liderGinasio];
                }
                break;
        case 2:
                liderGinasio = itens [35];
                verificaLiderGinasio = [GameControl verificaliderGinasio:liderGinasio jogador:currentJogador];
                
                if(verificaLiderGinasio){
                    pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                    [GameControl batalhaGinasioJogador:currentJogador inimigo:[liderGinasio leader] ginasio:liderGinasio];
                }
                break;
            case 3:
                liderGinasio = itens [36];
                verificaLiderGinasio = [GameControl verificaliderGinasio:liderGinasio jogador:currentJogador];
                
                if(verificaLiderGinasio){
                    pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                    [GameControl batalhaGinasioJogador:currentJogador inimigo:[liderGinasio leader] ginasio:liderGinasio];
                }
                break;
            case 4:
                liderGinasio = itens [37];
                verificaLiderGinasio = [GameControl verificaliderGinasio:liderGinasio jogador:currentJogador];
                
                if(verificaLiderGinasio){
                    pokemonInimigo = [[[[liderGinasio leader]pokemons]objectAtIndex:0]nome];
                    [GameControl batalhaGinasioJogador:currentJogador inimigo:[liderGinasio leader] ginasio:liderGinasio];
                }
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
+(BOOL)escolhaLutar:(Jogador*)jogador contraPokemon:(Pokemon*) pokemonInimigo{
    int indicePokemon = [GameControl escolhaPokemonLutar:jogador];
    [Visao limpaTela];
    printf("O pokemon %s foi escolhido!\n",[[jogador.pokemons[indicePokemon] nome] UTF8String]);
    
    if((signed long)([jogador.pokemons[indicePokemon] level] - [pokemonInimigo level]) >= 3){
        
        [Visao venceu];
        [jogador.pokemons[indicePokemon]addExperiencia];
        [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
        [GameControl ordenarPokemonsJogador:jogador];
        return YES;

    }else if((signed long)([pokemonInimigo level] - [jogador.pokemons[indicePokemon]level]) >=3){
        
        [Visao perdeu];
        [jogador.pokemons[indicePokemon]addExperienciaDerrota];
        [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
        [GameControl ordenarPokemonsJogador:jogador];
        return NO;
        
    }else{
       
        if([[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Agua"] && [[pokemonInimigo tipo] isEqualToString:@"Fogo"]){
           
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            [GameControl ordenarPokemonsJogador:jogador];
            return YES;

        }else if([[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Fogo"] && [[pokemonInimigo tipo] isEqualToString:@"Vento"]){
            
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            [GameControl ordenarPokemonsJogador:jogador];
            return YES;
            
        }else if( [[jogador.pokemons[indicePokemon] tipo] isEqualToString:@"Vento"] && [[pokemonInimigo tipo] isEqualToString:@"Agua"]){
            
            [Visao venceu];
            [jogador.pokemons[indicePokemon]addExperiencia];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            [GameControl ordenarPokemonsJogador:jogador];
            return YES;
            
        }
        else if([[jogador.pokemons[indicePokemon] tipo] isEqual:pokemonInimigo.tipo]){
            if(arc4random_uniform(2) == 1){
                [Visao venceu];
                [jogador.pokemons[indicePokemon]addExperiencia];
                [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
                [GameControl ordenarPokemonsJogador:jogador];
                return YES;
                
            }
            else{
                [Visao perdeu];
                [jogador.pokemons[indicePokemon]addExperienciaDerrota];
                [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
                [GameControl ordenarPokemonsJogador:jogador];
                return NO;

            }
        }
        else{
            [Visao perdeu];
            [jogador.pokemons[indicePokemon]addExperienciaDerrota];
            [GameControl evoluirPokemon:jogador.pokemons[indicePokemon]];
            [GameControl ordenarPokemonsJogador:jogador];
            return NO;
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

+(void) ordenarPokemonsJogador:(Jogador *)jogador {
    
    [jogador.pokemons sortUsingComparator:^(id obj1, id obj2) {
        
        Pokemon* pokemon1 = (Pokemon*)obj1;
        Pokemon* pokemon2 = (Pokemon*)obj2;
        
        if (pokemon1.level<pokemon2.level) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        
        if (pokemon1.level> pokemon2.level) {
            return (NSComparisonResult)NSOrderedAscending;
        }
        return (NSComparisonResult)NSOrderedSame;
    }];
}

@end
