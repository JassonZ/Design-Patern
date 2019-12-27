//
//  Responder.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Responder.h"

@implementation Responder

-(void)responderWithCode:(NSInteger)code{
    if (_lowerLimit <= code && code <= _upperLimit) {
        NSLog(@"code:%ld is %@",code,_name);
    }else if (_nextResponder){
        [_nextResponder responderWithCode:code];
    }else{
        NSLog(@"code: %ld no match responder",code);
    }
}
@end
