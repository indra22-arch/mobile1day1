void sayHello({required String firstName, String lastName = 'Default'}) {
  print('Hello $firstName $lastName');
}

void main() {
  sayHello(firstName: 'Indra', lastName: 'Ansyari');
  sayHello(lastName: 'Ansyari', firstName: 'Indra');
  sayHello(firstName: 'Indra');
  sayHello(firstName: 'Ansyari');
  sayHello(firstName: 'Ansyari', lastName: 'Indra');
}