void sayHello({String? firstName, String lastName = 'Default'}) {
  print('Hello $firstName $lastName');
}

void main() {
  sayHello(firstName: 'Indra', lastName: 'Ansyari');
  sayHello(lastName: 'Ansyari', firstName: 'Indra');
  sayHello();
  sayHello(firstName: 'Indra');
  sayHello(lastName: 'Indra');
}