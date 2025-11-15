class Rectangle {
  int _width = 0;
  int _length = 0;

  // Getter dan Setter untuk width
  int get width => _width;
  set width(int value) {
    if (value >= 0) {
      _width = value;
    }
  }

  // Getter dan Setter untuk length
  int get length => _length;
  set length(int value) {
    if (value >= 0) {
      _length = value;
    }
  }

  // Method untuk menghitung luas
  int get area => _width * _length;
}

void main() {
  var rect = Rectangle();

  rect.width = 5;    // pakai setter
  rect.length = 10;  // pakai setter

  print("Width: ${rect.width}");   // pakai getter
  print("Length: ${rect.length}");
  print("Area: ${rect.area}");
}
