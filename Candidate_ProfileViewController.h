//
//  Candidate_ProfileViewController.h
//  Candidate Profile
//
//  Created by Thomas Phillips on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Candidate_ProfileViewController : UIViewController <UIActionSheetDelegate, UIAlertViewDelegate>
{
    IBOutlet    UIWebView *webView;
}
    -(IBAction)samePage;
    -(IBAction)helloMessage;
    -(IBAction)educationPage;
@property(readonly, nonatomic) IBOutlet UIWebView *webView;

@end
