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
    
    //Sets left swipe gesture
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeLeft:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeToAdd addGestureRecognizer:leftSwiper];
    
    //Set minimum date as today's date
    NSDate *todaysDate = [NSDate date];
    datePicker.minimumDate = todaysDate;

}

//Close keyboard button
-(IBAction)closeKeyboard:(id)sender
{
    [self.view endEditing:YES];
}

//Back button in case you don't want to add an event
-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

//Adds event to textview on first view
-(void)onSwipeLeft:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        //If text field is blank, throw up an error message letting the user know
        if([textField.text length] == 0)
        {
            errorMessage.textColor = [UIColor redColor];
            errorMessage.text = @"*Please Enter An Event Title";
            
        } else if ([textField.text length] > 0) {
            
            //Format date
            NSDateFormatter *f = [[NSDateFormatter alloc] init];
            [f setDateFormat:@"MMMM d, YYYY 'at' hh:mm a"];
            NSString *s = [f stringFromDate:datePicker.date];
            
            NSString *textString = textField.text;
            NSString *dateString = s;
            
            //Add new info to textview
            self.textView.text = [[NSString alloc] initWithFormat:@"Event: %@ is scheduled for \n %@ \n\n%@", textString, dateString, self.textView.text];;
            
            //Close current view
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

