//
//  AppDelegate.m
//  HypnoNerd
//
//  Created by 3dmy on 2018/11/7.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisViewController.h"
#import "BNRReminderViewController.h"

#import "NotificationHandle.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"AppDelegate::application");
    //self.window = [[UIWindow alloc] initWithFrame: CGRectMake(0, 0, 450, 800)];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // 在这里添加应用启动后的初始化代码
    BNRHypnosisViewController *hvc = [[BNRHypnosisViewController alloc] init];
    //self.window.rootViewController = hvc;
    //self.window.backgroundColor = [UIColor whiteColor];
    //[self.window makeKeyAndVisible];
    // 获取指向NSBundle对象的指针，该NSBundle对象代表应用的主程序包
    //NSBundle *appBundle = [NSBundle mainBundle];
    // 告诉初始化方法在appBundle中查找BNRReminderViewController.xib文件
    //BNRReminderViewController *rvc = [[BNRReminderViewController alloc] initWithNibName:@"BNRReminderViewController" bundle:appBundle];
    BNRReminderViewController *rvc = [[BNRReminderViewController alloc] init];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[hvc, rvc];
    
    //self.window.rootViewController = rvc;
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //[self replyPushNotificationAuthorization:application];
    /*
    [UNUserNotificationCenter currentNotificationCenter].delegate = [NotificationHandle shareInstance];
    
    [[NotificationHandle shareInstance] authorizationPushNotificaton:application];
     */
    // 设置我们需要的本地通知类型
    UIUserNotificationSettings *local = [UIUserNotificationSettings settingsForTypes:7 categories:nil];
    // 对通知进行注册，让系统知道
    [[UIApplication sharedApplication] registerUserNotificationSettings:local];

    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    
    NSString *deviceString = [[deviceToken description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    deviceString = [deviceString stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSLog(@"远端获取的deviceToken\n%@",deviceString);
    
    //存储得到的token，后面备用
    [[NSUserDefaults standardUserDefaults] setValue:deviceString forKey:@"deviceToken"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error{
    NSLog(@"获取token失败:%@\n",error.localizedDescription);
}

@end
