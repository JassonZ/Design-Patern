//
//  ChatMember.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "ChatMember.h"
#import "ChatMediator.h"

@implementation ChatMember
-(void)sendMsg:(NSString *)msg{
    [[ChatMediator shareMediator]forwardMsg:msg fromMember:self];
}
-(void)receiveMsg:(NSString *)msg fromMember:(ChatMember *)fromMember{
    NSLog(@"%@ receive:%@ from %@",_userName,msg,fromMember.userName);
}
@end
