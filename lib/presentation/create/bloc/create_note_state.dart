part of 'create_note_bloc.dart';

abstract class CreateNoteState extends Equatable {
  const CreateNoteState();
}
class CreateNoteInitial extends CreateNoteState {
  @override
  List<Object> get props => [];
}

class CreateSuccessWithValueState extends CreateNoteState {
  final int id;
  const CreateSuccessWithValueState(this.id);
  @override
  List<Object?> get props => [id];
}

class CreateErrorWithValueState extends CreateNoteState {
  final String errorMessage;

  const CreateErrorWithValueState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
