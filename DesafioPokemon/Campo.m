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
-(void)setNome:(NSString*)currentNome{
    nome = currentNome;
}
-(void)setPokemon:(Pokemon*)newPokemon{
    pokemons = [[NSMutableArray alloc]init];
    [pokemons addObject:newPokemon];
}

//getters
-(NSString*)nome{
    return nome;
}

-(NSMutableArray*)pokemons{
    return pokemons;
}

//construtor
+(instancetype)criarCampo:(NSString*)currentNome{
    Campo * campo = [[Campo alloc] init];
    
    if(campo){
        [campo setNome:currentNome];
    }
    return campo;
}


@end
