//
//  AppDelegate.m
//  WTDemo
//
//  Created by 计恩良 on 2018/11/7.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [self initRoot];
    
    return YES;
}

- (void)initRoot {
    WTTabBarItem *itIndex = [[WTTabBarItem alloc] init];
    itIndex.titleText = @"发现";
    itIndex.normalImage = @"tabbar_translate";
    itIndex.selectImage = @"tabbar_translate_highlighted";
    itIndex.vc = [[WTViewController alloc] init];
    
    WTTabBarItem *itCare = [[WTTabBarItem alloc] init];
    itCare.titleText = @"关注";
    itCare.normalImage = @"tabbar_application";
    itCare.selectImage = @"tabbar_application_highlighted";
    itCare.vc = [[WTViewController alloc] init];
    
    WTTabBarItem *itTieBa = [[WTTabBarItem alloc] init];
    itTieBa.titleText = @"浪吧";
    itTieBa.normalImage = @"tabbar_application";
    itTieBa.selectImage = @"tabbar_application_highlighted";
    itTieBa.vc = [[WTViewController alloc] init];
    
    WTTabBarItem *itMine = [[WTTabBarItem alloc] init];
    itMine.titleText = @"我的";
    itMine.normalImage = @"tabbar_profile";
    itMine.selectImage = @"tabbar_profile_highlighted";
    itMine.vc = [[WTViewController alloc] init];
    
    WTTabbarController *tab = [[WTTabbarController alloc] init];
    tab.itemsArray = [NSArray arrayWithObjects:itIndex,itCare,itTieBa,itMine, nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tab];
    nav.navigationBarHidden = YES;
    [WTUtil appDelegate].window.rootViewController = nav;
    [[WTUtil appDelegate].window makeKeyAndVisible];
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
