//
//  BlackTea.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Tea.h"

NS_ASSUME_NONNULL_BEGIN

@interface BlackTea : Tea

@property(nonatomic, strong) Tea * tea;

- (void)addBlackTea;
- (void)addLemon;
@end

NS_ASSUME_NONNULL_END
