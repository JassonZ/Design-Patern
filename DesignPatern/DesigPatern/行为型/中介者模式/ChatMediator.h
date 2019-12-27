//
//  ChatMediator.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class ChatMember;
@interface ChatMediator : NSObject

+ (instancetype)shareMediator;
//聊天室成员注册
- (void)registerChatMember:(ChatMember *)chatMember;
//转发消息
- (void)forwardMsg:(NSString *)msg fromMember:(ChatMember *)fromMember;
@end

NS_ASSUME_NONNULL_END
