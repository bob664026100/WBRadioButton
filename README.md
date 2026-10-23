# WBRadioButton

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

用户自定义的单选按钮。



将代码拉进工程

`import "WBRadioButton"`

用户只需要利用`- (instancetype)initWithGroup:(NSString *)group andValue:(id)value;` 这个方法创建按钮，这个按钮就可以具有单选功能。


因为控件继承于'UIButton',用户可以像平常一样设置样式即可。


用户需要在button设置的时候 设置`UIControlStateSelected` 相关属性，就可以看到相应的改变。

## 开源协议

WBRadioButton 基于 [MIT License](LICENSE) 开源。你可以自由地使用、复制、修改和分发本项目，但需在软件副本中保留原始版权和许可证声明。
