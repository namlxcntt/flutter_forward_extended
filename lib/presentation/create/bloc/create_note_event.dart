part of 'create_note_bloc.dart';

abstract class CreateNoteEvent extends Equatable {
  const CreateNoteEvent();
}

class CreateNoteWithValue extends CreateNoteEvent {
  final String title;
  final String description;

  const CreateNoteWithValue({required this.title, required this.description});

  @override
  List<Object?> get props => [title, description];
}
