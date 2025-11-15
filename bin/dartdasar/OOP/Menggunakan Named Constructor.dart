void main() {
  var p1 = Person("Indra", "Banjarmasin");
  var p2 = Person.withName("Indra");
  var p3 = Person.withAddress("Dari sini");

  print(p1);
  print(p2);
  print(p3);
}

class Person {
  String name;
  String address;

  Person(this.name, this.address);

  Person.withName(this.name) : address = "anu";
  Person.withAddress(this.address) : name = "anu";

  @override
  String toString() => "Person(name: $name, address: $address)";
}
