//
//  Factory.h
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Cola;
@interface Factory : NSObject

+(Cola *)createCola;

@end

NS_ASSUME_NONNULL_END
