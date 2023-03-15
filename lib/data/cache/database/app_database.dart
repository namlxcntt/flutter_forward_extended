import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_forward_extend/data/cache/entity/note_cache_entity.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

LazyDatabase _openDbConnect() {
  return LazyDatabase(() async {
    /// Get folder save database
    final dbFolder = await getApplicationDocumentsDirectory();

    /// Create file in database
    final file = File(path.join(dbFolder.path, 'flutter_forward_extended.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}

//
@DriftDatabase(tables: [NoteCacheEntity])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openDbConnect());

  @override
  int get schemaVersion => 1;
}
