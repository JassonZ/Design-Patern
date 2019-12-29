//
//  Observer.m
//  DesignPatern
//
//  Created by Jason on 2019/12/28.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Observer.h"

@implementation Observer

-(void)observeWeather:(NSString *)weather{
    NSLog(@"%@ observe weather changed: %@",_name,weather);
}
@end
