//
//  BNRItemsViewController.m
//  Homepwner
//
//  Created by 陈虹 on 2018/11/11.
//  Copyright © 2018年 Okar. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemsViewController

- (instancetype)init
{ // 调用父类的指定初始化方法
    self = [super initWithStyle:UITableViewStylePlain];
    if (self)
    {
        for (int i = 0; i < 100; i++)
        {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

//- (instancetype)initWithStyle:(UITableViewStyle)style
//{
//    return [self init];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 创建UITableViewCell对象，风格使用默认的UITableViewCellStyleDefault
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    // 创建或重用UITableViewCell对象
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];

    // 获取allItems的第n个BNRItem对象，
    // 然后将该BNRItem对象的描述信息赋给UITableViewCell对象的textLabel
    // 这里的n是该UITableViewCell对象所对应的表格行索引
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *item = items[indexPath.row];
    cell.textLabel.text = [item description];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}


@end
