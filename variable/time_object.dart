import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
void main(){
  // 把时间字符串转换成时间对象
  DateTime _parseDate = DateTime.parse('2019-03-08 17:07:50');
  print(_parseDate);
  //生成指定时间
  DateTime _dayDate = DateTime(_parseDate.year,_parseDate.month,_parseDate.day);
  print(_dayDate);
//
  var formatter = DateFormat('yyyy-MM-dd hh:mm:ss'); //这是12小时制的
  var formatter2 = DateFormat('yyyy-MM-dd').add_Hms();  //这是24小时制的
  String _localeDate = formatter.format(DateTime.now());
  print(_localeDate);
  // 要格式化地方性的时间，除了“en_US”（默认为en_US)，都要先初始化
  initializeDateFormatting("fr_FR", null).then((_) => DateFormat.yMMMd('zh_CN'));
  print(new DateFormat.yMMMd('zh_CN').format(new DateTime.now()));
}
