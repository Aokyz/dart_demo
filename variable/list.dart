/*
* toList()可以使结果变成list，toSet()可以使结果变成Set
* List和Set属性Iterable类型的，所以他们都有map，where，any以及every方法
* where 相当于filter
* any和every就是按照意思来
* */

/*
* 对数组的操作方法分为两种：
* 1、会改变数组本身的：shuffle() ,
*                   sublist(int start, [int end])
*                   add(),addAll(),
*                   removeLast(),removeAt(int index),remove(dynamic data),removeRange(start,end)含头不含尾
*                   insert(int index,dynamic insert),insertAll(int index,dynamic insert)
*                   replaceRange(int start,int end [])  替换，包含头不包含尾, fillRange(int start,int end,[E fillValue]) 填充，含头不含尾，getRange(int start, int end);
* 2、会返回用()包裹的数据，但不会改变数组本身 ： where(),take(),firstWhere(),reduce()....
*
* 数组的属性：first,last,length
*             indexOf(E element, [int start = 0]),找到元素的下标
*             indexWhere(bool test(E element), [int start = 0])，找到符合条件的元素的下标
*             lastIndexWhere(bool test(E element), [int start = 0])，lastIndexOf(E element, [int start]);从后往前找
*           sublist(int start, [int end])
*
* */



void main() {
  // where , any ,every，map的演示
//    List listMethod = [1,2,3,4,5];
//    List whereList = listMethod.where((i)=>i>2).toList();
//    print(whereList);  //[3,4,5]
//    print(listMethod.any((i)=>i>2));  //true  只要有一项满足条件即可
//    print(listMethod.every((i)=>i>2));  //false  需要每一项都满足条件
//    List bigList = listMethod.map((i)=>i+2).toList();
//    print(bigList);  //[3,4,5,6,7]


  // list的创建
  var list = new List<int>();

  var list2 = const [1, 2];
  // list2 指向的是一个常量，我们不能给它添加元素（不能修改const类型的数据）
  // 这里要注意在dart中所有变量都是对象，所以是引用类型
  //list2.add(3); //error
  // list2本身不是一个常量，所以它可以指向另一个对象
  list2 = [4, 5];
  // list的创建
//    List firstList = new List();
//    // 创建固定长度的list
//    var secondList = new List(2);
//    // 创建元素类型固定的list
//    var thirdList = new List<String>();

//  var fruits = new List(3);
  //fruits.add('apples'); 如果list定义的时候就固定了长度，那么不能进行添加  删除操作
//  fruits[0]='apples';
//  print(fruits);
//    var fruits = new List();
//    //添加单个元素
//    fruits.add('apples');
//    //添加多个元素
//    fruits.addAll(['bananas','oranges']);
//    List subFruits = ['grape','watermelon','tomato'];
//    fruits.addAll(subFruits);
//    print(fruits);//[apples, bananas, oranges, grape, watermelon, tomato]
//    //获取list的长度
//    print(fruits.length); //6
//    //获取第一个元素
//    print(fruits.first);//apples
//    //获取最后一个元素
//    print(fruits.last);//tomato
//    //通过索引获取元素
//    print(fruits[0]);//apples
//    //查找某个元素的索引号
//    print(fruits.indexOf('apples'));//0
//    // 删除指定位置的元素，返回删除的元素
//    print(fruits.removeAt(0));
//    print(fruits);
//    //往list的指定位置添加一个新的数（List）
//    List secondList = [1,2,3,4];
//    fruits.insertAll(0,secondList);
//    print(fruits);
  // 删除指定元素,成功返回true，失败返回false
  // 如果集合里面有多个“apples”, 只会删除集合中第一个改元素
//    print(fruits.remove('apples'));
  // 删除最后一个元素，返回删除的元素
//    print(fruits.removeLast());
  // 删除指定范围(索引)元素，含头不含尾
  // fruits.removeRange(start,end);
  // 删除指定条件的元素(这里是元素长度大于6)
//    fruits.removeWhere((item) => item.length >6);
//
//    // 删除所有的元素
//    fruits.clear();
//int random =  new Random().nextInt(10);

  // 替换数组中的元素
//  List list5 = ['123', '333', '4444'];
//  List list7 = ['555'];
//  list5.replaceRange(1, 2, list7);
//        print('list5；$list5');
//        list5.reduce((val1,val2)=>val1+val2);
//        print(list5.reduce((val1,val2)=>val1+val2));
//  int index = 1;
//     print(index++)
//  List list6 = [];
//  int j = -2;
//  for (int i = 0; i < list5.length; i++) {
//    j = j + 2;
//    list6.add(list5[i]);
//    if (i != list5.length - 1) {
//      list6.add('__');
//    }
//  }
//  print(list6);



// 找到数组中相应的值，并将该值替换掉
//List list8 = ['dff'];
//list6.replaceRange(list6.indexOf('__'), list6.indexOf('__')+1, list8);
//  print(list6);
//

// 将数组变成字符串
//  String str = list6.join();
//  print(str);


// 排序
//List<Map<String,dynamic>> list4 = new List();
//list4 = [{'name':'sfde','age':14,'score':0.98},
//{'name':'sfde2','age':17,'score':0.968},
//{'name':'sfde3','age':18,'score':0.898},
//{'name':'sfde2','age':17,'score':0.778},
//];
//list4.sort((first,second)=>first['score'].compareTo(second['score']));
//print(list4);


// 从数组中找到一个符合条件的
//  List<int> list10= [1,2,3,4];
//list10.firstWhere((e)=>e>3);
//print(list10.firstWhere((e)=>e<3,orElse: ()=>2));

// 将数组中原来的数字进行拓展
//print(list10.expand((int x)=>[x,x]));
//print(list10.expand((int x)=>[x,x]).take(5));
//print(list10.reduce((p,c) => p+c));

  // take  将数组操作之后的返回值转换成List
// print(list10.take(3));
// List m = list10.take(3).toList();
// print(m);


// asMap() 将数组变成map，不会改变原数组，key为从0开始的整数，
  List<String> words = ['fee', 'fi', 'fo', 'fum'];
  Map<int, String> map = words.asMap();
  print('wordes:$words');
  print( map.keys.toList());
  print(map);


  // fillRange(int start,int end,[E fillValue])
  List<int> intList = [1,2,3,4];
  intList.fillRange(1, 2);
  print(intList);

  //sublist(int start, [int end])
  List<String> colors = ["red", "green", "blue", "orange", "pink"];
  print(colors.sublist(1, 3));
  print(colors);


}

