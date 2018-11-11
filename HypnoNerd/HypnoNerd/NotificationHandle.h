//
//  NotificationHandle.h
//  HypnoNerd
//
//  Created by 陈虹 on 2018/11/11.
//  Copyright © 2018年 3dmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

@interface NotificationHandle : NSObject<UNUserNotificationCenterDelegate>

+(NotificationHandle *) shareInstance;

-(void)authorizationPushNotificaton:(UIApplication *)application;

@end
