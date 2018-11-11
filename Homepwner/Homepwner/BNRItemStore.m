//
//  BNRItemStore.m
//  Homepwner
//
//  Created by 陈虹 on 2018/11/11.
//  Copyright © 2018年 Okar. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()
@property (nonatomic) NSMutableArray *privateItems;
@end

@implementation BNRItemStore
+ (instancetype)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (nil == sharedStore)
    {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

// 如果调用[[BNRItemStore alloc] init]，就提示应该使用[BNRItemStore sharedStore]
- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[BNRItemStore sharedStore]" userInfo:nil];
    return nil;
}

// 这是真正的（私有的）初始化方法
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return self.privateItems;
}

- (BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}


@end
