class User {
  String? username;
  String? name;
  String? email;
}

void main() {
  var user = User();
  user.username = "indra123";
  user.name = "Indra Ansyari";
  user.email = "indra@example.com";

  print(user.username);
  print(user.name);
  print(user.email);
}
