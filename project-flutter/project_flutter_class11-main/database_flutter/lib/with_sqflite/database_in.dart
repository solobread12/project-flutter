import 'dart:io';
import 'package:database_flutter/with_sqflite/produk_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseIn {
  final String table = 'contact';
  Database? _db;

  Future<Database> database() async {
    if (_db != null) return _db!;
    _db = await initDB();
    return _db!;
  }

  Future<Database?> initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'contact.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $table (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            phone TEXT,
            email TEXT
          )
        ''');
      },
    );
  }

  Future<int> insert(ContactModel data) async {
    final db = await database();
    return await db.insert(table, data.toMap());
  }

  Future<List<ContactModel>> getAll() async {
    final db = await database();
    final results = await db.query(table);

    return results.map((e) => ContactModel.fromMap(e)).toList();
  }

  Future<int> update(ContactModel data) async {
    final db = await database();

    return await db.update(
      table,
      data.toMap(),
      where: 'id = ?',
      whereArgs: [data.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await database();
    return await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}
