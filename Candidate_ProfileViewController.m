//
//  Candidate_ProfileViewController.m
//  Candidate Profile
//
//  Created by Thomas Phillips on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Candidate_ProfileViewController.h"

@implementation Candidate_ProfileViewController

@synthesize webView;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(IBAction)educationPage
{
    // Load Education Info
    NSString *educationFile = [[NSBundle mainBundle] pathForResource:@"education" ofType:@"html"];
	NSString *educationText = [NSString stringWithContentsOfFile:educationFile encoding:NSUTF8StringEncoding error:nil];
    [self.webView loadHTMLString:educationText baseURL:nil];
    [self.view addSubview:webView];
}

-(IBAction)samePage
{
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"This is page 1" 
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                         destructiveButtonTitle:nil
                                              otherButtonTitles:nil];
    [sheet showInView:self.view];
}

-(IBAction)helloMessage
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yo!"
                                                    message:@"Currently on Page 1"
                                                   delegate:self
                                          cancelButtonTitle:@"Cool"
                                          otherButtonTitles: nil];
    [alert show];
}
- (void)viewDidLoad
{/*
    // Load Education Info
    NSString *educationFile = [[NSBundle mainBundle] pathForResource:@"education" ofType:@"html"];
	NSString *educationText = [NSString stringWithContentsOfFile:educationFile encoding:NSUTF8StringEncoding error:nil];
    [self.webView loadHTMLString:educationText baseURL:nil];
    [self.view addSubview:webView];
   */
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
