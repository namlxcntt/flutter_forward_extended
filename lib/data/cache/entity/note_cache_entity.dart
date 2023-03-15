import 'package:drift/drift.dart';

class NoteCacheEntity extends Table {
  //Id
  IntColumn get id => integer().autoIncrement()();

  //@Date
  DateTimeColumn get dateCreated => dateTime().named('date_created')();

  //Title
  TextColumn get title => text().named('title')();

  //Description
  TextColumn get description => text().named('description')();

}