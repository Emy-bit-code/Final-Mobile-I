import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBService {
  static Database? _db;

  static Future<Database> getDatabase() async {
    if (_db != null) return _db!;

    final path = join(await getDatabasesPath(), 'produtos.db');
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE favoritos (
            id INTEGER PRIMARY KEY,
            nome TEXT,
            preco REAL
          )
        ''');
      },
    );

    return _db!;
  }

  static Future<void> salvarProduto(Map<String, dynamic> produto) async {
    final db = await getDatabase();
    await db.insert('favoritos', produto, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> listarFavoritos() async {
    final db = await getDatabase();
    return db.query('favoritos');
  }
}
