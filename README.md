# DynamicAppIcon
为App，动态的更改图标，swift + Objective-C双语实现

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/download-4.9MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

实现类似 Bear App 的内部动态更改应用图标，可用于应用版本切换，主题适配等场景。

![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/41998182.jpg) 
![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/33301352.jpg)

| 名称 |1.列表页 |2.更换页 |3.结果页 |
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/66261150.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/59017691.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/23193778.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 通过点击操作切换图标 | 展示切换后的图标 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 实现方法
Swift 调用方法
```
dynamicAppIconWith(iconName: "IconBeta")
```
Objective-C 调用方法
```
[self setAppIconWithName:@"IconDebug"];
```
### 第二步 简单调用
Swift 代码实现
```
///图标权限保护
    func safeJudge() {
        if UIApplication.shared.supportsAlternateIcons {
            print("you can change this app's icon")
        }else {
            print("you cannot change this app's icon")
            return
        }
    }
    ///使用备选图标
    func dynamicAppIconWith(iconName:String?) {
        safeJudge()
        UIApplication.shared.setAlternateIconName(iconName) { (err:Error?) in
            print("set icon error：\(String(describing: err))")
        }
    }
```
Objective-C 代码实现
```
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
```
使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
DynamicAppIcon 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
