import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../user.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'odontoUNAM.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE users(username TEXT NOT NULL, pass TEXT NOT NULL, pic TEXT NOT NULL, favc bool, favv bool);",
        );
        await database.execute(
          "INSERT INTO users VALUES ('312020589','13081995', 'user1.png', false, false),('309298979','24111991', 'user2.png', false, false),('admin','123', 'user1.png', false, false);",
        );
      },
      version: 1,
    );
  }

  Future<List<User>> retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object>> queryResult = await db.query('users');
    return queryResult.map((e) => User.fromMap(e)).toList();
  }

  Future<Null> saveUser(User u) async {
    final Database db = await initializeDB();
    await db.update("users", u.toMap(),
        where: "username = ?", whereArgs: [u.username]);
  }
}
