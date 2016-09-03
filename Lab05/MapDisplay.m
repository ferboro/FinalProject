//
//  MapDisplay.m
//  Lab05
//
//  Created by Fer on 9/2/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "MapDisplay.h"
@import GoogleMaps;

@interface MapDisplay ()

@end

@implementation MapDisplay{
    GMSMapView *mapView_;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //[self createMap];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    //self.lblDestinationTitle.text          = self.destinationTitle;
    if([self.destinationTitle  isEqual: @"BMW"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.674900
                                                                longitude:-103.422796
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.674900, -103.422796);
        marker.title = @"BMW";
        marker.snippet = @"NAOSA PREMIUM";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Chevrolet"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.715394
                                                                longitude:-103.387729
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.715394, -103.387729);
        marker.title = @"Chevrolet";
        marker.snippet = @"FLOSOL AMERICAS";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Audi"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.680960
                                                                longitude:-103.429735
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.680960, -103.429735);
        marker.title = @"Audi";
        marker.snippet = @"Center Galerias";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Cadillac"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.717228
                                                                longitude:-103.426141
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.717228, -103.426141);
        marker.title = @"Cadillac";
        marker.snippet = @"Solana Periférico";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Dodge"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.666089
                                                                longitude:-103.348421
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.666089, -103.348421);
        marker.title = @"Dodge";
        marker.snippet = @"SyC Motors";
        marker.map = mapView_;
    }
    else
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.703707
                                                                longitude:-103.413629
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.703707, -103.413629);
        marker.title = @"Mercedes";
        marker.snippet = @"Star Patria";
        marker.map = mapView_;
    }
}

- (void)createMap {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.6947103
                                                            longitude:-103.4203145
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.6947103, -103.4203145);
    marker.title = @"UAG";
    marker.snippet = @"Clase de Maestría";
    marker.map = mapView_;
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
