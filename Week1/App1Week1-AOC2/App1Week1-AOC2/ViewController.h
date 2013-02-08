//
//  ViewController.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "movieFactory.h"

@interface ViewController : UIViewController
{
    UILabel *titleLabel;
    
// -- Labels for Factory Project
    
    UILabel *ratingLabel;           // Ratings label
    UILabel *buyDieHardTicketLabel; // Get a ticket for Die Hard movie
    UILabel *contentLabel;          // What is the content of the movie label
    UILabel *ticketCostLabel;       // How much is this ticket costing us label
    UILabel *startMovieLabel;       // When is the start of the movie label
    UILabel *harryPotterLabel;      // Harry Potter label how long were we there
    UILabel *determineSequelLabel;  // With there be a toy story sequel
    UILabel *toyStoryseqLabel;      // Lets find out if there are enough outcomes and stars
}

@end