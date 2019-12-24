//
//  Phone.h
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SIMCard;
@interface Phone : NSObject

@property(nonatomic, strong) SIMCard * simCard;

- (void)launchPhone;

- (void)setSimCard:(SIMCard * _Nonnull)simCard;

@end

NS_ASSUME_NONNULL_END
