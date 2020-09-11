import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:umeng_sdk/umeng_sdk.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
    UmengSdk.setPageCollectionModeManual();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await UmengSdk.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Running on: $_platformVersion'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(bool, {name:jack, age:18, male:true})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('bool', {'name':'jack', 'age':18, 'male':true});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(bool, {name:tome, age:180, male:true})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('bool', {'name':'tome', 'age':180, 'male':false});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(float, {name:jack, age:18, degree:1.6})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('float', {'name':'jack', 'age':18, 'degree':1.6});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(long, {name:jack, age:18, mobile:13910012345})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('long', {'name':'jack', 'age':18, 'mobile':8613910012345});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(array, {name:jack, age:18, children:[tom, jerry]})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('array', {'name':'jack', 'age':18, 'male':true, 'mobile':13910012345, 'degree':1.6, 'children':['tom', 'jerry'], 'work':{'2000':'TC', '2005':'BAIDU', '2010':'ALI'}});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(map, {name:jack, age:18, work:{2000:TC, 2005:BAIDU, 2010:ALI}})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('map', {'name':'jack', 'age':18, 'work':{'2000':'TC', '2005':'BAIDU', '2010':'ALI'}});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(null, {name:jack, age:18, like:null })"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('null', {'name':'jack', 'age':18, 'like':null});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(map_array, {name:jack, age:18, work:{2000:TC, 2005:BAIDU, 2010:ALI}, children:[tom, jerry]})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('map_array', {'name':'jack', 'age':18, 'children':['tom', 'jerry'],'work':{'2000':'TC', '2005':'BAIDU', '2010':'ALI'}});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onEvent(统计时间, {time:1000, age:18, work:{2000:TC, 2005:BAIDU, 2010:ALI}, children:[tom, jerry]})"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onEvent('shijian', {'name':'jack', 'age':18, 'children':['tom', 'jerry'],'work':{'2000':'TC', '2005':'BAIDU', '2010':'ALI'}});
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onProfileSignIn(jack)"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onProfileSignIn('jack');
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onProfileSignOff()"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onProfileSignOff();
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onPageStart(homeView)"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onPageStart('homeView');
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("onPageEnd(homeView)"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.onPageEnd('homeView');
                    }
                ),
                FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    child: Text("reportError(lost space)"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: (){
                      UmengSdk.reportError('lost space');
                    }
                )
              ]
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), title: Text('列表')),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), title: Text('个人'))
          ],
        )
      ),
    );
  }
}
