class User {
  String? username;
  String? name;
  String? email;
}

void main() {
  User? user;

  user
    ?..username = "indra123"
    ..name = "Indra Ansyari"
    ..email = "indra@example.com";

  print(user?.username);
  print(user?.name);
  print(user?.email);
}
