//
//  PlayerState.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlayerState : NSObject

@property(nonatomic, strong) NSString * name;
@property(nonatomic, assign) NSUInteger level;
@property(nonatomic, assign) NSUInteger rank;

@end

NS_ASSUME_NONNULL_END
