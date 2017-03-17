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


/*
#pragma setMethods
-(void)setName:(NSString *)currentName{
    name = currentName;
}

-(void)setLeader:(NSString *)currentLeader{
    leader = currentLeader;
}

-(NSString *) name{
    return name;
}

-(NSString *) leader{
    return leader;
}
 */


