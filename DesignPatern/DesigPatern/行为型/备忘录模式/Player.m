//
//  Player.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Player.h"
#import "PlayerState.h"

@implementation Player

-(void)setPlayerName:(NSString *)name level:(NSUInteger)level rank:(NSUInteger)rank{
    if (!_playerState) {
        _playerState = [PlayerState new];
    }
    _playerState.name = name;
    _playerState.level = level;
    _playerState.rank = rank;
    
}
@end
