class Database {
  Database() {
    print('Create new Database');
  }

  static final database = Database();

  factory Database.get() {
    return database;
  }
}