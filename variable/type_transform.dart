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
// String -> int
var one = int.parse('1');
assert(one == 1);

var str2 = int.parse('你师父大幅度sss');
print(int.parse('你师父大幅度sss'));
// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');
// double -> String
String pisAsString = 3.14159.toStringAsFixed(3);// 保留几位小数
assert(pisAsString == '3.142');




}