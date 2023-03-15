import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_note_event.dart';
part 'create_note_state.dart';

class CreateNoteBloc extends Bloc<CreateNoteEvent, CreateNoteState> {
  CreateNoteBloc() : super(CreateNoteInitial()) {
    on<CreateNoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
