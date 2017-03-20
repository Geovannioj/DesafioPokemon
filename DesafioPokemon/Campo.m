//
//  Campo.m
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 18/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Campo.h"

@implementation Campo

//setters
-(void)setNumero:(int)currentNumero{
    numero = currentNumero;
}
-(void)setPokemon:(Pokemon*)newPokemon{
    pokemons = [[NSMutableArray alloc]init];
    [pokemons addObject:newPokemon];
}

//getters
-(int)numero{
    return numero;
}

-(NSMutableArray*)pokemons{
    return pokemons;
}

-(Pokemon*)getPokemonEspecifico:(int)indice{
    return pokemons[indice];
}

//construtor
+(instancetype)criarCampo:(int)currentNumero{
    Campo * campo = [[Campo alloc] init];
    
    if(campo){
        [campo setNumero:currentNumero];
    }
    return campo;
}


@end
