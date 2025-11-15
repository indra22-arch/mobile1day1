class Employee {
  String? name;

  Employee(this.name);

  @override
  String toString() => "Employee(name: $name)";
}

class Manager extends Employee {
  Manager(String name) : super(name);

  @override
  String toString() => "Manager(name: $name)";
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);

  @override
  String toString() => "VicePresident(name: $name)";
}

void main() {
  Employee employee = Employee("Indra");
  print(employee);

  employee = Manager("Indra");
  print(employee);

  employee = VicePresident("Indra");
  print(employee);
}
