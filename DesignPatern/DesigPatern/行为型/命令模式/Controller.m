//
//  Controller.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Controller.h"
#import "Command.h"

@implementation Controller

- (void)invokeCommand:(Command *)command{
    [command execute];
}
- (void)cancelCommand:(Command *)command{
    
}
@end
