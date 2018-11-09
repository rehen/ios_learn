//
//  main.m
//  RandomItems
//
//  Created by 3dmy on 2018/11/1.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        //创建一个NSMutableArray对象，并用items变量保存该对象的地址
        NSMutableArray*items=[[NSMutableArray alloc]init];
        //向items所指向的NSMutableArray对象发送addObject:消息
        //每次传入一个字符串
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        //继续向同一个对象发送消息，这次是insertObject:atIndex;
        [items insertObject:@"Zero" atIndex:0];
        //for (int i = 0; i < [items count]; i++) {
        for (NSString *item in items) {
            //NSString *item = [items objectAtIndex:i];
            NSLog(@"%@", item);
        }
        BNRItem *item = [[BNRItem alloc] init];
        // 创建一个新的NSString对象"Red Sofa"，并传给BNRItem对象
        //[item setItemName:@"Red Sofa"];
        item.itemName = @"Red Sofa";
        // 创建一个新的NSString对象"A1B2C"，并传给BNRItem对象
        //[item setSerialNumber:@"A1B2C"];
        item.serialNumber = @"A1B2C";
        // 将数值100传给BNRItem对象，赋给valueInDollars
        [item setValueInDollars:100];
        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
              [item serialNumber], [item valueInDollars]);        //释放items所指向的NSMutableArray对象
        items = nil;
    }
    return 0;
}
