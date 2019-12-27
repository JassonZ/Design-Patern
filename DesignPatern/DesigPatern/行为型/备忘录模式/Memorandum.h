//
//  Memorandum.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Player;
@interface Memorandum : NSObject

//存储
- (void)storeWithPlayer:(Player *)player;
//恢复
- (void)restoreWithPlayer:(Player *)player;

@end

NS_ASSUME_NONNULL_END
