class Person {
  String name = "Indra";
  String? address;
  final String country = "Prindavanesia";
}

void main() {
  var person = Person();

  print(person.name);      
  print(person.address);   // null karena belum diisi
  print(person.country);   
}
