//
//  AbstractFactory.h
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Cola;
@class Bottle;
@interface AbstractFactory : NSObject

+ (Cola *)createCola;
+ (Bottle *)createBottle;

@end

NS_ASSUME_NONNULL_END
