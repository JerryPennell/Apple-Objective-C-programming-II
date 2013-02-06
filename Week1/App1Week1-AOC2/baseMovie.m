//
//  baseMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "baseMovie.h"

@implementation baseMovie

//synthesize creates get and set methods for each property
@synthesize contentRating, starRating, ticketPrice, movieTimeDuration, numberOfSequels;

//         --- initialize base instance ---
//         --- Mutator methods          ---

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setContentRating:nil];
        [self setStarRating:nil];
        [self setTicketPrice:0];
        [self setMovieTimeDuration:0];
        [self setNumberOfSequels:0];
    }
    return self;
}

 //Calculation method for ticket price
-(void)calcTicketPrice;
{
    NSLog(@"This movie has a ticket price of %f dollars", ticketPrice);
}

//Calculation method for movie time
-(void)calcMovieTimeDurration;
{
    NSLog(@"If you stay till the end you will have spent %i minutes watching the movie.", movieTimeDuration);
}

//Calculation method for number of sequels
-(void)calcNumberOfSequels;
{
    NSLog(@"There are a total of %i sequels to this movie series.", numberOfSequels);
}

@end     