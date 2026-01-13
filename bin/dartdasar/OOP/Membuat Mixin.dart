mixin Playable {
  String? name;

  void play() {
    print('Playing $name');
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}