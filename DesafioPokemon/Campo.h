//
//  Campo.h
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 18/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

@interface Campo : NSObject{
    int numero;
    NSMutableArray * pokemons;
}

//setters
-(void)setNumero:(int)currentNumero;
-(void)setPokemon:(Pokemon*)newPokemon;

//getters
-(int)numero;
-(NSMutableArray*)pokemons;
-(Pokemon*)getPokemonEspecifico:(int)indice;

//construtor
+(instancetype)criarCampo:(int)currentNumero;


@end
