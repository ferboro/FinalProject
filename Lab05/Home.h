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
@property (strong, nonatomic) IBOutlet UISwitch *btnSedan;
@property (strong, nonatomic) IBOutlet UISwitch *btnCoupe;

- (IBAction)btnACPressed:(id)sender;
- (IBAction)btnTurboPressed:(id)sender;
- (IBAction)btnFWDPressed:(id)sender;
- (IBAction)btnACBizonaPressed:(id)sender;
- (IBAction)btn4CilPressed:(id)sender;
- (IBAction)btnRWDPressed:(id)sender;
- (IBAction)btnQCPressed:(id)sender;
- (IBAction)btnV6Pressed:(id)sender;
- (IBAction)btn4x4Pressed:(id)sender;
- (IBAction)btninfotainmentPressed:(id)sender;
- (IBAction)btnV8Pressed:(id)sender;
- (IBAction)btnAWDPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UISwitch *btnACPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnACBizonaPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnQCPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btninfotainmentPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnTurboPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btn4CilPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnV6Pressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnV8Pressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnFWDPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnRWDPressed;
@property (strong, nonatomic) IBOutlet UISwitch *btn4x4Pressed;
@property (strong, nonatomic) IBOutlet UISwitch *btnAWDPressed;

@property (strong, nonatomic) IBOutlet UISwitch *btnPrice1;
@property (strong, nonatomic) IBOutlet UISwitch *btnPrice2;

- (IBAction)btnPrice1Pressed:(id)sender;
- (IBAction)btnPrice2Pressed:(id)sender;


@end

#define     sedan           1
#define     coupe           2
#define     cheap           0
#define     expensive       1



