//
//  Command.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Command.h"

@implementation Command

-(void)execute{
    [self.target performSelector:_sel withObject:nil];
}
@end
