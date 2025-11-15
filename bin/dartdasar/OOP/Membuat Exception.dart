class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw Exception('Username tidak boleh kosong');
    } else if (password == "") {
      throw Exception('Password tidak boleh kosong');
    }
  }
}

void main() {
  try {
    String username = "";
    String password = "12345";

    Validation.validate(username, password);
    print("Login berhasil!");
  } catch (e) {
    print("Error: $e");
  }

  try {
    String username = "Indra";
    String password = "";

    Validation.validate(username, password);
    print("Login berhasil!");
  } catch (e) {
    print("Error: $e");
  }

  try {
    String username = "Indra";
    String password = "12345";

    Validation.validate(username, password);
    print("Login berhasil!");
  } catch (e) {
    print("Error: $e");
  }
}
