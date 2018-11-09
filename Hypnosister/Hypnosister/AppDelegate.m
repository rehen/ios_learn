//
//  AppDelegate.m
//  Hypnosister
//
//  Created by 陈虹 on 2018/11/4.
//  Copyright © 2018年 Okar. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    CGRect rectWindow = CGRectMake(0, 0, 372, 661);
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window = [[UIWindow alloc] initWithFrame:rectWindow];
    self.window.rootViewController = [[UIViewController alloc]init];
    [self.window makeKeyAndVisible];
    
    //CGRect firstFrame = self.window.bounds;//CGRectMake(160, 240, 200, 150);
    //BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
    //firstView.backgroundColor = [UIColor whiteColor];
    //[self.window addSubview:firstView];
    /*
    CGRect secondFrame = CGRectMake(50, 50, 200, 200);
    BNRHypnosisView *secondView = [[BNRHypnosisView alloc]initWithFrame:secondFrame];
    secondView.backgroundColor = [UIColor blueColor];
    //[self.window addSubview:secondView];
    [firstView addSubview:secondView];
    */
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setPagingEnabled:NO];
    [self.window addSubview:scrollView];
    
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc]
                                     initWithFrame:bigRect];
    [scrollView addSubview:hypnosisView];
    
    scrollView.contentSize = bigRect.size;
    self.window.backgroundColor = [UIColor whiteColor];
    
    //[self.window.rootViewController.view addSubview:firstView];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //self.window.rootViewController = [[UIViewController alloc]init];
    
    return NO;
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


@end
