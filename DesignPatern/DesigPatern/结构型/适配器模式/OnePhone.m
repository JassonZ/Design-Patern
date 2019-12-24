//
//  OnePhone.m
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "OnePhone.h"
#import "StandardSIMCard.h"

@implementation OnePhone


-(void)setSimCard:(SIMCard *)simCard{
    [simCard standardSize];
}
@end
