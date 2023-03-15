import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/domain/use_case/create_note_use_case.dart';

part 'create_note_event.dart';

part 'create_note_state.dart';

class CreateNoteBloc extends Bloc<CreateNoteEvent, CreateNoteState> {
  final CreateNoteUseCase _createNoteUseCase;

  CreateNoteBloc(this._createNoteUseCase) : super(CreateNoteInitial()) {
    on<CreateNoteEvent>((event, emit) {});
    on<CreateNoteWithValue>((event, emit) async {
      await handleCreateNoteWithValue(event, emit);
    });
  }

  handleCreateNoteWithValue(
      CreateNoteWithValue event, Emitter<CreateNoteState> emitter) async {
    var title = event.title;
    var description = event.description;

    if (title.isEmpty) {
      emitter(const CreateErrorWithValueState('Title is empty'));
      return;
    }
    if (description.isEmpty) {
      emitter(const CreateErrorWithValueState('Content is empty'));
      return;
    }
    Note note = Note(
        id: 0,
        dateCreated: DateTime.now(),
        title: title,
        description: description);

    var state = await _createNoteUseCase.execute(note);
    if (state != -1) {
      emitter(CreateSuccessWithValueState(state));
    }
  }
}
