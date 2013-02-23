//
//  movieFactory.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/21/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "movieFactory.h"

@implementation movieFactory

+(baseMovie *)createNewMovie:(int)movieType
{
    //Init for enum elements
    
    if (movieType == DIEHARD) {
        return [[dieHardMovie alloc] init];
        
    } else if (movieType == HARRYPOTTER) {
        return [[harryPotterMovie alloc] init];
        
    } else if (movieType == TOYSTORY) {
        return [[toyStoryMovie alloc] init];
    }
    
    else return nil;
    
    
}

@end
