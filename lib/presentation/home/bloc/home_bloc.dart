import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/domain/use_case/get_list_note_use_case.dart';

import '../../../domain/params/get_list_note_params.dart';
import '../../../domain/use_case/create_note_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetListNoteUseCase getListNoteUseCase;
  final CreateNoteUseCase createNoteUseCase;

  HomeBloc({required this.createNoteUseCase, required this.getListNoteUseCase})
      : super(HomeInitial()) {
    on<GetListNoteEvent>((event, emit) async {
      await handleGetListNote(event, emit);
    });

    on<CreateNoteDefaultEvent>((event, emit) async {
      await handleCreateDefaultNote(event, emit);
    });
  }

  handleCreateDefaultNote(
      CreateNoteDefaultEvent event, Emitter<HomeState> emitter) async {
    var input = event.note;
    for (var element in input) {
      var status = await createNoteUseCase.execute(element);
      debugPrint('Status -> $status');
    }
  }

  handleGetListNote(GetListNoteEvent event, Emitter<HomeState> emitter) async {
    var data = await getListNoteUseCase.execute(GetListNoteParam());
    emitter(GetListNoteState(data));
  }
}
