//
//  Ginasio.h
//  DesafioPokemon
//
//  Created by Geovanni Oliveira de Jesus on 15/03/17.
//  Copyright © 2017 Geovanni Oliveira de Jesus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ginasio : NSObject{
    
    NSString *name;
    NSString *leader;
}

#pragma setMethods
-(void) setName: (NSString *) currentName;
-(void) setLeader:(NSString*) currentLeader;

#pragma getMethods
-(NSString *) name;
-(NSString *) leader;

@end
