//
//  GameControl.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface GameControl : NSObject
-(Jogador *)createPlayerNome: (NSString *)nome;

+(int)escolhaMenu;

+(void)inicializaPokemons;

@end
