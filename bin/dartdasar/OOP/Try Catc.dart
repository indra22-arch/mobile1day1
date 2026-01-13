import 'Membuat Class Exception.dart';

void main() {
  try {
    Validation.validate("", "");
  } on ValidationException {
    print('Validation Error');
  }
}