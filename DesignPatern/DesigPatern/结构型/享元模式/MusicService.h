//
//  MusicService.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MusicService : NSObject

@property(nonatomic, strong) NSArray * musicLibrary;

- (void)listenToMusic:(NSString *)music;

- (void)downloadMusic:(NSString *)music;

@end

NS_ASSUME_NONNULL_END
