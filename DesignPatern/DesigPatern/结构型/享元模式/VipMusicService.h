//
//  VipMusicService.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class MusicService;
@interface VipMusicService : NSObject

@property(nonatomic, strong) MusicService * musicService;

- (void)listenMusic:(NSString *)music;
- (void)downloadMusic:(NSString *)music;

@end

NS_ASSUME_NONNULL_END
