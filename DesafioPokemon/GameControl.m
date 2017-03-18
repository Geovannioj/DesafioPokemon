//
//  GameControl.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "GameControl.h"
#import "Jogador.h"
#import "Visao.h"
#import "Pokemon.h"

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

+(void)inicializaPokemons{
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
    
    
}

@end
