//
//  baseMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "baseMovie.h"

@implementation baseMovie

//initialize creating the instance and setting price to zero
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setPriceInDollars:0];
        [self setNumOfConcessionItems:0];
    }
    return self;
}

//calculation/manipulation method to find price in dollars
-(float)calcTicketPrice;
{
    return self.priceInDollars;
}

@end