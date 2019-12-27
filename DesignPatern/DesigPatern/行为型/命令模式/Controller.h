//
//  Controller.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Command;

@interface Controller : NSObject

//执行命令
- (void)invokeCommand:(Command *)command;

//取消命令
- (void)cancelCommand:(Command *)command;

@end

NS_ASSUME_NONNULL_END
