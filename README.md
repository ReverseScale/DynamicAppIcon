# DynamicAppIcon
为App，动态的更改图标，swift + Objective-C双语实现

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/language-Objective-C-orange.svg) 
![](https://img.shields.io/badge/download-4.9MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

实现类似 Bear App 的内部动态更改应用图标，可用于应用版本切换，主题适配等场景。

| 名称 |1.列表页 |2.更换页 |3.展示页 |
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-11/11849544.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-11/8167651.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-11/45057744.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 变色蓝 | 变色红 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.使用延展方式实现
* 4.支持 Alpha 通道渲染和灰度处理
* 5.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 实现方法
```
func imageWithTintColor(color:UIColor,keepAlpha:Bool,keepGray:Bool)->UIImage{
    //We want to keep alpha, set opaque to NO; Use 0.0f for scale to use the scale factor of the device’s main screen.
    UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
    color.setFill()
    let bounds = CGRect(x:0, y:0, width:self.size.width, height:self.size.height)
    UIRectFill(bounds)
    if keepGray {
        //kCGBlendModeOverlay保留灰度
        self.draw(in: bounds, blendMode: .overlay, alpha: 1.0)
    }
    if keepAlpha {
        //则再用kCGBlendModeDestinationIn画一次,保留透明度
        self.draw(in: bounds, blendMode: .destinationIn, alpha: 1.0)
    }
    let tintImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return tintImage!
}
```
### 第二步 简单调用
```
let renderedImage = tintImage?.imageWithTintColor(color: color, keepAlpha: true, keepGray: true)
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSImageRendering 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
