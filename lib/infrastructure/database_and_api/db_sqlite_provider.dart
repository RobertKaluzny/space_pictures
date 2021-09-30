import 'dart:io';

import 'package:path/path.dart';
import 'package:space_pictures/domain/failure/failure.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';
import 'package:sqflite/sqflite.dart';

class DBSQLitetProvider {
  static Database? _database;

  static final DBSQLitetProvider instance = DBSQLitetProvider._init();

  DBSQLitetProvider._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('spacepictures.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    try {
      await Directory(dbPath).create(recursive: true);
    } catch (_) {
      //todo
      print('error');
    }
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('CREATE TABLE PhotoElement('
        'apod_site TEXT,'
        'copyright TEXT,'
        'date TEXT,'
        'description TEXT,'
        'hdurl TEXT,'
        'media_type TEXT,'
        'title TEXT,'
        'url TEXT,'
        'local_path TEXT'
        ')');
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  Future<void> createPhotoElement(PhotoElementDTO photoElementDTO) async {
    final db = await instance.database;
    //await db.delete("PhotoElement");
    if (await _findOnePhotoElement(photoElementDTO.date) == false) {
      Map<String, dynamic> photoElementMap = photoElementDTO.toMap();
      final id = await db.insert(
        'PhotoElement',
        photoElementMap,

        //it doesn't work - see why
        //conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<PhotoElementDTO>> getAllPhoto() async {
    try {
      final db = await instance.database;
      final res = await db.rawQuery("SELECT * FROM PhotoElement");
      List<PhotoElementDTO> list = res.isNotEmpty ? res.map((c) => PhotoElementDTO.fromLocalDatabase(c)).toList() : [];
      return list;
    } catch (e) {
      List<PhotoElementDTO> photoElementDTOFailure = [
        PhotoElementDTO.setFailure(const Failure(
            failureId: 'SQL',
            failureValue: 'Error from local base',
            failureForUser: 'Error from local base',
            value: true))
      ];
      return photoElementDTOFailure;
    }
  }

  Future<bool> _findOnePhotoElement(String date) async {
    final db = await database;
    final res = await db.query("PhotoElement", where: "date = ?", whereArgs: [date]);
    List<PhotoElementDTO> list = res.isNotEmpty ? res.map((c) => PhotoElementDTO.fromLocalDatabase(c)).toList() : [];
    if (list.length == 0) {
      return false;
    }
    return true;
  }
}
