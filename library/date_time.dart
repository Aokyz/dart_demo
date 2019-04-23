
void main(){
  /* 创建DateTime对象的方法
  DateTime now = DateTime.now();
  print(now);//2019-03-28 16:41:09.582214
  // 生成当地时区的日期时间，如果是DateTime.utc(2000)则生成世界统一日期时间，比中国时区迟8个小时
  DateTime y2k = DateTime(2000);
  print(y2k);//2000-01-01 00:00:00.000
  // 指明年月日
  DateTime y3k = DateTime(2000,1,2);
  print(y3k);//2000-01-02 00:00:00.000
// 将字符串转换成时间对象
  DateTime y4k = DateTime.parse('2019-03-08 14:11:15');
  print(y4k);
// 将时间戳转换成当地时区日期时间对象
  DateTime y5k = DateTime.fromMillisecondsSinceEpoch(
      946684800000);
  print(y5k);
  // 将日期时间对象转换成时间戳，millisecondsSinceEpoch返回从1970.1.1以来的毫秒数
  print(y5k.millisecondsSinceEpoch);
*/

  // 使用Duration类可以计算两个日期之间的间隔，还可以前后位移日期
  DateTime y2k=new DateTime.utc(2000);
  DateTime y2001 = y2k.add(Duration(days: 366));
  assert(y2001.year == 2001);

  // 减去30天
  var december2000 = y2001.subtract(
      const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);

  // 两个时间之间的间隔
//  var duration = y2001.difference(y2k);
//  print(duration.inDays);

  DateTime now = DateTime.now();
  print(now.second);//2019-03-28 16:41:09.582214

}