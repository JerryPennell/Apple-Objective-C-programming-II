//
//  dieHardMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "dieHardMovie.h"

@implementation dieHardMovie

@synthesize matineeTicketPrice, studentDiscountPrice, regularMoviePrice;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setMatineeTicketPrice:8.00];     //Early ticket price
        [self setStudentDiscountPrice:4.00];   //Price with student discount
        [self setRegularMoviePrice:10.00];     //Regular ticket price
        
    }
    return self;
};

//method for Ticket price in base
-(void) calcTicketPrice
{
    
    //Price calculation if a student went to regular movie time
    [self setTicketPrice:(regularMoviePrice-studentDiscountPrice)];
    NSLog(@"The Die Hard movie has a ticket price of %.2f dollars", self.ticketPrice);
    
    
}

@end