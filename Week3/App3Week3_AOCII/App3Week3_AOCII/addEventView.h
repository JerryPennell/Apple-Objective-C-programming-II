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

}

@property (nonatomic, strong) UITextView *textView;

-(IBAction)saveAnEvent:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)goBackBtn:(id)sender;

@end
