import 'package:path/path.dart';
import 'dart:io';
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

  Future<Database> _initDB(String filePath) async{
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    try {
      await Directory(dbPath).create(recursive: true);
    } catch (_) {
      //todo
      print('error');
    }
    return await openDatabase(path, version:1,onCreate: _createDB);
  }

   Future _createDB (Database db, int version) async {
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

  Future close () async {
    final db = await instance.database;
    db.close();
  }


  Future<void> createPhotoElement(PhotoElementDTO photoElementDTO) async {
    final db = await instance.database;
    Map<String, dynamic> photoElementMap = photoElementDTO.toMap();
    final id = await db.insert(
      'PhotoElement',
      photoElementMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<PhotoElementDTO>> getAllPhoto() async {
    final db = await instance.database;
    final res = await db.rawQuery("SELECT * FROM PhotoElement");
    List<PhotoElementDTO> list = res.isNotEmpty ? res.map((c) => PhotoElementDTO.fromLocalDatabase(c)).toList() : [];
    return list;
  }
}





