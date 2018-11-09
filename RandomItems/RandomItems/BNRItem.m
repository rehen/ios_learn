//
//  BNRItem.m
//  RandomItems
//
//  Created by 3dmy on 2018/11/2.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}
- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}
- (NSString *)serialNumber
{
    return _serialNumber;
}
- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}
- (NSDate *)dateCreated
{
    return _dateCreated;
}
@end
