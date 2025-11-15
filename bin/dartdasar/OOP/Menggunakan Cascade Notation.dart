class User {
  String? username;
  String? name;
  String? email;

  void sayHello() {
    print("Hello, $name!");
  }
}

void main() {
  var user = User()
    ..username = "indra123"
    ..name = "Indra Ansyari"
    ..email = "indra@example.com"
    ..sayHello();

  print(user.username);
  print(user.name);
  print(user.email);
}
