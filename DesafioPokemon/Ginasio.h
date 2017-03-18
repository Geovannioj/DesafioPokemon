//
//  Ginasio.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Ginasio : NSObject

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) Jogador *leader;

+(instancetype) criaGinasio:(NSString *)nome;
+(instancetype) criaGinasio:(NSString *)nome comLider:(Jogador*)lider;
-(void) setName:(NSString *)name;
-(void) setLeader:(Jogador *)leader;

@end
