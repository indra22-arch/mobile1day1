import 'Access Modifier.dart';

void main() {
  var product = Product();
  product.id = "1";
  product.name = "Iphone";

  product.quantity = 100;  // pakai setter, aman. sedangkan kode awal underscore _ di depan nama properti berarti private → hanya bisa diakses di dalam file yang sama.
  print(product.quantity); // 100
}
