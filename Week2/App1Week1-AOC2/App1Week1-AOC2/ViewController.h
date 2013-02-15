//
//  ViewController.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dieHardMovie.h"
#import "harryPotterMovie.h"
#import "toyStoryMovie.h"
#import "infoButtonViewController.h"
#import "baseMovie.h"


@interface ViewController : UIViewController
{
    //Interface buttons
    IBOutlet UIButton *harryPotterMovieButton;
    IBOutlet UIButton *toyStoryButtonButton;
    IBOutlet UIButton *dieHardMovieButton;
    IBOutlet UIStepper *stepperControl;

}
//Properties assignment fo the labels, textfield and base object
@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UILabel *movieLabel, *consessionsLabel;
@property (nonatomic, strong) baseMovie *selectedMovie;


//Actions to be sent to the ui elements
-(IBAction)harryPotterMoviePressed:(id)sender;
-(IBAction)toyStoryMoviePressed:(id)sender;
-(IBAction)dieHardMoviePressed:(id)sender;
-(IBAction)calculationPressed:(id)sender;
-(IBAction)changeTheUIViewColor:(id)sender;
-(IBAction)infoButton:(id)sender;
-(IBAction)stepperBtnPressed:(id)sender;

@end