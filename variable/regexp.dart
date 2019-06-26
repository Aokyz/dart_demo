//

void main(){
  // 正则  是否匹配  hasMatch   正则表达式与其他语言的区别：不是写在两个/之间，而是已r开头，写在双引号之间
//  RegExp exp = new RegExp(r"^1[34578]\d{9}$");
//  print(exp.hasMatch("12858661734"));



  // 正则表达式
  // 匹配 两个/之间的内容，这个'\'用于转义 \. 表示.
    String name = '左侧/右侧/ffg/iihh/90uj/';
    RegExp exps = new RegExp(r"\/(.*)\/");
    // allMatches返回的是Match类型的迭代器
    Iterable<Match> matches = exps.allMatches(name);
    for(Match m in matches){
      for(int i=0;i<m.groupCount+1;i++){
        String match = m.group(i);
//        print("Group[$i]:$match");
      }
    }
    String mm;
//    print( mm ?? 'dfe');

    Map mop;
//    print(mop['ss']??'没有');  // 这样会报错，因为mop已经是null了
//  print(mop==null ? 'meiyou' : mop['ss']);

 RegExp exps4 = new RegExp(r"^[0-9]*$");
 print(exps4.hasMatch('899111'));
  RegExp expDouble = new RegExp(r"^[0-9]*\.[0-9]*$");
  print(expDouble.hasMatch('89911u1'));
  List lit = [];
  print(lit[0]);
print('1111');


//  正则    正则
  // 替换

//  String str2 = '（黏膜活检）淡红色/灰白色粒状组织 枚，大小{{}}mm~{{}}mm不等。';
//  RegExp exps = new RegExp(r"(\{\{\s*\}\})");
//
//  print(exps.hasMatch(str2)); // true
//  // 将{{}}替换成xxx
//  String replace = 'xxx';
//  print(str2.replaceAll(exps, replace)); //（黏膜活检）淡红色/灰白色粒状组织 枚，大小xxxmm~xxxmm不等。
//  //将字符串进行切割
//  var splitResult = str2.split(exps);
//  print(splitResult); // [（黏膜活检）淡红色/灰白色粒状组织 枚，大小, mm~, mm不等。]
//
//  RegExp exps2 = new RegExp(r"(\_\_)");
//  String str3 = 'sfdfd__dfd';
//  print(exps2.hasMatch(str3)); //true
//  String rep ='123';
//  String xyh = str3.replaceFirst(exps2, rep); // 这个方法会将结果返回，但并不会该改变字符串本身
//  print(xyh);
}