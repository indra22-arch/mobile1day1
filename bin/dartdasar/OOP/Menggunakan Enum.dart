import 'Membuat Enum.dart';

void main() {
  var customer = Customer("Manusia", CustomerLevel.vip);
  print(customer.name);
  print(customer.level);

  print(CustomerLevel.values);
}