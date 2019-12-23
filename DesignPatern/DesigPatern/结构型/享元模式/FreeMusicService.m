//
//  FreeMusicService.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "FreeMusicService.h"
#import "MusicService.h"

@implementation FreeMusicService
/**
 使用享元模式可以减少内存中对象的数量，使得相同对象或相似对象在内存中只保存一份，降低系统的使用内存，也可以提性能；
 享元模式的外部状态相对独立，而且不会影响其内部状态，从而使得享元对象可以再不同的环境中被共享；
 
 缺点：1.使用享元模式需要分离出内部状态和外部状态，这使得程序的逻辑复杂化；
 对象在缓存池中的复用需要考虑线程问题。
 */
-(void)listenFreeMusic:(NSString *)music{
    if ([music isEqualToString:@"free"]) {
        [self.musicServer listenToMusic:music];
    }else{
        NSLog(@"please upgrade to Vip");
    }
}
@end
