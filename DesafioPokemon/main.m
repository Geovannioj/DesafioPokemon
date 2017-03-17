//
//  main.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visao.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Jogador *jogador = [Visao criaJogadorInicial];
        NSLog(@"Nome: %@", jogador.nome);
        NSLog(@"Aquiii: %@", jogador.pokemons);
    }
    return 0;
}
