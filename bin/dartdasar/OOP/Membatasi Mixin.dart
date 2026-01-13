abstract class Multimedia {}

mixin Playable on Multimedia {
  String name = "";

  void play() {
    print('Play $name');
  }
}