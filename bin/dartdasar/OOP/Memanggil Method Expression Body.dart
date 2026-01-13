class Computer {
  void startup() => print("Computer is starting up...");
  void shutdown() => print("Computer is shutting down...");

  String getOperatingSystem() => "Linux";
}

void main() {
  var pc = Computer();

  pc.startup();
  print(pc.getOperatingSystem());
  pc.shutdown();
}
