class Category {
  String id = "";
  String name = "";

  Category(this.id, this.name);
}

void main() {
  var category1 = Category("1", "Pulpen");
  var category2 = Category("2", "Buku");

  print(category1.id);   // 1
  print(category1.name); // Electronics
  print(category2.id);   // 2
  print(category2.name); // Books
}
