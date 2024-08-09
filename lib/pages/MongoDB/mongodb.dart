import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static connect() {
    void main() async {
      // Create a new MongoDB connection
      var db = await Db.create('MONGO_URL');

      // Perform CRUD operations on the database
      await db
          .collection('mycollection')
          .insertOne({'name': 'John', 'age': 30});

      // Close the database connection
      await db.close();
    }
  }
}
