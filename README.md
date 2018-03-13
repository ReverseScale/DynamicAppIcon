# DynamicAppIcon

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/download-4.9MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

[EN](#Requirements) | [中文](#中文说明)

For App, Dynamic Change Icon, Swift + Objective-C Bilingual Implementation

Realize the internal dynamic change of application icons like Bear App, which can be used for application version switching, theme adaptation and other scenarios.

![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/53334942.jpg)
![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/84524252.jpg)

------

|1.List page | 2.Replacement page | 3.Result page |
| ------------- | ------------- | ------------- |
| ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/66261150.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/59017691.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/23193778.jpg) |
| Build a basic framework with a storyboard | Switch icons by tapping | Show icons after switching |


### 🚀 Advantage
* 1. Less files, simple code
* 2. Does not rely on any other third party library
* 3. Highly customizable

### 🤖 Requirements
* iOS 7+
* Xcode 8+
* Swift/Objective-C


### 🛠 Usage Usage
#### Implementation
Swift call method
```
dynamicAppIconWith(iconName: "IconBeta")
```
Objective-C call method
```
[self setAppIconWithName:@"IconDebug"];
```
#### Simple call
Swift  code method
```
	/// Icon rights protection
    func safeJudge() {
        if UIApplication.shared.supportsAlternateIcons {
            print("you can change this app's icon")
        }else {
            print("you cannot change this app's icon")
            return
        }
    }
    /// Use alternative icons
    func dynamicAppIconWith(iconName:String?) {
        safeJudge()
        UIApplication.shared.setAlternateIconName(iconName) { (err:Error?) in
            print("set icon error：\(String(describing: err))")
        }
    }
```
Objective-C  code method
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

### ⚖ Protocol
```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

###  😬 Contact:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io

---
# 中文说明

为App，动态的更改图标，swift + Objective-C双语实现

实现类似 Bear App 的内部动态更改应用图标，可用于应用版本切换，主题适配等场景。

![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/53334942.jpg)
![](http://og1yl0w9z.bkt.clouddn.com/17-10-13/84524252.jpg)

------

|1.列表页 |2.更换页 |3.结果页 |
| ------------- | ------------- | ------------- |
| ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/66261150.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/59017691.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-12/23193778.jpg) |
| 通过 storyboard 搭建基本框架 | 通过点击操作切换图标 | 展示切换后的图标 |


### 🚀 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.具备较高自定义性


### 🤖 要求
* iOS 7+
* Xcode 8+


### 🛠 安装
#### 第一步 实现方法
Swift 调用方法
```
dynamicAppIconWith(iconName: "IconBeta")
```
Objective-C 调用方法
```
[self setAppIconWithName:@"IconDebug"];
```
#### 第二步 简单调用
Swift 代码实现
```
	/// 图标权限保护
    func safeJudge() {
        if UIApplication.shared.supportsAlternateIcons {
            print("you can change this app's icon")
        }else {
            print("you cannot change this app's icon")
            return
        }
    }
    /// 使用备选图标
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

### ⚖ 协议

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


### 😬 联系方式:
* 微信 : WhatsXie
* 邮箱 : ReverseScale@iCloud.com
* 博客 : https://reversescale.github.io
