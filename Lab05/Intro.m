//
//  Intro.m
//  Lab05
//
//  Created by Fer on 8/26/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "Intro.h"

@interface Intro ()

@end

@implementation Intro

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    if ([segue.destinationViewController isKindOfClass:[Home class]]) {
//        //SecondDisplay *destination     = [segue destinationViewController];
//        //destination.destinationTitle        = self.stTitleSelected;
//        //destination.destinationDescription  = self.stDescriptionSelected;
//        //destination.destinationPhoto        = self.stPhotoSelected;
//        
//    }
//}

- (IBAction)btnStartPressed:(id)sender {
    [self performSegueWithIdentifier:@"Home" sender:self];
}
@end
