//
//  main.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visao.h"
#import "GameControl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [GameControl inicializaJogo];
        int opcao;
        Jogador *jogador = [Visao criaJogadorInicial];
        switch([GameControl escolhaMenu]){
            case 1:
                opcao = [GameControl escolhaCacarOuEvoluir];
                break;
            case 2:
                break;
            case 3:
                break;
            default:
                break;
                
        }
        return 0;
    }
}
