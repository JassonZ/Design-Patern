//
//  Player.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class PlayerState;
@interface Player : NSObject

@property(nonatomic, strong) PlayerState * playerState;

- (void)setPlayerName:(NSString *)name level:(NSUInteger)level rank:(NSUInteger)rank;

@end

NS_ASSUME_NONNULL_END
