//
//  AppDelegate.m
//  TabelView
//
//  Created by longfei on 14-7-23.
//  Copyright (c) 2014年 longfei. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, 320, self.window.frame.size.height-20) style:UITableViewStyleGrouped];
    tableView.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    return YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0 || section ==1 ) {
        return 2;
    }
    else if(section == 2){
        return 3;
    }
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [NSString stringWithFormat:@"this is cell (section=%d, row=%d)", indexPath.section, indexPath.row];
    
    if (indexPath.section == 0){
        if(indexPath.row == 0){
            cell.textLabel.text = @"响铃模式震动";
        }
        else if (indexPath.row == 1){
            cell.textLabel.text = @"静音模式震动";
        }
    }
    else if(indexPath.section ==1 ) {
        if(indexPath.row == 0){
            cell.textLabel.text = @"音量";
        }
        else if (indexPath.row == 1){
            cell.textLabel.text = @"用按钮调整";
        }
    }
    else if(indexPath.section == 2){
        if(indexPath.row == 0){
            cell.textLabel.text = @"电话铃声";
        }
        else if (indexPath.row == 1){
            cell.textLabel.text = @"短信铃声";
        }
        else if (indexPath.row == 2){
            cell.textLabel.text = @"收到新邮件";
        }

    }
    
    return cell;
}

// 页眉
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"页眉";
}

// 页脚
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"页脚";
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
