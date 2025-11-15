void main() {
  var person = Person();
  person.name = "Ireng";

  person.sayHello("Nigga");
}

class Person {
  late String name;

  void sayHello(String to) {
    print('Hello $to, my name is $name');
  }
}