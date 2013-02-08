//
//  baseMovie.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMovie : NSObject
{
    int movieEnum;
}

typedef enum {
    DIEHARD,
    HARRYPOTTER,
    TOYSTORY
} movieEnum;

//properties for rating (PG, G etc.), stars, ticket price, durration, series

@property NSArray *starsRating;      //Number of stars
@property NSString *contentRating;  //Content rating
@property float ticketPrice;        //Price of movie
@property int movieTimeDuration;   //In minutes
@property int numberOfSequels;     //Series of movies



//             --- Manipulation methods ---   

-(id)init;                       //Initialize 

-(void)calcTicketPrice;          //Calculation method for ticket price

-(void)calcMovieTimeDurration;   //Calculation method for movie time

-(void)calcNumberOfSequels;      //Calculation method for number of sequels


@end