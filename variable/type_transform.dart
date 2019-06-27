/*
* 这是讲解类型转换的，主要是as关键字
* as  可以将对象转换成给定的类型  如果不可以成功转换，就会报错
* */

void main(){
  String m = '123';
  Map x;
//  print(x?.isEmpty);

  var sb  = new StringBuffer();
  sb..write('foo')
      ..write('bar');
//  print(sb);(r'/^1[34578]\d{9}$/')


  /*parse和tryParse的区别就是：当传入的值不合法时，parse是直接抛出错误，而tryParse是返回null，不会报错*/
// String -> int
var one = int.tryParse('1');
assert(one == 1);

// String -> double
  double score = double.tryParse('yuuu');
  assert(score is double);
  print('tryParse:$score');

var str2 = int.tryParse('你师父大幅度sss');
print(str2);

// String -> double
var onePointOne = double.parse('1.3456');
//assert(onePointOne == 1.1);
  print('tryParse:$onePointOne');




// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');
// double -> String
String pisAsString = 3.14159.toStringAsFixed(3);// 保留几位小数
assert(pisAsString == '3.142');




}