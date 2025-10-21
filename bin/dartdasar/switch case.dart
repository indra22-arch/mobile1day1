void main() {
  var nilai = 'A';
  switch (nilai) {
    case 'A':
      print('Anda Lulus dengan Baik');
      break;
    case 'B':
    case 'C':
      print('Anda Lulus');
      break;
    case 'D':
      print('Anda Tidak Lulus');
      break;
    default:
      print('Mungkin Anda Salah Jurusan');
  }
}
