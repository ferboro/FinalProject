//
//  DestinationDetails.m
//  Lab05
//
//  Created by Fer on 6/30/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "DestinationDetails.h"

@interface DestinationDetails ()

@end

@implementation DestinationDetails
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblTitle.text          = self.destinationTitle;
    self.lblDescription.text    = self.destinationDescription;
    self.imgDestination.image   = [UIImage imageNamed:self.destinationPhoto];
//
//    self.lblDescription.numberOfLines = 0;
//    [self.lblDescription sizeToFit];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
