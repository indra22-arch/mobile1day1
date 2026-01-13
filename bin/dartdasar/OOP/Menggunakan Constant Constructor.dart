class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);

  void show() {
    print('Point(x: $x, y: $y)');
  }
}

void main() {
  const p1 = ImmutablePoint(5, 10);
  const p2 = ImmutablePoint(5, 10);
  const p3 = ImmutablePoint(7, 3);

  p1.show();
  p3.show();

  print(identical(p1, p2));
  print(identical(p1, p3));
}
