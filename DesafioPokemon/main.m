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
        
        Ginasio *ginasio = [[Ginasio alloc]init];
        [[[[ginasio leader] pokemons] objectAtIndex:0] nome];
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
                    break;
                case 4:
                    break;
                default:
                    printf("Insira uma opção válida\n");
            }
        }while(opcao != 4);
        return 0;
    }
}
