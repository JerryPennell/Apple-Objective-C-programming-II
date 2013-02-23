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
        [self setTitleOfMovie:nil];
        [self setConcessionType:nil];
        [self setTextField:nil];
        [self setSelectedMovie:nil];
    }
    return self;
}

//calculation/manipulation method to find price in dollars
-(float)calcTicketPrice;
{
    return self.priceInDollars;
}


//Shows the independent details of concessions for each movie
-(void)showDetailsForSelectedMovie
{
    self.movieLabel.text = self.selectedMovie.titleOfMovie;
    self.consessionsLabel.text = [[NSString alloc] initWithFormat:@"Number of %@:", self.selectedMovie.concessionType];
    self.textField.text = [[NSString alloc] initWithFormat:@"%i", self.selectedMovie.numOfConcessionItems];
}

@end