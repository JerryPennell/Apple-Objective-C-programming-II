//
//  harryPotterMovie.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "harryPotterMovie.h"

@implementation harryPotterMovie


//customizing init to set unique data members using concession types
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        self.priceInDollars = 2.50;
        self.titleOfMovie = @"Harry Potter";
        self.concessionType = @"Candy packs";
        self.numOfConcessionItems = 0;
    }
    return self;
};

//Overriding calculation method
-(float)calcTicketPrice
{
    return [super calcTicketPrice] + (2*self.numOfConcessionItems);
}

@end



