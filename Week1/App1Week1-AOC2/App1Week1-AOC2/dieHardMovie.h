//
//  dieHardMovie.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "baseMovie.h"

@interface dieHardMovie : baseMovie


//Different movie price data based on discount scale

@property float matineeTicketPrice;   //Cheapest price 
@property float studentDiscountPrice; //4 dollars off
@property float regularMoviePrice;    //Standard price

@end
