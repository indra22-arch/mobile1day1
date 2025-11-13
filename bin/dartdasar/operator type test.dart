void main() {
  dynamic variable = 100;

  var variableInt = variable as int;

  var isInt = variable is int;
  var isNotBoolean = variable is! bool;

  print('Nilai variableInt: $variableInt');     // 100
  print('Apakah variable bertipe int? $isInt'); // true
  print('Apakah variable bukan bool? $isNotBoolean'); // true
}
