void main() {
  int nilai = 90;
  int absen = 90;

  if (nilai >= 80 && absen >= 80) {
    print('Anda Mendapatkan Nilai A');
  } else if (nilai >= 70 && absen >= 70) {
    print('Anda Mendapatkan Nilai B');
  } else if (nilai >= 60 && absen >= 60) {
    print('Anda Mendapatkan Nilai C');
  } else if (nilai >= 50 && absen >= 50) {
    print('Anda Mendapatkan Nilai D');
  } else {
    print('Anda Mendapatkan Nilai E');
  }
}
