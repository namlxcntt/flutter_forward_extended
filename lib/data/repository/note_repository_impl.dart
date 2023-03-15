import 'package:drift/drift.dart';
import 'package:flutter_forward_extend/data/cache/database/app_database.dart';
import 'package:flutter_forward_extend/data/repository/note_repository.dart';

class NoteRepositoryImpl extends NoteRepository {
  final AppDatabase _appDatabase;

  NoteRepositoryImpl(this._appDatabase);

  @override
  Future<List<NoteCacheEntityData>> getListNote() {
    return _appDatabase
        .select(_appDatabase.noteCacheEntity)
        .get()
        .catchError((onError) {
      throw Exception(onError);
    });
  }

  @override
  Future<int> insertNewNote(NoteCacheEntityData noteCacheEntityData) {
    return _appDatabase.into(_appDatabase.noteCacheEntity).insert(
        NoteCacheEntityCompanion.insert(
            dateCreated: noteCacheEntityData.dateCreated,
            title: noteCacheEntityData.title,
            description: noteCacheEntityData.description),
        mode: InsertMode.insertOrReplace);
  }
}
