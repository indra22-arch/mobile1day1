class Employee {
  String? name;

  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void main() {
  var employee = Employee("Indra");
  print("Employee name: ${employee.name}");

  var manager = Manager("Indra");
  print("Manager name: ${manager.name}");

  var vp = VicePresident("Indra");
  print("Vice President name: ${vp.name}");
}
