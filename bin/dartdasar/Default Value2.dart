void sayHello(String firstName, [String? lastName]) {
  print('Hello $firstName ${lastName ?? ''}');
}

void main() {
  sayHello('Indra');
  sayHello('Indra', 'Ansyari');
}