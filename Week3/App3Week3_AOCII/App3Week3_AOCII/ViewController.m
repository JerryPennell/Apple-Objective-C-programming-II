//
//  ViewController.m
//  App3Week3_AOCII
//
//  Created by Wayne Pennell on 2/20/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"
#import "addEventView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
}


//Save events that are in textview so that they stay, even on a reload of the app
-(IBAction)saveEvents:(id)sender
{
   
}


//Clear all events added
-(IBAction)clearEvents:(id)sender
{
    self.textView.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

