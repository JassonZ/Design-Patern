//
//  VipMusicService.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "VipMusicService.h"
#import "MusicService.h"

@implementation VipMusicService

-(void)listenMusic:(NSString *)music{
    [self.musicService listenToMusic:music];
}
-(void)downloadMusic:(NSString *)music{
    [self.musicService downloadMusic:music];
}
@end
