class Rectangle {
  int _width = 0;
  int _length = 0;

  int get width => _width;
  set width(int value) => _width = value;

  int get length => _length;
  set length(int value) => _length = value;

  // Method untuk menghitung luas
  int get area => _width * _length;
}

void main() {
  var rect = Rectangle();

  rect.width = 10;
  rect.length = 20;

  print("Width: ${rect.width}");
  print("Length: ${rect.length}");
  print("Area: ${rect.area}");
}
