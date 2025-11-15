class Product {
  String? id;
  String? name;
  int? _quantity;

  // Getter
  int get quantity => _quantity ?? 0;

  // Setter untuk bisa mengubah _quantity dari luar
  set quantity(int value) {
    if (value >= 0) {
      _quantity = value;
    }
  }
}
