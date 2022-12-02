import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper{

  static Database? _db;

  Future<Database> get db async{
    if(_db != null){
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  initDatabase() async {
    String documentsDirectory = await getDatabasesPath();
    String path = join(documentsDirectory, "test.db");
    var database = await openDatabase(path, version: 1, onCreate: _onCreate);
    return database;
  }
  _onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE Test (
    'id' INTEGER NOT NULL PRIMARY KEY,
    'fullName' TEXT NOT NULL,
    'email' TEXT NOT NULL,
    'phone' TEXT NOT NULL,
    'address' TEXT NOT NULL,
    'dateOfBirth' TEXT NOT NULL,
    'personalStatement' TEXT NOT NULL,
    'companyName' TEXT NOT NULL,
    'jobTitle' TEXT NOT NULL,
    'companyDetails' TEXT NOT NULL,
    'startDateCareer' TEXT NOT NULL,
    'endDateCareer' TEXT NOT NULL,
    'schoolName' TEXT NOT NULL,
    'degree' TEXT NOT NULL,
    'fieldOfStudy' TEXT NOT NULL,
    'grade' TEXT NOT NULL,
    'startDateEducation' TEXT NOT NULL,
    'endDateEducation' TEXT NOT NULL,
    'keySkills' TEXT NOT NULL,
    'projectTitle' TEXT NOT NULL,
    'projectDetails' TEXT NOT NULL,
    'projectStartDate' TEXT NOT NULL,
    'projectEndDate' TEXT NOT NULL,
    'interests' TEXT NOT NULL,
    'referenceName' TEXT NOT NULL,
    'referenceJobTitle' TEXT NOT NULL,
    'referenceCompany' TEXT NOT NULL,
    'referencePhone' TEXT NOT NULL,
    'referenceEmail' TEXT NOT NULL
    )
    ''');
  }


  readData(String table, {bool? distinct, List<String>? columns, String? where, List<Object?>? whereArgs, String? groupBy, String? having, String? orderBy, int? limit, int? offset}) async {
    Database? dbClient = await db;
    List<Map> list = await dbClient.query(table, distinct: distinct, columns: columns, where: where, whereArgs: whereArgs, groupBy: groupBy, having: having, orderBy: orderBy, limit: limit, offset: offset);
    return list;
  }

  readDataSql(String sql) async {
    Database? dbClient = await db;
    List<Map> list = await dbClient.rawQuery(sql);
    return list;
  }

  insertData(String table, Map<String, dynamic> data) async {
    Database? dbClient = await db;
    var result = await dbClient.insert(table, data);
    return result;
  }

  insertDataSql(String sql) async {
    Database? dbClient = await db;
    int res = await dbClient.rawInsert(sql);
    return res;
  }

  updateData(String table, Map<String, Object?> values, {String? where, List<Object?>? whereArgs, ConflictAlgorithm? conflictAlgorithm}) async {
    Database? dbClient = await db;
    var result = await dbClient.update(table, values, where: where, whereArgs: whereArgs, conflictAlgorithm: conflictAlgorithm);
    return result;
  }

  updateDataSql(String sql) async {
    Database? dbClient = await db;
    int res = await dbClient.rawUpdate(sql);
    return res;
  }


  deleteData(String table, {String? where, List<Object?>? whereArgs}) async {
    Database? dbClient = await db;
    int res = await dbClient.delete(table, where: where, whereArgs: whereArgs);
    return res;
  }

  deleteDataSql(String sql) async {
    Database? dbClient = await db;
    int res = await dbClient.rawDelete(sql);
    return res;
  }

}