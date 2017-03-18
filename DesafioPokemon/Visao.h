//
//  Visao.h
//  DesafioPokemon
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Visao : NSObject

+(Jogador*)criaJogadorInicial;
+(void)menu;
+(void)cacarOuEvoluir;

@end
