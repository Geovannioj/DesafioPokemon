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
    NSString * nome;
    NSMutableArray * pokemons;
}

//setters
-(void)setNome:(NSString*)currentNome;
-(void)setPokemon:(Pokemon*)newPokemon;

//getters
-(NSString*)nome;
-(NSMutableArray*)pokemons;

//construtor
+(instancetype)criarCampo:(NSString*)currentNome;


@end
