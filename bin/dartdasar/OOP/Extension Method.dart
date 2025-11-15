class Person {
  String name = "Indra";
  Person(this.name);
}

extension GoodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print("Good Bye $paramName, from ${this.name}");
  }
}