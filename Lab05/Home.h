//
//  ViewController.h
//  Lab05
//
//  Created by Fer on 6/29/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellHome.h"
#import "DestinationDetails.h"
#import "SecondDisplay.h"


@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnSearch;
- (IBAction)btnSearchPressed:(id)sender;

- (IBAction)btnSedanPressed:(id)sender;
- (IBAction)btnCoupePressed:(id)sender;
- (IBAction)btnCamionetaPressed:(id)sender;
- (IBAction)btnPickupPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *btnSedan;
@property (strong, nonatomic) IBOutlet UISwitch *btnCoupe;
@property (strong, nonatomic) IBOutlet UISwitch *btnCamioneta;
@property (strong, nonatomic) IBOutlet UISwitch *btnPickup;

@end

#define     sedan           1
#define     coupe           2
#define     camioneta       3
#define     pickup          4
