class Person {
  String name = "Indra";
  String? address;
  final String country = "Indonesia";

  Person(String name, String address) {
    this.name = name;
    this.address = address;
  }
}

void main() {
  var person = Person("Indra", "Banjarmasin");

  print(person.name);
  print(person.address);
  print(person.country);
}
