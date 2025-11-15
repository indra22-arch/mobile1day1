class Employee {
  String? name;

  Employee(this.name);

  void work() {
    print("$name is working as an Employee");
  }
}

class Manager extends Employee {
  Manager(String name) : super(name);

  @override
  void work() {
    print("$name is working as a Manager");
  }
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);

  @override
  void work() {
    print("$name is working as a Vice President");
  }
}

void main() {
  Employee emp1 = Employee("Indra");
  Employee emp2 = Manager("Indra");
  Employee emp3 = VicePresident("Indra");

  emp1.work();
  emp2.work();
  emp3.work();
}
