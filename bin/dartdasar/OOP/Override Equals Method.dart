class Category {
  String id = "";
  String name = "";

  Category(this.id, this.name);

  // Override operator ==
  @override
  bool operator ==(Object other) {
    if (other is Category) {
      return id == other.id && name == other.name;
    }
    return false;
  }

  // Supaya bisa dipakai di hash-based collections
  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => "Category(id: $id, name: $name)";
}

void main() {
  var cat1 = Category("1", "Electronics");
  var cat2 = Category("1", "Electronics");
  var cat3 = Category("2", "Books");

  print(cat1 == cat2); 
  print(cat1 == cat3); 
}
