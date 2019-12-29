//
//  WeatherStation.h
//  DesignPatern
//
//  Created by Jason on 2019/12/28.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Observer;
@interface WeatherStation : NSObject

@property(nonatomic, copy) NSString * state;//天气状态
//观察者注册方法
- (void)registerWithObserver:(Observer *)observer;

@end

NS_ASSUME_NONNULL_END
