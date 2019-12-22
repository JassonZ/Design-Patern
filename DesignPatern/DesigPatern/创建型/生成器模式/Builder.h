//
//  Builder.h
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

- (void)buildEngine;
- (void)buildWheel;
- (void)buildBody;

@end

NS_ASSUME_NONNULL_END
