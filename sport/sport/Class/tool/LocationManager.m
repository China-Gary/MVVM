//
//  LocationManager.m
//  sport
//
//  Created by Erha on 2018/6/11.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "LocationManager.h"
@interface LocationManager ()<CLLocationManagerDelegate>

@property (nonatomic, strong) LocationRequestBlock locationBlock;
@property (nonatomic, strong) AddressRequestBlock addressBlock;

@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) CLGeocoder *geocoder;

@end
@implementation LocationManager
+ (LocationManager *)sharedInstance {
    static dispatch_once_t pred = 0;
    __strong static LocationManager *_sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        [self.locationManager requestWhenInUseAuthorization];
    }
    return self;
}

- (void)requestLocationCoordinate:(LocationRequestBlock)block {
    self.locationBlock = block;
    [self startLocation];
}

- (void)requestLocationAddress:(AddressRequestBlock)block {
    self.addressBlock = block;
    [self startLocation];
}

- (void)startLocation {
    [_locationManager startUpdatingLocation];
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations {
    CLLocation *location = locations.lastObject;
    [_locationManager stopUpdatingLocation];
    
    if (_locationBlock) {
        _locationBlock(YES, location);
    }
    
    if (!_addressBlock) {
        return;
    }
    
    _geocoder = [[CLGeocoder alloc] init];
    [_geocoder reverseGeocodeLocation:location completionHandler:^(NSArray* placemarks, NSError* error){
        MKPlacemark *placemark =[placemarks objectAtIndex:0];
        if (placemark.subLocality) {
            NSString *locality = placemark.locality ? placemark.locality : @"";
            NSString *subLocality = placemark.subLocality ? placemark.subLocality : @"";
            NSString *thoroughfare = placemark.thoroughfare ? placemark.thoroughfare : @"";
            NSString *subThoroughfare = placemark.subThoroughfare ? placemark.subThoroughfare : @"";
            
            NSString *address = [NSString stringWithFormat:@"%@%@%@",subLocality, thoroughfare, subThoroughfare];
            
            self.addressBlock(YES, location, locality, address);
        }else {
            
        }
    }];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
    NSLog(@"location manager error: %@", [error description]);
    
    if (_addressBlock) {
        _addressBlock(NO, nil, nil, nil);
    }
    if (_locationBlock) {
        _locationBlock(NO, nil);
    }
}
@end
