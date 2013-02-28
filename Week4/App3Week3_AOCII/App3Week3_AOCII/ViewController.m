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
    
    //Set defaults from saved defaults at start
    NSUserDefaults *defaultsOnLoad = [NSUserDefaults standardUserDefaults];
    if(defaultsOnLoad != nil)
    {
        NSString *textViewString = [defaultsOnLoad objectForKey:@"events"];
        
        self.textView.text = textViewString;
    }
    
    //Sets right swipe gesture
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeRight:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeToEvents addGestureRecognizer:rightSwiper];
    
}


-(IBAction)onClick:(id)sender
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

