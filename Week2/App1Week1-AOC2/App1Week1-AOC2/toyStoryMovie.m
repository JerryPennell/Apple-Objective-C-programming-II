//
//  toyStoryMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "toyStoryMovie.h"

@implementation toyStoryMovie


//customizing init to set unique data members using concession types
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        self.priceInDollars = 6;
        self.titleOfMovie = @"Toy Story";
        self.concessionType = @"Prezels";
        self.numOfConcessionItems = 0;
    }
    return self;
};

//overwriting the calculation method
-(float)calcTicketPrice
{
    return [super calcTicketPrice] + (5*self.numOfConcessionItems);
}

@end
