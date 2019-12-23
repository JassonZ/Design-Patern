//
//  Waiter.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Chef;
@interface Waiter : NSObject

@property(nonatomic, strong) NSMutableArray * cacheList;

- (void)orderingFood:(NSString *)food;
- (void)removeFood:(NSString *)food;
- (void)pushToChef:(Chef *)chef;

@end

NS_ASSUME_NONNULL_END
