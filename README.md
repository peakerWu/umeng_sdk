
友盟统计SDK的安装，在官方文档下载的需要引入包，现在我放到git，通过在包里面引入使用

## 安装

在工程 pubspec.yaml 中加入 dependencies
```
  umeng_sdk:
    git:
      url: https://github.com/peakerWu/umeng_sdk
      ref: master
```


[Android和iOS集成文档](https://developer.umeng.com/docs/119267/detail/174923)

**Android的记得添加混淆文件，而且安卓的自定义事件需要添加参数。**


**iOS 需要在podfile里面把framework注释掉**
```
target 'Runner' do
  # use_frameworks!
  # use_modular_headers!
```
