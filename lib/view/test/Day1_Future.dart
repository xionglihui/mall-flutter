

futureTest() {
  Future.delayed(Duration(seconds: 2), () {//异步方法
    return "hellow word";
  })
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => {});

  Future.wait([
    //多个异步方法都结束之后 结果返回
    Future.delayed(Duration(seconds: 2), () {
      return "nihao";
    }),
    Future.delayed(Duration(seconds: 2), () {
      return " ma";
    })
  ]).then((value) => {//所有都成功执行的方法
    print(value[0] + "" + value[1])}).catchError((e){
    //执行失败
      print(e);
  }).whenComplete(() => {
    //不管成功失败都返回
  });

  Stream.fromFutures([//接收多个异步的接口 可以成功失败
    Future.delayed(Duration(seconds: 2), () {
      return "nihao";
    }),
    Future.delayed(Duration(seconds: 2),(){
      // throw AssertionError("AssertionError");
    })
  ]).listen((event) {}).onDone(() {});
}

task() async {
  //异步方法 同步返回结果 async  与await 搭配使用
  int id1 = await Future.delayed(Duration(seconds: 1), () {
    return 1;
  });

  int id2 = id1 +
      await Future.delayed(Duration(seconds: 1), () {
        return 2;
      });

  print(id1 + id2);
}
