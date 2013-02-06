//
//  movieFactory.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseMovie.h"
#import "dieHardMovie.h"
#import "harryPotterMovie.h"
#import "toyStoryMovie.h"

@interface movieFactory : NSObject

+(baseMovie *)createNewMovie: (int)movieType;

@end
