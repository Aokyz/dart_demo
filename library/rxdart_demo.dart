import 'package:rxdart/rxdart.dart';

// rxDart 官网  https://pub.dev/documentation/rxdart/latest/
// https://github.com/ReactiveX/rxdart
void main(){
//  Observable.combineLatest2(
//      new Observable.just(1),
//      new Observable.fromIterable([0, 1, 2]),
//          (a, b) => true)
//      .listen(print);

//  Observable.combineLatest2(
//      new Observable.periodic(Duration(seconds:2),(i)=>i).take(1),
//      new Observable.fromIterable([0, 1, 2]),
//          (a, b) => true)
//      .listen(print);

  Observable.combineLatest2(
      new Observable.fromFuture(Future.delayed(Duration(seconds:5),(){
        return 'hello';
      })),
      new Observable.fromIterable([0, 1, 2]),
          (a, b) => true)
      .listen(print);
}