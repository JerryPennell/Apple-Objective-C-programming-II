//
//  harryPotterMovie.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "baseMovie.h"

@interface harryPotterMovie : baseMovie
{
    int total;

}


//Movie Genres

typedef enum {   
    ACTION,
    FANTASY,
    ANIMATION,
    FAMILY
} moveGenre;


@property int ageType;  //Appropriate age groups
@property int runTime;  //Time the movie plays with credits included
@property int adsTime;  //Time the actual movie not playing

@property float newStudentDiscountPrice; //4 dollars off
@property float regularMoviePrice;    //Standard price

//String of the movie generes

@property NSString* movieGenreStr;

@end