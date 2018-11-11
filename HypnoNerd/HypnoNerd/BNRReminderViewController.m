//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by 陈虹 on 2018/11/10.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    // 实现本地通知
    
    UILocalNotification * note = [[UILocalNotification alloc] init];
    note.alertBody = @"催眠我吧。";
    note.fireDate = date;
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                          bundle:nibBundleOrNil];
    if (self)
    {
        // 获取tabBarItem属性所指向的UITabBarItem对象
        UITabBarItem *tbi = self.tabBarItem;
        // 设置UITabBarItem对象的标题
        tbi.title = @"Reminder";
        // 设置UITabBarItem对象的图像
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController loaded its view.");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:10];
}


@end
