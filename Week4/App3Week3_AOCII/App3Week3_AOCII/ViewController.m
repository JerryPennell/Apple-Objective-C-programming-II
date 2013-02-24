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

//Swipe left to load second view
-(void)onSwipeRight:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        addEventView *secondViewPopup = [[addEventView alloc] initWithNibName:@"addEventView" bundle:nil];
        secondViewPopup.textView = self.textView;
        if (secondViewPopup !=nil)
        {
            [self presentViewController:secondViewPopup animated:TRUE completion:nil];
        }
    }
}

//Save events that are in textview so that they stay, even on a reload of the app
-(IBAction)saveEvents:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults !=nil)
    {
        NSString *textViewString = self.textView.text;
        
        [defaults setObject:textViewString forKey:@"events"];
        
        //saves defaults
        [defaults synchronize];
    }
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

