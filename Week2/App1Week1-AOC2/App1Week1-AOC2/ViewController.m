//
//  ViewController.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)stepperBtnPressed:(id)sender;
{
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl !=nil)
    {
        int currentValue = stepControl.value;
        
        self.textField.text = [NSString stringWithFormat:@"%i", currentValue];
    }
}


//When the dieHard movie button is pressed
-(IBAction)dieHardMoviePressed:(id)sender
{
    self.selectedMovie = [[dieHardMovie alloc] init];
    [self showDetailsForSelectedMovie];
    dieHardMovieButton.enabled = NO;
    harryPotterMovieButton.enabled = YES;
    toyStoryButtonButton.enabled = YES;
    stepperControl.value = 0;
}

//When the harry potter movie is pressed
-(IBAction)harryPotterMoviePressed:(id)sender
{
    self.selectedMovie = [[harryPotterMovie alloc] init];
    [self showDetailsForSelectedMovie];
    dieHardMovieButton.enabled = YES;
    harryPotterMovieButton.enabled = NO;
    toyStoryButtonButton.enabled = YES;
    stepperControl.value = 0;
}

//When the toy story movie button is pressed
-(IBAction)toyStoryMoviePressed:(id)sender
{
    self.selectedMovie = [[toyStoryMovie alloc] init];
    [self showDetailsForSelectedMovie];
    dieHardMovieButton.enabled = YES;
    harryPotterMovieButton.enabled = YES;
    toyStoryButtonButton.enabled = NO;
    stepperControl.value = 0;
}


//Calculation is sent to the text field from the calculation
-(IBAction)calculationPressed:(id)sender
{
    int numOfConcessionItems = [self.textField.text intValue];
    self.selectedMovie.numOfConcessionItems = numOfConcessionItems;
    float total = [self.selectedMovie calcTicketPrice];
    if ([self.selectedMovie.titleOfMovie isEqual: @"Harry Potter"]) {
        self.textField.text = [[NSString alloc] initWithFormat: @"The price for %.0f %@ and the movie is $%.2f", stepperControl.value, self.selectedMovie.concessionType, total];
    } else {
        self.textField.text = [[NSString alloc] initWithFormat: @"The price for the movie plus %.0f %@ is $%.2f", stepperControl.value, self.selectedMovie.concessionType, total];
    }
    
}
//Method that changes out the UI color background
-(IBAction)changeTheUIViewColor:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl !=nil)
    {
        if (segmentControl.selectedSegmentIndex == 0) {
            self.view.backgroundColor = [UIColor blueColor];
        } else if (segmentControl.selectedSegmentIndex == 1) {
            self.view.backgroundColor = [UIColor yellowColor];
        } else if (segmentControl.selectedSegmentIndex == 2) {
            self.view.backgroundColor = [UIColor redColor];
        }
    }
}


//Information button that calls to the next screeen
-(IBAction)infoButton:(id)sender
{
    infoButtonViewController *viewController = [[infoButtonViewController alloc] initWithNibName:@"infoButtonView" bundle:nil];
    if (viewController !=nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
        
    }
}

//Shows the independent details of concessions for each movie 
-(void)showDetailsForSelectedMovie
{
    self.movieLabel.text = self.selectedMovie.titleOfMovie;
    self.consessionsLabel.text = [[NSString alloc] initWithFormat:@"Number of %@:", self.selectedMovie.concessionType];
    self.textField.text = [[NSString alloc] initWithFormat:@"%i", self.selectedMovie.numOfConcessionItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

