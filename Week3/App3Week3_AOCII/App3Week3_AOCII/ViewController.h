//
//  ViewController.h
//  App3Week3_AOCII
//
//  Created by Wayne Pennell on 2/20/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextView *textFieldForView;

-(IBAction)clearEvents:(id)sender;
-(IBAction)onClick:(id)sender;

@end
