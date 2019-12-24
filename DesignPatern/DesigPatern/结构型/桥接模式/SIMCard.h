//
//  SIMCard.h
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 扩展性好，符合开闭原则，将抽象与实现分离，让二者可以独立变化
 缺点：在设计之前，需要识别出两个独立变化的维度
 */
@protocol SIMCardProtocol <NSObject>

- (void)getSIMInfo;

@end

@protocol StandardSIMSizeProtocol <NSObject>

- (void)standardSize;

@end

@protocol nanoSIMSizeProtocol <NSObject>

- (void)nanoSize;

@end

@interface SIMCard : NSObject

- (void)getSIMInfo;

- (void)standardSize;

- (void)nanoSize;

@end

NS_ASSUME_NONNULL_END
