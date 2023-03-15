import 'package:flutter_forward_extend/domain/model/note_model.dart';

final List<Note> listNoteDefault = [
  Note(
      id: 1,
      dateCreated: DateTime.now(),
      title: "Hello",
      description:
      'Today’s Shoppng List\n Ticket App Travel Website\n Digital marketing Website.\n Apple Cuo noodles\n'),
  Note(
      id: 2,
      dateCreated: DateTime.utc(2023),
      title: "Flutter",
      description: 'Migrate Flutter to Android Developer'),
  Note(
      id: 3,
      dateCreated: DateTime.now(),
      title: 'Clean Architecture',
      description:
      'Today’s Shoppng List\nT icket App Travel Website\nDigital marketing Website.\nApple Cuo noodles')
];