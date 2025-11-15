class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  @override
  void sayHello(String name) {
    print('Hello $name, my name is Vice President ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = "Indra";
  manager.sayHello("Indra");

  var vp = VicePresident();
  vp.name = "Indra";
  vp.sayHello("Indra");
}
