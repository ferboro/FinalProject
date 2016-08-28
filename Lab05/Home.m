//
//  ViewController.m
//  Lab05
//
//  Created by Fer on 6/29/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "Home.h"

@interface Home ()

@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;


@end

bool caracteristicasdeauto[12]={0,0,0,0,0,0,0,0,0,0,0,0};

uint8_t tipo_auto = 0;
@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    //[self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
//-------------------------------------------------------------------------------
- (IBAction)btnSedanPressed:(id)sender {
    tipo_auto = sedan;
    _btnCoupe.on = false;
    _btnCamioneta.on = false;
    _btnPickup.on = false;
}
- (IBAction)btnCoupePressed:(id)sender {
    tipo_auto = coupe;
    _btnSedan.on = false;
    _btnCamioneta.on = false;
    _btnPickup.on = false;
}
- (IBAction)btnCamionetaPressed:(id)sender {
    tipo_auto = camioneta;
    _btnCoupe.on = false;
    _btnSedan.on = false;
    _btnPickup.on = false;
}
- (IBAction)btnPickupPressed:(id)sender {
    tipo_auto = pickup;
    _btnCoupe.on = false;
    _btnCamioneta.on = false;
    _btnSedan.on = false;
}
//- (void)initController {
//    self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Jalisco", @"Quintana Roo", @"Oaxaca", @"Chiapas", @"Sonora", nil];
//    self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"jalisco.png", @"quintanaroo.png", @"oaxaca.png", @"chiapas.png", @"sonora.png", nil];
//    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Destino de lujo para almas aventureras que buscan libertad", @"Destino de lujo para almas aventureras que buscan libertad", @"Destino de lujo para almas aventureras que buscan libertad", @"Destino de lujo para almas aventureras que buscan libertad", @"Destino de lujo para almas aventureras que buscan libertad", nil];
//}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
////-------------------------------------------------------------------------------
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.destinationTitles.count;
//}
////-------------------------------------------------------------------------------
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 190;
//}
////-------------------------------------------------------------------------------
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    //Initialize cells
//    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
//    
//    if (cell == nil) {
//        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
//        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
//    }
//    //Fill cell with info from arrays
//    cell.lblDestinationTitle.text   = self.destinationTitles[indexPath.row];
//    cell.lblDescription.text        = self.destinationDescriptions[indexPath.row];
//    cell.imgDestination.image       = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
//    
//    return cell;
//}
////-------------------------------------------------------------------------------
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    self.stTitleSelected        = self.destinationTitles[indexPath.row];
//    //self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
//    //self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
//    [self performSegueWithIdentifier:@"SecondDisplay" sender:self];
//}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[SecondDisplay class]]) {
        SecondDisplay *destination     = [segue destinationViewController];
        destination.tipo_de_auto        = tipo_auto;
        
        //destination.destinationDescription  = self.stDescriptionSelected;
        //destination.destinationPhoto        = self.stPhotoSelected;
        
    }
}

/**********************************************************************************************/
//#pragma mark - Actions methods
/**********************************************************************************************/
- (IBAction)btnSearchPressed:(id)sender {
//    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SecondDisplay"];
//    [self presentViewController:vc animated:YES completion:nil];
    [self performSegueWithIdentifier:@"SecondDisplay" sender:self];
}
- (IBAction)btnACPressed:(id)sender {
    caracteristicasdeauto[0]= !caracteristicasdeauto[0];
}

- (IBAction)btnTurboPressed:(id)sender {
    caracteristicasdeauto[1]= !caracteristicasdeauto[1];
}

- (IBAction)btnFWDPressed:(id)sender {
    caracteristicasdeauto[2]= !caracteristicasdeauto[2];
}

- (IBAction)btnACBizonaPressed:(id)sender {
    caracteristicasdeauto[3]= !caracteristicasdeauto[3];
}

- (IBAction)btn4CilPressed:(id)sender {
    caracteristicasdeauto[4]= !caracteristicasdeauto[4];
}

- (IBAction)btnRWDPressed:(id)sender {
    caracteristicasdeauto[5]= !caracteristicasdeauto[5];
}

- (IBAction)btnQCPressed:(id)sender {
    caracteristicasdeauto[6]= !caracteristicasdeauto[6];
}

- (IBAction)btnV6Pressed:(id)sender {
    caracteristicasdeauto[7]= !caracteristicasdeauto[7];
}

- (IBAction)btn4x4Pressed:(id)sender {
    caracteristicasdeauto[8]= !caracteristicasdeauto[8];
}

- (IBAction)btninfotainmentPressed:(id)sender {
    caracteristicasdeauto[9]= !caracteristicasdeauto[9];
}

- (IBAction)btnV8Pressed:(id)sender {
    caracteristicasdeauto[10]= !caracteristicasdeauto[10];
}

- (IBAction)btnAWDPressed:(id)sender {
    caracteristicasdeauto[11]= !caracteristicasdeauto[11];
}
@end
