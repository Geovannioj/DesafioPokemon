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

+(void)inicializaPokemons{
    
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
    
    [itens addObject:charmeleon];
    
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
    
    //criando os campos
    Campo *primeiroCampo = [Campo criarCampo:1];
    Campo *segundoCampo = [Campo criarCampo:2];
    Campo *terceiroCampo = [Campo criarCampo:3];
    Campo *quartoCampo = [Campo criarCampo:4];
    
    //colocando pokemons no primeiro campo
    [primeiroCampo setPokemon:charmeleon];
    [primeiroCampo setPokemon:charizard];
    [primeiroCampo setPokemon:torchic];
    [primeiroCampo setPokemon:wartortle];
    [primeiroCampo setPokemon:blastoise];
    [primeiroCampo setPokemon:psyduck];
    [primeiroCampo setPokemon:oddish];
    [primeiroCampo setPokemon:gloom];
    [primeiroCampo setPokemon:vileplume];
    
    //colocando pokemons no segundo campo
    [segundoCampo setPokemon:vulpix];
    [segundoCampo setPokemon:ninetales];
    [segundoCampo setPokemon:growlithe];
    [segundoCampo setPokemon:golduck];
    [segundoCampo setPokemon:poliwag];
    [segundoCampo setPokemon:poliwhirl];
    [segundoCampo setPokemon:bellsprout];
    [segundoCampo setPokemon:weepinbell];
    [segundoCampo setPokemon:victreebell];
    
    //colocando pokemons no terceiro campo
    [terceiroCampo setPokemon:arcanine];
    [terceiroCampo setPokemon:ponyta];
    [terceiroCampo setPokemon:seel];
    [terceiroCampo setPokemon:shellder];
    [terceiroCampo setPokemon:exeggcute];
    [terceiroCampo setPokemon:exeggutor];
    
    //colocando pokemons no quarto campo
    [quartoCampo setPokemon:rapidash];
    [quartoCampo setPokemon:magmar];
    [quartoCampo setPokemon:krabby];
    [quartoCampo setPokemon:kingler];
    [quartoCampo setPokemon:tangela];
    [quartoCampo setPokemon:chikorita];
    
}

+(int)escolhaCacarOuEvoluir{
    [Visao menuCacarOuEvoluir];
    int opcao;
    scanf("%d", &opcao);
    return opcao;
}

+(int)escolhaCacar:(int)campo{
    
}

@end
