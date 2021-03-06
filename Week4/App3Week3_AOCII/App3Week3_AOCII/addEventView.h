//
//  addEventView.h
//  App3Week3_AOCII
//
//  Created by Wayne Pennell on 2/20/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface addEventView : UIViewController
{
    IBOutlet UITextField *textField;        //Text Field for collecting events
    IBOutlet UIDatePicker *datePicker;      //Date picker
    IBOutlet UILabel *errorMessage;         //Displays an error message
    IBOutlet UILabel *swipeToAdd;           //Saves on swiper
    
    UISwipeGestureRecognizer *leftSwiper;   //Left Swiper
}

@property (nonatomic, strong) UITextView *textView;

-(IBAction)closeKeyboard:(id)sender;         //Closes the keyboard
-(IBAction)backButton:(id)sender;            //Back button

@end
