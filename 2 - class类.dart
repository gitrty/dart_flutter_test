

  // 十五、class类  - 定义再 main 入口外面
  // class Person {
  //   var name = "toyo";
  //   int age = 18;
    
  //   getUserInfo(){
  //     print("${this.name}---${this.age}");
  //   }    // 类中的方法后不需要加封号

  //   setInfo(age){
  //     this.age = age;
  //     print(this.age);
  //   }
  // }

  // main(){
  //   // 实例化
  //   var p = new Person();

  //   print(p.name);  // toyo
  //   p.getUserInfo();  // toyo---18
  //   p.setInfo(25);  // 25
  // }


  // 十六、class类2 - （js中的constructor）
  // class Person {
  //   var name;
  //   var age;
  //   // 1 - class中的！！默认构造函数 ！！- 函数名和类名一样，则类似于js中的constructor函数，会在实例化时自动执行
  //   Person(name,age){
  //     this.name = name;
  //     this.age = age;
  //   }

  //   // 2 - class 中的！！命名构造函数！！ - 可在实例化时指定是否执行
  //   Person.now(){
  //     print('我是一个命名构造函数');
  //   }

  //   getInfo(){
  //     print("${this.name}---${this.age}");
  //   }
  // }
  // main(){
  //   // 1 - 触发默认构造函数 Person
  //   var p = new Person('toyo','17');
  //   p.getInfo();

  //   // 2 - 触发命名构造函数 Person.now
  //   var p2 = new Person.now();
  // }


  // 十七、class 中的 get 和 set 修饰符
  // class Person {
  //   // 1 - get 类似计算属性
  //   get run{
  //     return '我是class中的get方法';
  //   }

  //   // 2 - set 
  //   set setRun(value){
  //     print(value);
  //   }
  // }

  // main(){
  //   var p = new Person();
  //   // 1 - get 修饰符函数的调用 - 不需要加 () 就会执行
  //   print(p.run);  // 我是class中的get方法

  //   // 2 - set 修饰符函数的调用
  //   p.setRun = 666;   // 666  - 会触发 setRun 函数，并将 666 当做参数 value
  // }


  // 十八、class中的静态方法 static
  // class Person {
  //   static var name = 'toyo';
  //   static showName(){
  //     print(name);
  //   }
  // }

  // main(){
  //   // 静态属性和方法不需要实例化就可以访问
  //   print(Person.name);  // toyo
  //   Person.showName();  // toyo
  // }


  // 十九、级联操作符 .. (链式编程)
  // class Person {
  //   var name = 'toyo';
  //   var age = 18;
  //   getInfo(){
  //     print("${this.name}---${this.age}");
  //   }
  // }

  // main(){
  //   var p = new Person();

  //   p..name = 'tom'
  //    ..age = 30
  //    ..getInfo();

  //   //  上面代码等同于
  //   // p.name = 'tom';
  //   // p.age = 30;
  //   // p.getInfo();
  // }


  // 二十、继承
  class Person {
    var name;
    var age;
    Person(this.name,this.age);
    getInfo(){
      print("${this.name}---${this.age}");
    }
  }

  class Web extends Person {
    var sex;
    Web(name,age,sex):super(name,age);
    getInfo(){
      print("${this.name}---${this.age}---${this.sex}");
    }
  }
  main(){
    var p = new Person('toyo',18);
    p.getInfo();

    var w = new Web('toyo',20,'男');
    w.getInfo();
  }