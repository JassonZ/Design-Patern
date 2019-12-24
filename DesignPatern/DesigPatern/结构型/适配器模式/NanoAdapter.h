//
//  NanoAdapter.h
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "SIMCard.h"

NS_ASSUME_NONNULL_BEGIN
@class NanoSIMCard;
@interface NanoAdapter : SIMCard<StandardSIMSizeProtocol>

@property(nonatomic, strong) NanoSIMCard * nanoSimCard;
@end

NS_ASSUME_NONNULL_END
