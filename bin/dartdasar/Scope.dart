void main() {
  var name = 'Mamang indra';
  var hello = '';

  void sayHello() {
    hello = 'Hello $name';
    print(hello);
  }

  sayHello();
  print(hello);
}