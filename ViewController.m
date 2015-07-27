//
//  ViewController.m
//  LupinLinks
//
//  Created by Douglas Ruocco on 4/15/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)HRPulseButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://portal.adp.com/public/index.htm"]];
}

- (IBAction)HalogenButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://ondemand.halogensoftware.com/lupin/welcome.jsp"]];
}
- (IBAction)ZimbraButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mail.lupinusa.com"]];
}
- (IBAction)TrialCardButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://portals.trialcard.com/Lupin/AuthManuf.aspx"]];
}
- (IBAction)eLearningButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://lupin.articulate-online.com/Login.aspx"]];
}

- (IBAction)PRBbutton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://64.196.99.185/SMART/Login.aspx"]];
}

- (IBAction)POTSbutton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://lupin.pinsonault-ots.com/index.asp"]];
}

- (IBAction)messageButton:(UIButton *)sender
{
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = NULL;
    NSString *messageBody = [NSString stringWithFormat:@"Thanks for helping me make our internal Lupin apps better! Please copy and paste the link you want to be added to our Lupin Links app. <br><p>Please address the email to itsupport@lupinusa.com</br></p><br>Thanks!</br><br>-Doug</br>"];
    NSArray *toAddress = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:toAddress];
    [mailcontroller setSubject:@"Lupin Links Addition Request"];
    [mailcontroller setMessageBody:messageBody isHTML:YES];
    
    // Present mail view controller on screen
    [self presentViewController:mailcontroller animated:YES completion:NULL];
}


- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)lupinSPButtonPressed:(UIButton *)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://lupinspeakerdirect.com"]];
}



- (IBAction)paratusButtonPressed:(UIButton *)sender
{
   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://lupin.paratusonline.com"]]; 
}
@end
