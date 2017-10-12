//
//  TableViewController.m
//  DynamicAppIconOC
//
//  Created by WhatsXie on 2017/10/12.
//  Copyright © 2017年 WhatsXie. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了：%@",error);
        }
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [self setAppIconWithName:@"IconDebug"];
            break;
        case 1:
            [self setAppIconWithName:@"IconBeta"];
            break;
        default:
            [self setAppIconWithName:nil];
            break;
    }
}

@end
