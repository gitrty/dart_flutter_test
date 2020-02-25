// 入口1
// main(){
//   print('你好 dart');
// }

// 入口2 - 没有返回值
// void main(){
//   print('无返回值的入口');
// }

// 数据类型：
// 1 - int 数字整型
// 2 - double 数字浮点型
// 3 - String 字符串
// 4 - bool 布尔
// 5 - List 数组
// 6 - Map 对象
main(){

  // 一、定义变量 
  // 1 - var  var定义的变量会自动推断类型
  // 注意 ： 类型在定义时自动进行推断，之后若修改值，类型不能改变
  // var num = 123;
  // num = 456;
  // print(num);

  // 2 - String,int,double定义变量  (字符串，数字整型，数字浮点型类型)
  // String str = 'hhhh';
  // int num2 = 123123;
  // double num3 = 10.1;
  // print(str);
  // print(num2);
  // print(num3);


  // 二、定义常量  - 定义并赋值后不能修改
  // 注意：变量在定义时不进行赋值，则默认赋值 null
  // 1 - const - 调用一个方法赋值一个常量时，！不能！使用const，需要使用final
  // const a = '一个常量';
  // print(a);

  // 2 - final - 具有const的所有特性，并且可以将一个方法的值赋值给一个常量
  // final b = new DateTime.now();
  // print(b);

  // 注意：也可以将一个方法的值赋值给变量
  // var c = new DateTime.now();
  // print(c);



  // if(123==123){   // dart 中没有=== ， ==表示全等
  //   print('yes');
  // }else{
  //   print('no');
  // }


  // 三、定义数组
  // 1 - 方式1 （常用）
  // var list = [1,2,3];
  // list = [4,5,6];  // 可以修改数组内部的值（只要数据类型不变就ok）
  // print(list);

  // 2 - 方式2 （类似ts，定义数组项的数据类型，使用add方法添加数组项）
  // var list2 = new List<String>();  //
  // list2.add('123');
  // print(list2);


  // 四、定义对象 - 
  // 注意1：键需要加引号 （单引号双引号都可以）
  // 注意2：只能通过 [] 进行访问，不能使用 . 进行访问
  // var obj = { 
  //   'name':'toyo',
  //   'age':18
  // };
  // print(obj); 
  // print(obj['name']);


  // 五、is操作符（判断变量类型）
  // var a = 123;
  // print(a is int); // true
  // print(a is Map); // false


  // 六、新运算符
  // 1 - ??= 运算符 -> 若一个变量为空，则赋值，否则不赋值
  // var a;
  // print(a); // null
  // a ??= 10;
  // print(a); // 10   -> a在定义时没有赋值，所以为null，则 ??= 运算符会进行赋值
  // a ??= 20;
  // print(a); // 10   -> a在上一步进行了赋值，现在a的值为10，则 ??= 运算符不会进行赋值

  // 2 - ~/ 运算符   -> 除后取整  （% 为除后取余）
  // var a = 13;
  // var b = 5;
  // print(a~/b); // 2

  // 3 - ?? 运算符  （dart中 ||、&& 逻辑用算符只能用作判断）
  // var a;
  // var b = a ?? 10;  // 类似js中的 || ，当a为空时，赋值10，否则赋值a
  // print(b);


  // 七、类型转换
  // 1 - 数字转字符串 xxx.toString()
  // var a = 123;
  // var b = a.toString();
  // print(b is String);  // true

  // 2 - 字符串转数字整型  int.parse(xxx)
  // var a = '123';
  // var b = int.parse(a);
  // print(b is int);   // true

  // 3 - 字符串转数字浮点型  int.parse(xxx)
  // var a = '123.1';
  // var b = double.parse(a);
  // print(b is double);   // true


  // 八、try...catch..  try中代码报错，则只需catch中的内容
  // var a = '';
  // try{
  //   var b = int.parse(a);
  //   print(b);
  // }catch(e){
  //   print(0); // 0
  // };

  // 九、dary中的方法
  // 1 - isEmpty   检测一个变量是否为空 (可以检测 字符串/数组/对象 )
  // var a = '';
  // print(a.isEmpty);   // true
  // List list=[];
  // print(list.isEmpty); // true

  // 2.1 - reversed  翻转一个数组中的项（返回值不是数组）
  // List list = [1,2,3];
  // print(list.reversed);    // (3,2,1)
  
  // // 2.2 - toList()  将一个集合转换为数组
  // print(list.reversed.toList());   // [3,2,1]

  // 3 - add(xxx)/addAll([xxx,yyy])   给一个数组中添加 一个/多个数据(会改变原数组)
  // List list = [1,2,3];
  // list.add(4);
  // print(list);   // [1,2,3,4]
  // list.addAll([5,6]);
  // print(list);  // [1,2,3,4,5,6]

  // 4 - indexOf(xxx)   和js中一样（找到返回下标，找不到返回-1） -> 可作用于字符串和数组(数字不行)
  // var str = '123';
  // print(str.indexOf('2'));  //  1
  // var list = [4,5,6];
  // print(list.indexOf(6));  //  2

  // 5 - remove(xxx)/removeAt(xxx)   删除数组中的项(会改变原数组)
  // remove(xxx) 删除指定的值，只删除找到的第一个
  // removeAt(xxx)  根据下标删除对应的项
  // List list = [1,2,3,1];
  // list.remove(1);
  // print(list);  // [2,3,1]
  // list.removeAt(0);
  // print(list);  // [3,1]

  // 6 - fillRange(start,end,value)  修改数组中的项
  //      start ：开始下标（包括）
  //      end ：结束下标（不包括）
  //      value ：修改后的值
  // List list = ['aaa','bbb','ccc'];
  // list.fillRange(0,2,'newValue');
  // print(list);   // [newValue, newValue, ccc]

  // 7 - insert(index,value)/insertAll(index,[value1,value2])  - 在数组指定位置插入一个/多个项
  // index：指定下标前插入数据
  // List list = ['aaa','bbb','ccc'];
  // list.insert(1,'hhh');
  // print(list);    // [aaa, hhh, bbb, ccc]
  // list.insertAll(0,[1,2]);
  // print(list);   //  [1, 2, aaa, hhh, bbb, ccc]

  // 8 - join/split  和js中一样（数组转字符串/字符串转数组）
  // List list = ['a','b','c'];
  // var str = list.join('-');
  // print(str);   // a-b-c
  // var newList = str.split('-');
  // print(newList);   // [a,b,c]

  // 9 - keys/values  获取到所有的键/值 （获取到的是一个集合，需要通过toList()转换位数组）
  // var obj = {
  //   'name':'toyo',
  //   'age':18
  // };
  // print(obj.keys.toList());  // [name, age]
  // print(obj.values.toList());  // [toyo, 18]

  // 10 - forEach 遍历
  // var list = [1,2,3];
  // list.forEach((value){    // 遍历数组只有一个参数value
  //   print(value);
  // });

  // 11 - map 映射
  // var list = [1,2,3];
  // var newList = list.map((value){
  //   return value*2;
  // });
  // print(newList.toList());   // [2,4,6]

  // 12 - where   等同js中的filter  (将return为true的项返回为一个新的集合)
  // var list = [1,2,3,4];
  // var newList = list.where((value){
  //   return value>2;
  // });
  // print(newList.toList());  // [3,4]

  // 13 - any  数组中只要有一项返回true，整体就返回true
  // var list = [1,2,3,4];
  // var flag = list.any((value){
  //   return value>3;
  // });
  // print(flag);  // true

  // 14 - every  和any相反，每一项都返回true，整体才返回true，否则返回false
  // var list = [1,2,3];
  // // !!!!!!!!!!!!!!!如果只有一行代码切return出去，则{}可以省略，但需要加上=>!!!!!!!!!!!
  // var flag = list.every((value) => value>1);   
  // print(flag);  // false

  // 15 - forEach 遍历对象
  // var obj = {
  //   'name':'toyo',
  //   'age':18
  // };
  // obj.forEach((key,value){   // 遍历对象时有两个参数 key ,value
  //   // dart中不会做隐式类型转换，所以字符串+数字拼接时，需要把数字toString()转换为字符串
  //   print(key+"---"+value.toString());
  // });


  // 十、for 循环
  // for(var i=0;i<3;i++){
  //   print(i);
  // };


  // 十一、函数  - 可以定义在入口函数内部或外部
  // 1 - 无返回值的函数 - 默认返回null
  // void myFn(){
  //   print('无返回值的函数');
  // };
  // // 调用
  // myFn();  

  // 2 - 有返回值的函数 - 也可以不返回，默认返回null
  // int myFn(){
  //   return 100;
  // };
  // print(myFn());   // 100

  // 3 - 带参数的返回值 - 函数定义时有参数，执行时必须穿参
  // int myFn(n){    // -> 参数不指定类型
  //   print(n);
  // };
  // myFn('hhh');   // hhh

  // void myFn(int n){  // -> 参数指定类型
  //   print(n);
  // };
  // myFn(1);

  // 4 - 可选参数,使用[]包裹，则调用时不一定进行传参
  // void myFn(String name,[int age,sex]){
  //   print(name + age.toString()+sex);
  // };
  // myFn('toyo');

  // 5 - 函数参数默认值 -> 只能对 ！可选参数！ 使用（类似es6）
  // void myFn([int numb=100]){
  //   print(numb);
  // };
  // myFn();   // 100

  // 6 - 函数定义方法2  - 将一个匿名函数赋值给一个变量
  // var fn = (){
  //   print('1');
  //   return 10;
  // };
  // print(fn());

  // 7 - 函数前不指定类型，则返回值可有可无
  // fn(){
  //   return 10;
  // };
  // print(fn());   // 10

  // 8 - 自执行函数  -  和js中差不多
  // ((){
  //   print('我是一个自执行函数');
  // })();


  // 十二、全局变量与局部变量
  // 1 - 全局变量
  // var a = 100;  // 全局变量，会常驻内存，不会被垃圾回收机制回收（也可以定义再main入口外面）
  // fn(){
  //   a++;
  //   print(a);
  // }
  // fn(); // 101
  // fn(); // 102
  // fn(); // 103


  // 十三、闭包
  // fn(){
  //   var a = 10;
  //   return (){
  //     a++;
  //     print(a);
  //   };
  // };
  // var b = fn();
  // b();   // 11
  // b();   // 12
  // b();   // 13


  // 十四、字符串拼接 - 和es6中一样
  // var a = 10;
  // var b = 20;
  // print("${a}--${b}");  // 字符串拼接

}
