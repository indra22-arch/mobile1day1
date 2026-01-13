class Car {
  String name = "";

  void drive() {}

  int getTire() {
    return 0;
  }
}

class Avanza implements Car {
  String name = "Avanza";

  @override
  void drive() {
    print('Driving $name');
  }

  @override
  int getTire() {
    return 4;
  }
}

void main() {
  Car myCar = Avanza();

  myCar.drive();         
  print("Tires: ${myCar.getTire()}");
}
