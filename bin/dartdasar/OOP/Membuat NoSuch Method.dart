class Repository {
  final String _name;

  Repository(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    // Mengubah Symbol menjadi String
    var column = invocation.memberName.toString();
    column = column.replaceAll('Symbol("', '').replaceAll('")', '');

    var value = invocation.positionalArguments.isNotEmpty
        ? invocation.positionalArguments.first
        : '';
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
    return null;
  }
}
