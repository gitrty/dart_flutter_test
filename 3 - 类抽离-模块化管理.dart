import "lib/Person.dart";   // 使用import的方式引入外部dart模块

main(){
  var p = new Person.now();

  var p2 = new Person('toyo',18);
  p2.getInfo();
}