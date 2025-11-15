class ValidationException implements Exception {
  String message;

  ValidationException(this.message);

  @override
  String toString() => "ValidationException: $message";
}

class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username is blank");
    } else if (password == "") {
      throw ValidationException("Password is blank");
    }
  }
}

void main() {
  // 1. Validasi username & password benar
  try {
    Validation.validate("Lia", "12345");
    print("Login berhasil!");
  } on ValidationException catch (exception) {
    print("Error : ${exception.message}");
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  }

  // 2. Validasi password kosong
  try {
    Validation.validate("Lia", "");
  } on ValidationException catch (exception) {
    print("Error : ${exception.message}");
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  }

  // 3. Validasi username kosong
  try {
    Validation.validate("", "12345");
  } on ValidationException catch (exception) {
    print("Error : ${exception.message}");
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  }
}
