//
//  addEventView.m
//  App3Week3_AOCII
//
//  Created by Wayne Pennell on 2/20/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "addEventView.h"
#import "ViewController.h"

@interface addEventView ()

@end

@implementation addEventView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad

{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Don't let date go past current date
    NSDate *todaysDate = [NSDate date];
    datePicker.minimumDate = todaysDate;
    
    
}

//Close keyboard button
-(IBAction)closeKeyboard:(id)sender
{
    [self.view endEditing:YES];
}

//Back button in case you don't want to add an event
-(IBAction)goBackBtn:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


//Save the current Event
-(IBAction)saveAnEvent:(id)sender{
    
    if ([textField.text length] > 0) {
    
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMMM d, YYYY 'at' hh:mm a"];
        NSString *strDate = [formatter stringFromDate:datePicker.date];
        NSString *theText = textField.text;
        NSString *dateStr = strDate;
        self.textView.text = [[NSString alloc] initWithFormat:@"Event: %@ is scheduled for \n %@ \n\n%@", theText, dateStr, self.textView.text];
        [self dismissViewControllerAnimated:true completion:nil];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

