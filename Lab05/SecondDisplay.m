//
//  SecondDisplay.m
//  Lab05
//
//  Created by Fer on 6/30/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "SecondDisplay.h"
#import "Home.h"

@interface SecondDisplay ()

@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;

@property NSMutableArray *m240i;
@end
char m240i[8] = {1,0,0,0,0,0,0,0};
extern char caracteristicasdeauto[8];//{0,0,0,0,0,0,0,0};
                                     // | | | | | | | '-Price
                                     // | | | | | | '- Traccion
                                     // | | | | | '- Size of motor
                                     // | | | | '- Turbo or Not
                                     // | | | '- Infotainment or not
                                     // | | '- QC(Quemacoco) or not
                                     // | '- Air Conditioner or Bizone
                                     //  '-Type of car   sedan 1, coupe 2
@implementation SecondDisplay
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    if (caracteristicasdeauto[0] == coupe && caracteristicasdeauto[7] == cheap)
    {
        self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"BMW", @"BMW", @"Chevrolet", @"Audi", @"Audi", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"m240i.jpg", @"440i.jpg", @"camaro.jpg", @"a5.jpg", @"auditt.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"M240i", @"440i", @"Camaro", @"A5", @"TT", nil];
    }
    else if (caracteristicasdeauto[0] == coupe && caracteristicasdeauto[7] == expensive)
    {
    self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"BMW", @"BMW", @"Chevrolet", @"Audi", @"Audi", nil];
    self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"i8.jpg", @"M6.jpg", @"corvette.jpg", @"R8.jpg", @"RS5.jpg", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"i8", @"M6", @"Corvette", @"R8", @"RS5", nil];
    }
    else if (caracteristicasdeauto[0] == sedan && caracteristicasdeauto[7] == cheap)
    {
        self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"Cadillac", @"Cadillac", @"Mercedes", @"Mercedes", @"Dodge", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"ats.jpg", @"cts.jpg", @"e.jpg", @"c.jpg", @"charger.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"ATS", @"CTS", @"Clase E", @"Clase C", @"Charger", nil];
    }
    else if (caracteristicasdeauto[0] == sedan && caracteristicasdeauto[7] == expensive)
    {
        self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"Cadillac", @"Cadillac", @"Mercedes", @"Mercedes", @"Dodge", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"atsv.jpg", @"ctsv.jpg", @"eamg.jpg", @"camg.jpg", @"hellcat.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"ATS-V", @"CTS-V", @"E63 AMG", @"C63 AMG", @"Charger Hellcat", nil];
    }
    else
    {
        self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"Please make",@"a selection",nil];
    }
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.destinationTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.lblDestinationTitle.text   = self.destinationTitles[indexPath.row];
    cell.lblDescription.text        = self.destinationDescriptions[indexPath.row];
    cell.imgDestination.image       = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        = self.destinationTitles[indexPath.row];
    self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"DestinationDetails" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[DestinationDetails class]]) {
        DestinationDetails *destination     = [segue destinationViewController];
        destination.destinationTitle        = self.stTitleSelected;
        destination.destinationDescription  = self.stDescriptionSelected;
        destination.destinationPhoto        = self.stPhotoSelected;
        //probando commit
        
    }
}

@end
