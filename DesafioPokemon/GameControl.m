//
//  GameControl.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 17/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "GameControl.h"
#import "Jogador.h"


@implementation GameControl

-(Jogador *) createPlayerNome:(NSString *)nome{
    Jogador * jogador = [Jogador criarJogador:nome];
    return jogador;
}
@end
