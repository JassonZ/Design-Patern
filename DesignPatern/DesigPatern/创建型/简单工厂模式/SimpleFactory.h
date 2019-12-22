//
//  SimpleFactory.h
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Cola;
@interface SimpleFactory : NSObject

+(Cola *)createColaWithType:(NSInteger)type;

@end

NS_ASSUME_NONNULL_END
