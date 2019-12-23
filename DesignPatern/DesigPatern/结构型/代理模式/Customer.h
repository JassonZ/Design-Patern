//
//  Customer.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Waiter;
@interface Customer : NSObject

@property(nonatomic, strong) Waiter * waiter;

- (Waiter *)callWaiter;
- (void)orderingFood:(NSString *)food;
- (void)removeFood:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
