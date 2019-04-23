void main(){
  print(aa(2)); //3
  _sayHello('zcl');//zcl is 18,like null
  //含命名参数的函数的调用
  _sayHello('zcl',age:21,hobbit:'piano');//zcl is 21,like piano
  //含位置参数的函数调用
  //如果想指定某个位置上的参数值，则必须前面位置的已经有值,即使前面的值存在默认值
  //_position('zcl',4);//报错
  _position('zcl','3',4);//zcl at (3,4)
}

 aa(a)=>a = a+1;

//可选的命名参数,以及默认参数的写法,没有设置默认值的被当成null
void _sayHello(String name,{int age=18,String hobbit}){
  print('$name is $age,like $hobbit');
}

//可选的位置参数，以及默认参数的写法
void _position(String name,[String x='2',int y]){
  print('$name at ($x,$y)');
}