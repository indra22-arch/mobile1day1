import 'Membuat Class Exception.dart';

void main() {
  try {
    Validation.validate("Indra", "salah");
  } on ValidationException catch (exception) {
    print("Error : ${exception.message}");
  } catch (exception) {
    print("Error : ${exception.toString()}");
  } finally {
    print('Program Selesai');
  }
}
