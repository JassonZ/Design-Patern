//
//  FreeMusicService.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class MusicService;
@interface FreeMusicService : NSObject

@property(nonatomic, strong) MusicService * musicServer;

- (void)listenFreeMusic:(NSString *)music;

@end

NS_ASSUME_NONNULL_END
