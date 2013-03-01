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
    
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 5.0f, 200.0f, 30.0f)];
    titleLabel.backgroundColor = [UIColor blueColor];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.text = [NSString stringWithFormat:@"AOC2 Week 1"];
    [self.view addSubview:titleLabel];
    
    //Adding colors from AOCI
    self.view.backgroundColor = [UIColor whiteColor];
    
    //    ----    DieHard Movie  ---
    
    //Movie Factory used to buy ticket for Die Hard Movie
    
    dieHardMovie *buyDieHardTicket = (dieHardMovie*)[movieFactory createNewMovie:DIEHARD];
    [buyDieHardTicket setTicketPrice:7.50];
    
    //Label to set up the scenario
    buyDieHardTicketLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 40.0f, 310.0f, 20.0f)];
    buyDieHardTicketLabel.numberOfLines = 5;
    buyDieHardTicketLabel.backgroundColor = [UIColor lightGrayColor];
    buyDieHardTicketLabel.text = [NSString stringWithFormat:@"We are going to see Die Hard."];
    [self.view addSubview:buyDieHardTicketLabel];
    
    
    if (buyDieHardTicket != nil){
        
        //An array showing ratings
        NSArray *theMovieRatings = [[NSArray alloc] initWithObjects:@"5 stars!", nil];
        [buyDieHardTicket setStarsRating:theMovieRatings];
        
        //A string showing content setting
        NSString *dieHardContentRating = @"This movie is not suitable for all audiences, 18 and up.";
        [buyDieHardTicket setContentRating:dieHardContentRating];
        
        //UI Label
        ratingLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 65.0f, 310.0f, 70.0f)];
        ratingLabel.numberOfLines = 3;
        ratingLabel.backgroundColor = [UIColor lightGrayColor];
        ratingLabel.text = [NSString stringWithFormat:@"Critics rate Die Hard as %@.", [buyDieHardTicket starsRating]];
        [self.view addSubview:ratingLabel];
        
        
        //Content Rating label for which audience
        contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 140.0f, 310.0f, 50.0f)];
        contentLabel.numberOfLines = 2;
        contentLabel.backgroundColor = [UIColor lightGrayColor];
        contentLabel.text = [NSString stringWithFormat:@"Content Rating: %@", [buyDieHardTicket contentRating]];
        
        [buyDieHardTicket setRegularMoviePrice:9.00];
        [buyDieHardTicket setTicketPrice:10.00];
        
        [self.view addSubview:contentLabel];
        
        //Calculate the price of ticket
        [buyDieHardTicket calcTicketPrice];
        
        int regularPrice = buyDieHardTicket.regularMoviePrice;
        int discountedPrice = buyDieHardTicket.studentDiscountPrice;
        
        //Label to show the ticket cost since I am a student
        ticketCostLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 195.0f, 310.0f, 80.0f)];
        ticketCostLabel.numberOfLines = 3;
        ticketCostLabel.backgroundColor = [UIColor lightGrayColor];
        ticketCostLabel.text = [NSString stringWithFormat:@"If I were not a student the regular ticket price would be $%i but with my discount it is only $%i .", regularPrice,  discountedPrice];
        [self.view addSubview:ticketCostLabel];
    }
    
    //    ----    Harry Potter Movie  ---
    
    //The Movie Factory setup for looking at a movies run time
    harryPotterMovie *startTheMovie = (harryPotterMovie*)[movieFactory createNewMovie:HARRYPOTTER];
    [startTheMovie setMovieTimeDuration:120];
    [startTheMovie setAdsTime:20];
    
    //Label setup
    startMovieLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 285.0f, 310.0f, 40.0f)];
    startMovieLabel.backgroundColor = [UIColor lightGrayColor];
    startMovieLabel.numberOfLines = 2;
    startMovieLabel.text = [NSString stringWithFormat:@"Let's see when we will get out of the movies."];
    [self.view addSubview:startMovieLabel];
    
    
    //Calculate the price of ticket - NSLOG
    [startTheMovie calcTicketPrice];
    
    if (startTheMovie !=nil)
    {
        //Cacluate the total time of the movie to see when you get out
        [startTheMovie calcMovieTimeDurration];
        
        int runTime = startTheMovie.runTime;
        NSString* movieGenreSelected = startTheMovie.movieGenreStr;
        
        //Label to show the result of the calculation which is the total play time
        harryPotterLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 330.0f, 310.0f, 55.0f)];
        harryPotterLabel.numberOfLines = 2;
        harryPotterLabel.backgroundColor = [UIColor lightGrayColor];
        harryPotterLabel.text = [NSString stringWithFormat:@"We were at a %@ movie for a total %i minutes.", movieGenreSelected, runTime];
        [self.view addSubview:harryPotterLabel];
    }
    
    //  ---  Toy Story Movie ---
    
    //Movie Factory to see if there would be a sequel 
    toyStoryMovie *toyStorySequel = (toyStoryMovie*)[movieFactory createNewMovie:TOYSTORY];
    [toyStorySequel setPositiveOutcomes:3];
    
    //Label setting up the scenario
    determineSequelLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 390.0f, 310.0f, 60.0f)];
    determineSequelLabel.backgroundColor = [UIColor lightGrayColor];
    determineSequelLabel.numberOfLines = 2;
    determineSequelLabel.text = [NSString stringWithFormat:@"Let's see if there would be a sequel to Toy Story.."];
    [self.view addSubview:determineSequelLabel];
    
    //NSlogs a ticket price
    [toyStorySequel calcTicketPrice];
    
    if (toyStorySequel != nil){
        
        //Calculate the posibility of a sequel 
        [toyStorySequel calcNumberOfSequels];
        
        int positveOutcomes = toyStorySequel.positiveOutcomes;
        int starsInSequel = toyStorySequel.starsAppearingInSequel;
        
        //Will there be a sequel to Toy story???
        toyStoryseqLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 460.0f, 310.0f, 65.0f)];
        toyStoryseqLabel.numberOfLines = 3;
        toyStoryseqLabel.backgroundColor = [UIColor lightGrayColor];
        toyStoryseqLabel.text = [NSString stringWithFormat:@"With %i stars appearing and %i positive outcomes perhaps this indicates a sequel?", starsInSequel, positveOutcomes];
        [self.view addSubview:toyStoryseqLabel];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
