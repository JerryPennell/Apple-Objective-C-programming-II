//
//  harryPotterMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "harryPotterMovie.h"

@implementation harryPotterMovie

@synthesize ageType, runTime, adsTime, movieGenreStr;

//init for harryPotterMovie
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        //setting data members to defaults
        [self setAgeType:FAMILY];      //Default age type
        [self setRunTime:120];         //Minutes
        [self setAdsTime:20];          //Default ad time
        
    }
    return self;
};

//    ---    overwriting method  ---

-(void) calcMovieTimeDurration
{
    //If the age is appropriate for Family
    
    if (ageType == FAMILY){
        [self setAdsTime:30];
        [self setMovieGenreStr:@"Family"];
        [self setMovieTimeDuration:(self.runTime + (adsTime))];
        
    //If the age is appropriate for Action
        
    } else if (ageType == ACTION){
        [self setAdsTime:10];
        self.movieTimeDuration = 160;
        [self setMovieGenreStr:@"Action"];
        [self setMovieTimeDuration:(self.runTime + (adsTime))];
    
    //If the age is appropriate for Fantasy
        
    } else if (ageType == FANTASY){
        self.movieTimeDuration = 220;
        [self setMovieGenreStr:@"Fantasy"];
        [self setMovieTimeDuration:(self.runTime + (adsTime))];
        
    } else{
        
        NSLog(@"No movie genre found.");
    }
    
}

@end



