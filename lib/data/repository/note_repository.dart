import 'package:flutter_forward_extend/data/cache/database/app_database.dart';

abstract class NoteRepository {
  // Function getList Note
  Future<List<NoteCacheEntityData>> getListNote();

  // Function insert New note
  Future<int> insertNewNote(NoteCacheEntityData noteCacheEntityData);
}