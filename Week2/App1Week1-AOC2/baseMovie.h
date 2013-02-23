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
    TOYSTORY,
} movieEnum;

//data members for the concession that are bought with the movie title
@property float priceInDollars;
@property (nonatomic, strong) NSString *titleOfMovie, *concessionType;
@property int numOfConcessionItems;
@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UILabel *movieLabel, *consessionsLabel;
//Properties assignment fo the labels, textfield and base object

@property (nonatomic, strong) baseMovie *selectedMovie;

//initialize
-(id)init;


//calculation/manipulation method to find price in dollars
-(float)calcTicketPrice;

-(void)showDetailsForSelectedMovie;

@end