//
//  Ginasio.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ginasio : NSObject

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *leader;

-(instancetype) criaGinasio:(NSString *)nome;
-(void) setName:(NSString *)name;
-(void) setLeader:(NSString *)leader;

@end
