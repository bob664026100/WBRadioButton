#用户自定义的单选按钮



将代码拉进工程

`import "WBRadioButton"`

用户只需要利用`- (instancetype)initWithGroup:(NSString *)group andValue:(id)value;` 这个方法创建按钮，这个按钮就可以具有单选功能。


因为控件继承于'UIButton',用户可以像平常一样设置样式即可。


用户需要在button设置的时候 设置`UIControlStateSelected` 相关属性，就可以看到相应的改变# WBRadioButton
