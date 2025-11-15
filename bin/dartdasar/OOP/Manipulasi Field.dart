void main() {
  var person = Person();
  person.name = "Indra";
  person.address = "Jatim";
  // person.country = "Tidak Bisa Diubah";

  print(person.name);
  print(person.address);
  //print(person.country);
}

class Person {
  String name = '';
  String address = '';
  final String country = 'Indonesia';
}