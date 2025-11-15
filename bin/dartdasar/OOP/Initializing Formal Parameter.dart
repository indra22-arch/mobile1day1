class Person {
  String name = "Indra";
  String? address;
  final String country = "Indonesia";

  Person(this.name, this.address);
}

void main() {
  var person = Person("Indra", "Banjarmasin");

  print(person.name);
  print(person.address);
  print(person.country);
}
