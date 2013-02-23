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
        currentValue = stepControl.value;
    }
}


-(IBAction)onMovieClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    switch (button.tag) {
        case 0:
        {
            
            dieHardMovieButton.enabled = NO;
            harryPotterMovieButton.enabled = YES;
            toyStoryButtonButton.enabled = YES;
            stepperControl.value = 0;
            dieHardMovie *dieHardTicket = (dieHardMovie*)[movieFactory createNewMovie:DIEHARD];
            [dieHardTicket setTitleOfMovie:@"Die Hard"];
            [dieHardTicket setTextField:[NSString stringWithFormat:@"%i", currentValue]];
            [dieHardTicket setConcessionType:@"Hot dogs"];
            [dieHardTicket setNumOfConcessionItems:[dieHardTicket.textField.text intValue]];
            
            total = [dieHardTicket calcTicketPrice];
            dieHardTicket.textField.text = [[NSString alloc] initWithFormat: @"The price for %@ plus %.0f %@ is $%.2f", dieHardTicket.titleOfMovie, stepperControl.value, dieHardTicket.concessionType, total];
            
            [dieHardTicket showDetailsForSelectedMovie];
            
          
        }
            break;
            
        case 1:
        {
           
            harryPotterMovieButton.enabled = YES;
            dieHardMovieButton.enabled = NO;
            toyStoryButtonButton.enabled = YES;
            stepperControl.value = 0;
            harryPotterMovie *harryPotterTicket = (harryPotterMovie*)[movieFactory createNewMovie:HARRYPOTTER];
            [harryPotterTicket setTextField:[NSString stringWithFormat:@"%i", currentValue]];
            [harryPotterTicket setTitleOfMovie:@"Harry Potter"];
            [harryPotterTicket setConcessionType:@"Pop corn"];
            [harryPotterTicket setNumOfConcessionItems:[harryPotterTicket.textField.text intValue]];
            
            total = [harryPotterTicket calcTicketPrice];
            harryPotterTicket.textField.text = [[NSString alloc] initWithFormat: @"The price for %@ plus %.0f %@ is $%.2f", harryPotterTicket.titleOfMovie, stepperControl.value, harryPotterTicket.concessionType, total];
            
            [harryPotterTicket showDetailsForSelectedMovie];
        }
            break;
            
        case 2:
        {
          
            dieHardMovieButton.enabled = YES;
            harryPotterMovieButton.enabled = YES;
            toyStoryButtonButton.enabled= NO;
            stepperControl.value = 0;
            toyStoryMovie *toyStoryTicket = (toyStoryMovie*)[movieFactory createNewMovie:TOYSTORY];
            [toyStoryTicket setTitleOfMovie:@"Toy Story"];
            [toyStoryTicket setConcessionType:@"Sodas"];
            [toyStoryTicket setTextField:[NSString stringWithFormat:@"%i", currentValue]];
            [toyStoryTicket setNumOfConcessionItems:[toyStoryTicket.textField.text intValue]];
            
            total = [toyStoryTicket calcTicketPrice];
            toyStoryTicket.textField.text = [[NSString alloc] initWithFormat: @"The price for %@ plus %.0f %@ is $%.2f", toyStoryTicket.titleOfMovie, stepperControl.value, toyStoryTicket.concessionType, total];
            [toyStoryTicket showDetailsForSelectedMovie];
            
        }
            break;
            
        default:
            break;
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



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

