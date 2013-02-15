//
//  baseMovie.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMovie : NSObject

//data members for the concession that are bought with the movie title
@property float priceInDollars;
@property (nonatomic, strong) NSString *titleOfMovie, *concessionType;
@property int numOfConcessionItems;

//initialize
-(id)init;

//calculation/manipulation method to find price in dollars
-(float)calcTicketPrice;

@end