import 'dart:async';
/* 参考网址：https://juejin.im/post/5baa4b90e51d450e6d00f12e
* stream的基本知识
*   StreamController 它是创建流的方式之一
*   StreamController有一个入口，叫做sink，有一个出口stream
*   sink可以使用add方法放东西进来，放进去以后就不再关心了
*   当有东西从sink进去，机器就开始工作了
*   当机器处理完毕后就会把产品从出口丢出来，但是我们并不知道什么时候会出来，所以我们需要使用listen方法一直监听这个出口
*   而且当多个物品被放进来之后，它不会打乱顺序，而是先入先出
*
* */

/*
* 创建stream的四个构造方法
*   1、Stream.fromFuture:从Future创建新的单订阅流,当future完成时将触发一个data或者error，然后使用Down事件关闭这个流。
*   2、Stream.fromFutures:从一组Future创建一个单订阅流，每个future都有自己的data或者error事件，当整个Futures完成后，流将会关闭。如果Futures为空，流将会立刻关闭
*   3、Stream.fromIterable:创建从一个集合中获取其数据的单订阅流
*   4、Stream.periodic:定时出发动作作为Stream的事件源构造Stream
* */

void main(){
//  StreamController controller = StreamController();
//  Stream stream = controller.stream.asBroadcastStream();
//
//  controller.sink.add(123);
//  stream.listen((data)=>print(data));
//  stream.listen((data)=>print(data));

// 流的transform方法，可以返回一条新的流
//  StreamTransformer<S,T>是stream的检查员，它负责接收stream通过的信息，并经过处理返回一条新的流
// S 代表之前流的输入类型，这个例子里面是输入一个数字，所以是int
// T 代表转换后流的输入类型，这个例子里面是输入提示信息，所以是String
// handleData 接收一个value并创建一条新的流并暴露sink，我们可以在里面对流进行转换
  StreamController<int> controller = StreamController<int>();
  final transformer = StreamTransformer<int,String>.fromHandlers(
     handleData: (value,sink){
        if(value == 100){
          sink.add("你猜对了");
        } else {
          sink.addError('错了');
        }
     }
  );
  controller.stream
            .transform(transformer)
            .listen((data)=>print('data'),onError: (err)=>print('error'));
  controller.sink.add(120);
}