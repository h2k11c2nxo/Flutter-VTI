import 'package:first_app/data/to-do-list-data.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseHelper {
  static const _databaseName = 'my_database.db';
  static const _databaseVersion = 1;

  static const table = 'todolist';
  static const columnId = 'id';
  static const columnPriority = 'priority';
  static const columnTitle = 'title';
  static const columnContent = 'content';

  static Database? _database;
  // static final DataBaseHelper instance = DataBaseHelper._privateConstructor();
  //
  // DataBaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnPriority TEXT NOT NULL,
        $columnTitle TEXT NOT NULL,
        $columnContent TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertItem(TodoList record) async {
    final db = await database;
    return await db.insert(table, record.toMap());
  }

  Future<void> insertListItems(List<TodoList> items) async {
    final db = await database;
    Batch batch = db.batch();

    for (TodoList record in items) {
      batch.insert(table, record.toMap());
    }

    await batch.commit(noResult: true);
  }

  Future<List<TodoList>> getAllList() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(table);
    return List.generate(maps.length, (index) {
      return TodoList.fromMap(maps[index]);
    });
  }

  Future<int> update(TodoList item) async {
    final db = await database;
    return await db.update(table, item.toMap(),
        where: '$columnId = ?', whereArgs: [item.id]);
  }

  Future<int> deleteRecord(int id) async {
    final db = await database;
    return await db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
