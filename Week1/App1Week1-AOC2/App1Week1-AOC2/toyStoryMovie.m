//
//  toyStoryMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "toyStoryMovie.h"

@implementation toyStoryMovie

@synthesize positiveOutcomes, starsAppearingInSequel;

//init data members
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setPositiveOutcomes:2];       //At least 2 positive outcomes
        [self setStarsAppearingInSequel:0]; //Number of actors to appear in the sequel
    }
    return self;
};

//overwriting method - Determine number of sequels based on positive outcome and actors

-(void) calcNumberOfSequels
{
    [self setNumberOfSequels:(positiveOutcomes + starsAppearingInSequel)];
}

@end
