//
//  ViewController.h
//  LupinLinks
//
//  Created by Douglas Ruocco on 4/15/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface ViewController : UIViewController

<MFMailComposeViewControllerDelegate>


@property (strong, nonatomic) IBOutlet UIButton *HRPulse;
- (IBAction)HRPulseButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *Halogen;
- (IBAction)HalogenButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *Zimbra;
- (IBAction)ZimbraButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *TrialCard;
- (IBAction)TrialCardButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *eLearning;
- (IBAction)eLearningButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *PRB;
- (IBAction)PRBbutton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *POTS;
- (IBAction)POTSbutton:(id)sender;

- (IBAction)messageButton:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *LSP;
- (IBAction)lupinSPButtonPressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *paratusHealth;
- (IBAction)paratusButtonPressed:(UIButton *)sender;


@end
