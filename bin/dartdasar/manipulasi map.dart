void main() {
  var name = <String, String>{};
  name['first'] = 'Saya';
  name['middle'] = 'M';
  name['last'] = 'Indra Ansyari Rahman';

  print(name['first']);

  name['middle'] = 'Muhammad';
  print(name);

  name.remove('last');
  print(name);
}
