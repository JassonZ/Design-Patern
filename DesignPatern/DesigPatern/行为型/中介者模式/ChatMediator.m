//
//  ChatMediator.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

/**
 优点：中介者模式简化了对象之间的交互，它用中介者和同事的一对多交互代替了原来同事y之间的多对多交互，u一对多关系更容易理解、维护和扩展，将原本难以理解的网状结构转换成相对简单的星型结构。
 中介者模式可将各同事对象解耦。中介者有利于各同事之间的松耦合m，我们可以独立的改变和复用每一个同事和中介者，增加新的中介者和新的同事类都比较方便，更好的符合开闭原则。
 可以减少子类生产，中介者将原本分布于多个对象间的行为集中在一起，改变这些行为只需生产新的中介者子类即可，这使各个同事类可被重用，无须对同事类进行扩展。
 缺点：
 在具体中介者类中包含了大量同事之间的交互细节，可能会导致具体中介者类非常复杂，使得系统难以维护。
 */
#import "ChatMediator.h"
#import "ChatMember.h"

@interface ChatMediator ()
//已注册成员列表
@property(nonatomic, strong) NSMutableArray * memberList;
@end
@implementation ChatMediator

+(instancetype)shareMediator{
    static ChatMediator * shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[ChatMediator alloc]init];
    });
    return shareInstance;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _memberList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)registerChatMember:(ChatMember *)chatMember{
    [_memberList addObject:chatMember];
}

-(void)forwardMsg:(NSString *)msg fromMember:(ChatMember *)fromMember{
    [_memberList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        ChatMember * member = obj;
        if (member != fromMember) {
            [member receiveMsg:msg fromMember:member];
        }
    }];
}

@end
