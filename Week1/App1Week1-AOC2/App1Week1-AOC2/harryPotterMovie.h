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
    int movieGenre;
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

//String of the movie generes

@property NSString* movieGenreStr;

@end