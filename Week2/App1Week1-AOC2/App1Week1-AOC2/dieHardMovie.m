//
//  dieHardMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "dieHardMovie.h"

@implementation dieHardMovie

//customizing init to set unique data members using concession types
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        self.priceInDollars = 3;
        self.numOfConcessionItems = 1;
        self.titleOfMovie = @"Die Hard";
        self.concessionType = @"refills";
    }
    return self;
};

//overwriting the calculation method
-(float)calcTicketPrice
{
    return [super calcTicketPrice] * self.numOfConcessionItems;
}

@end