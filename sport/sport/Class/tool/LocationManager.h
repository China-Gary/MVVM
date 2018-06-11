//
//  LocationManager.h
//  sport
//
//  Created by Erha on 2018/6/11.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
typedef void (^LocationRequestBlock)(BOOL isSuccess, CLLocation *currentLocation);
typedef void (^AddressRequestBlock)(BOOL isSuccess, CLLocation *currentLocation, NSString *city, NSString *address);
@interface LocationManager : NSObject<MKMapViewDelegate>
+ (LocationManager *)sharedInstance;
/**
 *  获取坐标
 */
- (void)requestLocationCoordinate:(LocationRequestBlock)block ;

/**
 *  获取坐标和详细地址
 */
- (void)requestLocationAddress:(AddressRequestBlock)block;

@end
