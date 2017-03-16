//
//  Ginasio.m
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import "Ginasio.h"

@implementation Ginasio

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
@end
