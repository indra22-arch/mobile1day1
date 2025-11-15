class car {
  String namaMobil = "SMK";
  String? brandMobil;
  final String namaNegara = "Indonesia";

  void tampilkanDataMobil(String brandMobil) {
    print(
      'ini adalah Mobil $namaMobil dengan Brand $brandMobil dari Negara $namaNegara',
    );
  }
}

void main() {
  var Mobil1 = car();
  Mobil1.tampilkanDataMobil("Boyolali");
}
