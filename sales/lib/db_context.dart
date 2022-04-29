import 'package:sqflite/sqflite.dart';

class DbContext {
  Future<Database> db;

  getDb(){
    if(db is null){
      initializeDb();
    }
  }

  initializeDb() {
    db = await openDatabase('sales.db', 
    onCreate: (db, version) => 
    await db.,)
  }
}
