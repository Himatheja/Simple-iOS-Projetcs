//
//  Data.h
//  APIIntegration
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Datum;

NS_ASSUME_NONNULL_BEGIN

typedef NSArray<Datum *> Data;

#pragma mark - Object interfaces

@interface Datum : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageurl;
@end

NS_ASSUME_NONNULL_END
