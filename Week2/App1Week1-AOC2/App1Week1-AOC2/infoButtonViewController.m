//
//  infoButtonViewController.m
//  App1Week1-AOC2
//
//  Created by Wayne Pennell on 2/13/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "infoButtonViewController.h"

@interface infoButtonViewController ()

@end

@implementation infoButtonViewController

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
	// Do any additional setup after loading the view.
}

//Create a back button
-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
