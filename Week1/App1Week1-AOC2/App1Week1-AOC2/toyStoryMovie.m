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
        [self setRegularMoviePrice:10.00]; //New toystory movie
        [self setNewStudentDiscountPrice:8.00];
    }
    return self;
};

// Determine number of sequels based on positive outcome and actors - base method

-(void) calcNumberOfSequels
{
    [self setNumberOfSequels:(positiveOutcomes + starsAppearingInSequel)];
}

//method for Ticket price in base
-(void) calcTicketPrice
{
    
    //Price calculation if a student went to new toystory movie time as new student
    [self setTicketPrice:(_regularMoviePrice-_newStudentDiscountPrice)];
    NSLog(@"The Toy Story movie has a ticket price of %.2f dollars", self.ticketPrice);
}

@end
