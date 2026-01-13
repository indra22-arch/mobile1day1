abstract class Multimedia {}

mixin Playable on Multimedia {
  String name = "";

  void play() {
    print('Play $name');
  }
}

mixin Stoppable on Multimedia {
  void stop() {
    if (this is Playable) {
      print('Stop ${(this as Playable).name}');
    } else {
      print('Stop');
    }
  }
}

class Video extends Multimedia with Playable, Stoppable {
  Video() {
    name = 'Video';
  }
}

class Audio extends Multimedia with Playable, Stoppable {
  Audio() {
    name = 'Audio';
  }
}

void main() {
  var video = Video();
  video.play();
  video.stop();

  var audio = Audio();
  audio.play();
  audio.stop();
}