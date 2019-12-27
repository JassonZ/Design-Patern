//
//  ChatMember.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChatMember : NSObject

@property(nonatomic, copy) NSString * userName;
//发送消息
- (void)sendMsg:(NSString *)msg;
//接收消息
- (void)receiveMsg:(NSString *)msg fromMember:(ChatMember *)fromMember;

@end

NS_ASSUME_NONNULL_END
