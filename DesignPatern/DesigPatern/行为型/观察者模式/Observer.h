//
//  Observer.h
//  DesignPatern
//
//  Created by Jason on 2019/12/28.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Observer : NSObject

@property(nonatomic, copy) NSString * name;

- (void)observeWeather:(NSString *)weather;

@end

NS_ASSUME_NONNULL_END
