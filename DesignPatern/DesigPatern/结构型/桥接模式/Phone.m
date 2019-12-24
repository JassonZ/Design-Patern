//
//  Phone.m
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Phone.h"
#import "SIMCard.h"

@implementation Phone

-(void)launchPhone{
    if (self.simCard) {
        [self.simCard getSIMInfo];
    }
}


@end
