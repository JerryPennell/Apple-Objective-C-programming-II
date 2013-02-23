//
//  ViewController.h
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "movieFactory.h"
#import "infoButtonViewController.h"
#import "baseMovie.h"


@interface ViewController : UIViewController
{
    //Interface buttons
    IBOutlet UIButton *harryPotterMovieButton;
    IBOutlet UIButton *toyStoryButtonButton;
    IBOutlet UIButton *dieHardMovieButton;
    IBOutlet UIStepper *stepperControl;
    int currentValue;
    float total;

}


//Actions to be sent to the ui elements
-(IBAction)onMovieClick:(id)sender;
-(IBAction)changeTheUIViewColor:(id)sender;
-(IBAction)infoButton:(id)sender;
-(IBAction)stepperBtnPressed:(id)sender;



@end