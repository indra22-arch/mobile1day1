void main() {
  var inputString = '1000';
  var inputint = int.parse(inputString);
  var inputdouble = double.parse(inputString);

  var doubleFromInt = inputint.toDouble();
  var intFromDouble = inputdouble.toInt();

  var stringFromInt = inputint.toString();
  var stringFromDouble = inputdouble.toString();

  print(inputint);
  print(inputdouble);
  print(doubleFromInt);
  print(intFromDouble);
  print(stringFromInt);
  print(stringFromDouble);
}
