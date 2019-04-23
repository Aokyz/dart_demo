void main(){
  // 在dart里面单引号和双引号相同
  //单、双引号互相嵌套
  String str = '单引号中的"双引号"';
  String str1 = "双引号中的'单引号'";
  print(str);  //单引号中的"双引号"
  print(str1);  //双引号中的'单引号'

  String str2 = '单引号中的\'单引号\'';
  String str3 = "双引号中的\"双引号\"";
  print(str2);
  print(str3);

  // 字符串的分割
  String strSplit = '病理科-杭州医院';
  print(strSplit.split('-')[0]);
  List list = [{'name':'de'},{'name':'dse'},{'name':'dee'},{'name':'d3e'},{'name':'d7e'},];
  var mm = list.where((item)=>item['name']=='de');
  print(mm.runtimeType);

  // 字符串不足位数左边补0  可以用于时间日期的格式化
  String minute = '3';
  print(minute.padLeft(2,'0'));
}