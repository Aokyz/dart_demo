import 'dart:convert';
void main(){
  int a = 1;
  Map<int,String> f = {
    a:'b'
  };
  print(f[a]);
  var jsonData = json.decode('{"x":1, "y":2}');
  print(jsonData['x']);


//  final String outSide='0';
  //const ss = [1,2,3]; 必须用const类型的值对const变量进行初始化

}