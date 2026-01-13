class ValidationException implements Exception {
  String message;

  ValidationException(this.message);

  @override
  String toString() => "ValidationException: $message";
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException('Username tidak boleh kosong');
    } else if (password == "") {
      throw ValidationException('Password tidak boleh kosong');
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
    print(e); // ValidationException: Username tidak boleh kosong
  }

  try {
    String username = "Indra";
    String password = "";

    Validation.validate(username, password);
    print("Login berhasil!");
  } catch (e) {
    print(e); // ValidationException: Password tidak boleh kosong
  }

  try {
    String username = "Indra";
    String password = "12345";

    Validation.validate(username, password);
    print("Login berhasil!"); 
  } catch (e) {
    print(e);
  }
}
