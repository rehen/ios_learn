//
//  BNRItemStore.h
//  Homepwner
//
//  Created by 陈虹 on 2018/11/11.
//  Copyright © 2018年 Okar. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;
// 注意，这是一个类方法，前缀是+，不是-
+ (instancetype)sharedStore;

- (BNRItem *)createItem;

@end
