class car {
  String namaMobil = "toyota";
  String? brandMobil;
  final String namaNegara = "jepang";

  car(String paraMobil) {
    namaMobil = paraMobil;
  }

  void tampilkanDataMobil(String brandMobil) {
    print(
      'ini adalah mobil $namaMobil dengan brand $brandMobil dari negara $namaNegara',
    );
  }
}

void main() {
  var Mobil1 = car("mitsubishi");
  Mobil1.tampilkanDataMobil('tes');
}
