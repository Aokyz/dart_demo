
/*
*  一般来说，map
*Map没有实现Iterable, 但是Map的属性keys和values都是Iterable对象。
* Map可以使用forEach，但是不可以使用map方法，map方法是Iterable实现的
* isEmpty 和isNotEmpty  都可以用于list，map以及set，用来判断是否为空
* 当这三种类型只是定义了，但没有初始化，调用isEmpty和isNotEmpty会报错，此时要加上?.  此时返回的是null

* */

void main(){
  var map =Map<String, int>();
  // 添加
  map['foo'] = 1;
  map['bar'] = 3;
  Map mm;
  print(mm?.isEmpty);   //null

//  // containsKey() 返回是否存在某个键
//  print(map.containsKey('foo'));  //true
//  // containsValue() 返回是否存在某个值
//  print(map.containsValue(1));  //true

  //对应的key不存在时，返回null
  if(map['foobar'] == null){
    print('map does not contain foobar');
  }

  var map2 = const {
    'foo':2,
    'bar':3
  };

  var map3 = <String,String>{};
  map3['foo'] = '5';


  var map4 = {'tct':[{'filename':'xx'},{'filename':'xx'} ],'ct': [{'filename':'xssx'}]};
  // 返回所有属性,注意keys是属性，不是方法，返回的不是数组,要toList()才能返回list
  var keys = map4.keys.toList();
  print(keys);  // [tct，ct]
  // 返回所有键值，values同样是属性，不是方法
  var values = map4.values;
  print(values);   //([{filename: xx}, {filename: xx}], [{filename: xssx}])
  map4.forEach((k,v){
    print(k);
  });
}
