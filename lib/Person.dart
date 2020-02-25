  class Person {
    var name;
    var age;
    // 1 - class中的！！默认构造函数 ！！- 函数名和类名一样，则类似于js中的constructor函数，会在实例化时自动执行
    Person(name,age){
      this.name = name;
      this.age = age;
    }

    // 2 - class 中的！！命名构造函数！！ - 可在实例化时指定是否执行
    Person.now(){
      print('我是一个命名构造函数');
    }

    getInfo(){
      print("${this.name}---${this.age}");
    }
  }