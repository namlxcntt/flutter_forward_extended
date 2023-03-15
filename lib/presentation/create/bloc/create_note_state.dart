part of 'create_note_bloc.dart';

abstract class CreateNoteState extends Equatable {
  const CreateNoteState();
}

class CreateNoteInitial extends CreateNoteState {
  @override
  List<Object> get props => [];
}
