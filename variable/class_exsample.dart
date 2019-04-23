/*
* 默认情况下，子类中的构造函数调用超类的无参构造函数。超类的构造函数在构造函数体的开头被调用。如果 还使用初始化列表，则在调用超类之前执行。
  默认的执行顺序如下：
  初始化列表 -> 超类的无参数构造函数 -> 主类的构造函数
  当超类的构造函数也有初始化列表的时候：
    先执行子类的初始化列表，只初始化子类的成员变量
    再执行超类的初始化列表
    接着执行超类的构造函数主体
    最好执行子类的构造函数主体
   超类必须要有一个空参构造(可以是可选参数的有参构造)，如果超类没有未命名的无参数构造函数，则必须手动调用超类中的一个构造函数。在冒号（:）之后，在构造函数体（如果有）之前指定超类构造函数。
   例子：TestChild类和其超类Test类
*
* identical(instance1,instance2) 判断两个对象是否是同一个对象
* 如果一个构造函数并不总是返回一个新的对象，则使用factory来定义这个构造函数。
* */


void main(){
//  var result = new TestChild.computeArea(3, 4);
//  print('面积为：${result.area}');
//
//  new NewTestChild();

//  print(sayHello(new Person('李四'))); // 你好 张三. 我是 李四.
  print(sayHello(new PersonImpl())); // 你好 张三  你知道我是谁吗？

}
class Test{
  num width;
  num height;
  num area;

//  Test(this.width,this.height){
//    print('Test的默认构造');
//  }
  Test(){
    print('Test的默认构造');
  }
  Test.computeArea(width,height)
  :width = width,
   height = height,
   area = width*height{
    print('Test的命名构造');
  }

}

class TestChild extends Test{
  num width;
  num height;
  num area;
  // 因为父类Test有显示定义的无参数的非命名的构造函数，所以下面两个构造函数不会报错，
  // 如果父类没有显示定义的无参数的非命名的构造函数，那么子类的构造函数必须显示调用父类的其他构造函数
  TestChild(this.width,this.height){
    print('TestChild 空参构造');
  }
  TestChild.computeArea(width,height)
  :area = (width*height)/2{
    print('TestChild 的命名构造');
  }
}

class NewTest{
  static String data;
  NewTest(){
    print('NewTest 空参构造，data:$data');
  }
  NewTest.area(String data){
    print('NewTest.area2 命名函数，data:$data');
  }
}

class NewTestChild extends NewTest{
  //参数可以是一个表达式
  NewTestChild():super.area(getDefaultData()){
    print('NewTestChild 空参函数 调用父类的命名构造');
  }
   static String getDefaultData(){
     return 'NewTestChild 的数据 getDefaultData';
   }

}


// Person类 隐式接口包含hello()
//implement 实现接口，在不继承B类的情况下让A类变成B类的类型，并且A类可以使用B类的API
class Person {
  // 在接口中，但是仅在此库中可见。
  final _name;

  // 不在接口中,因为这是一个构造函数
  Person(this._name){
    print('ok');
  }

  // 在接口中
  String hello(String who) => '你好 $who. 我是 $_name.';
}

// Person接口的实现
class PersonImpl implements Person {
  get _name => '';

  String hello(String name) => '你好 $name  你知道我是谁吗？';
}

String sayHello(Person person) => person.hello('张三');

class User{
  String name;
  User(this.name);
}


// 静态变量
//class UserService {
//  static _single = new UserService._internal();
//  User
//}


