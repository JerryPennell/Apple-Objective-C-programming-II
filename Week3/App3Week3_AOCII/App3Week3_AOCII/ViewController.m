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
	// Do any additional setup after loading the view, typically from a nib
    
}


//Clear all events added
-(IBAction)clearEvents:(id)sender
{
    self.textFieldForView.text = @"";
}

//clickable button to change view with animation
-(IBAction)onClick:(id)sender;
{
    UIButton *btn = (UIButton*)sender;
    if(btn != nil)
    {
        if(btn.tag == 2){
            addEventView *addlView = [[addEventView alloc] initWithNibName:@"addEventView" bundle:nil];
            addlView.textFieldForView = self.textFieldForView;
            if (addlView != nil)
            {
                [self presentViewController:addlView animated:(true) completion:nil];
            }
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

