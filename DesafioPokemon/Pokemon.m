//
//  Pokemon.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

//setters
-(void)setTipo:(NSString*)currentTipo{
    tipo = currentTipo;
}
-(void)setLevel:(NSInteger)currentLevel{
    level = currentLevel;
}
-(void)setExperiencia:(NSInteger)currentExperiencia{
    experiencia = currentExperiencia;
}
-(void)setNome:(NSString*)currentNome{
    nome = currentNome;
}
-(void)addExperiencia{
    experiencia += 35;
}
-(void)addExperienciaDerrota{
    experiencia += 10;
}
//geters
-(NSInteger)level{
    return level;
}

-(NSString*)nome{
    return nome;
}

-(NSString*)tipo{
    return tipo;
}

-(NSInteger) experiencia{
    return experiencia;
}

//construtor
+(instancetype)criarPokemon:(NSString*)currentNomePokemon noLevel:(NSInteger)currentLevel comExperiencia:(NSInteger)currentExperiencia comTipo:(NSString*)currentTipo{
    
    Pokemon *pokemon = [[Pokemon alloc]init];
    if(pokemon){
        [pokemon setNome:currentNomePokemon];
        [pokemon setLevel:currentLevel];
        [pokemon setExperiencia:currentExperiencia];
        [pokemon setTipo:currentTipo];
    }
    return pokemon;
}

@end
