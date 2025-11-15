abstract class Car {
  String getName();
}

abstract class HasBrand {
  String getBrand();
}

class Avanza implements Car, HasBrand {
  String name = "Avanza";

  @override
  String getName() => name;

  @override
  String getBrand() => "Toyota";
}

void main() {
  Car car = Avanza();
  HasBrand brandedCar = Avanza();

  print("Car name: ${car.getName()}");          
  print("Car brand: ${brandedCar.getBrand()}"); 
}
