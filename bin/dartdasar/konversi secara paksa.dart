void main() {
  int? nullableNumber = 10; // tidak null
  var number = nullableNumber!; // aman karena nilainya ada
  print(number);
}
