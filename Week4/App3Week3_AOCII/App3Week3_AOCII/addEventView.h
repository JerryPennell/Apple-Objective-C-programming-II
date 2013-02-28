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
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *errorMessage;
    IBOutlet UILabel *swipeToAdd;
    
    UISwipeGestureRecognizer *leftSwiper;
}

@property (nonatomic, strong) UITextView *textView;

-(IBAction)closeKeyboard:(id)sender;
-(IBAction)backButton:(id)sender;

@end
