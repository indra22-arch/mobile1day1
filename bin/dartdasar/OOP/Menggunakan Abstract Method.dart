import 'Abstract Method.dart';

void main() {
  var cat = Cat("dodog");
  Animal animal = cat;

  cat.run();      
  animal.run();    
}
