//
//  Pokemon.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject{
    NSString * tipo;
    NSInteger level;
    NSInteger experiencia;
    NSString * nome;
}

// getters
-(NSInteger)level;

// setters
-(void)setTipo:(NSString*)currentTipo;
-(void)setLevel:(NSInteger)currentLevel;
-(void)setExperiencia:(NSInteger)currentExperiencia;
-(void)setNome:(NSString*)currentNome;

//Construtor
+(instancetype)criarPokemon:(NSString*)currentNomePokemon noLevel:(NSInteger)currentLevel comExperiencia:(NSInteger)currentExperiencia comTipo:(NSString*)currentTipo;

@end
