class Product {
  String? id;
  String? name;
  int? _quantity; // tidak bisa diakses langsung dari luar directory

  int? getQuantity() {
    return _quantity;
  }

  String toString() {
    return 'Product{id: $id, name: $name, quantity: $_quantity}';
  }
}