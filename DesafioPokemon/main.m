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
        NSMutableArray *itens = [GameControl inicializaJogo];
        Jogador *jogador = [Visao criaJogadorInicial];

        int opcao;
        do{
            opcao = [GameControl escolhaMenu];
            switch(opcao){
                case 1:
                    [GameControl escolhaCacar:itens comJogador:jogador];
                    
                    break;
                case 2:
                    [GameControl escolherConquistarGinasios:itens comJogador:jogador];
                    break;
                case 3:
                    [GameControl mostrarStatusJogador:jogador];
            }
        }while(opcao != 4);
        return 0;
    }
}
