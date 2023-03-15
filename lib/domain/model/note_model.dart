import 'package:flutter_forward_extend/data/cache/database/app_database.dart';

class Note {
  final int id;
  final DateTime dateCreated;
  final String title;
  final String description;

  const Note({required this.id,
    required this.dateCreated,
    required this.title,
    required this.description});

  // Map single entity
  static Note mapFromEntity(NoteCacheEntityData cacheEntityData) {
    return Note(
        id: cacheEntityData.id,
        dateCreated: cacheEntityData.dateCreated,
        title: cacheEntityData.title,
        description: cacheEntityData.description);
  }

  static NoteCacheEntityData mapToEntity(Note note) {
    return NoteCacheEntityData(id: note.id,
        dateCreated: note.dateCreated,
        title: note.title,
        description: note.description);
  }

  // Map list note
  static Future<List<Note>> mapListNote(List<NoteCacheEntityData> list) async {
    List<Note> listObject = [];
    for (var element in list) {
      listObject.add(mapFromEntity(element));
    }
    return listObject;
  }
}
