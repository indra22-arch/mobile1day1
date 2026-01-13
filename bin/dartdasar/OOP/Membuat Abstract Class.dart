import 'abstract class.dart';

void main() {
  var city = City("Banjarmasin");
  Location location = city;

  print(city.name);    
  print(location.name);  
}
