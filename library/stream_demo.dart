import 'dart:async';


void main(){
  // periodic 是Stream的工厂函数之一，是定时出发动作作为Stream的事件源构造Stream
  // 下面的意思就是一秒后创建int数据，并且控制只输出15次
  var counterStream = Stream<int>.periodic(Duration(seconds: 1),(x)=>x).take(15);
  counterStream.forEach(print);
  
  var empty$ = Stream<int>.empty();
  empty$.listen((data){
    print('data');
  },onDone: (){
      print('Done');
  });
}