class Rectangle {
  int _width = 0;
  int _length = 0;

  // Getter dan Setter untuk width
  int get width => _width;
  set width(int value) {
    // Validation di setter width
    if (value >= 1) {
      _width = value;
    } else {
      print("Width must be at least 1");
    }
  }

  // Getter dan Setter untuk length
  int get length => _length;
  set length(int value) {
    // Validation di setter length
    if (value >= 1) {
      _length = value;
    } else {
      print("Length must be at least 1");
    }
  }

  int get area => _width * _length;
}

void main() {
  var rect = Rectangle();

  rect.width = 5;     // valid
  rect.length = 0;    // invalid → akan muncul warning

  print("Width: ${rect.width}");
  print("Length: ${rect.length}");
  print("Area: ${rect.area}");
}
