//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by 3dmy on 2018/11/7.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    // 创建一个BNRHypnosisView对象
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    // 将BNRHypnosisView对象赋给视图控制器的view属性
    self.view = backgroundView;
}


@end
