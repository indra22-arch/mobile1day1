void sayHello(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print('Hi $filteredName');
}

void main() {
  sayHello('Penaldo', (name) {
    return name.toUpperCase();
  });
  sayHello('Penaldo', (String name) => name.toLowerCase());
}