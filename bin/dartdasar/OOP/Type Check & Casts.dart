class Employee {
  String name;

  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);

  void manage() {
    print("$name sedang mengelola tim");
  }
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);

  void strategize() {
    print("$name sedang merencanakan strategi perusahaan");
  }
}

void main() {
  Employee emp = VicePresident("Indra");

  // Cek tipe objek
  if (emp is VicePresident) {
    print("emp adalah VicePresident");
    emp.strategize(); // Aman, karena emp adalah VP
  }

  if (emp is Manager) {
    print("emp adalah Manager");
    emp.manage(); // Aman, karena VP juga Manager
  }

  if (emp is Employee) {
    print("emp adalah Employee");
  }

  // Casting tipe
  Manager manager = emp as Manager;
  manager.manage(); // Memanggil method manage setelah casting
}
