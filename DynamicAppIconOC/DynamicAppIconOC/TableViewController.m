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
        NSLog(@"当前系统版本不支持 AlternateIcons");
        return;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了：%@",error);
        }
    }];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
