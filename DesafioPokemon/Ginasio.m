//
//  Ginasio.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Ginasio.h"

@implementation Ginasio

@synthesize name = _name;
@synthesize leader = _leader;

-(instancetype) criaGinasioNome: (NSString *)nome{
    
    Ginasio *ginasio = [[Ginasio alloc]init];
    if(ginasio){
        
        [ginasio setName: nome];
    }
    return ginasio;
}


-(void) setName:(NSString *)name{
    
    if(name.length > 0 && ![name isEqualToString:@" "]){
        _name = name;
    }else{
        NSLog(@"O nome está inválido!");
    }
}

-(void) setLeader:(NSString *)leader{
    if(leader.length > 0 && ![leader isEqualToString:@" "]){
        _leader = leader;
    }else{
        NSLog(@"O nome do líder está vazio!");
    }
}
@end


