
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderTest extends StatefulWidget {//没搞懂
  @override
  State<StatefulWidget> createState() => ProviderTestStatue();
}

class ProviderTestStatue extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderTest"),
      ),
    );
  }
}

// 一个通用的InheritedWidget，保存任需要跨组件共享的状态
class InheritedProvider<T> extends InheritedWidget {
  //共享状态使用泛型
  final T data;

  InheritedProvider(@required this.data, Widget child) : super(child: child);

  //在此简单返回true，则每次更新都会调用依赖其的子孙节点的`didChangeDependencies`。
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class ChangeNotifier extends Listenable {
  List listeners = [];

  @override
  void addListener(listener) {
    //添加监听器
    listeners.add(listener);
  }

  @override
  void removeListener(listener) {
    //移除监听器
    listeners.remove(listener);
  }

  void notifyListener(){
    //通知所有监听器 触发回调
    listeners.forEach((element) =>element);
  }
}

