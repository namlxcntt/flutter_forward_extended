import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_forward_extend/data/dummy_data.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/domain/use_case/get_list_note_use_case.dart';

import '../../../domain/params/get_list_note_params.dart';
import '../../../domain/use_case/create_note_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetListNoteUseCase _getListNoteUseCase;
  final CreateNoteUseCase _createNoteUseCase;

  HomeBloc(
      {required CreateNoteUseCase createNoteUseCase,
      required GetListNoteUseCase getListNoteUseCase})
      : _createNoteUseCase = createNoteUseCase,
        _getListNoteUseCase = getListNoteUseCase,
        super(HomeInitial()) {
    on<GetListNoteEvent>((event, emit) async {
      await handleGetListNote(event, emit);
    });
  }

  Future<void> createDefaultNote() async {
    for (var element in listNoteDefault) {
      var status = await _createNoteUseCase.execute(element);
      debugPrint('Status -> $status');
    }
  }

  handleGetListNote(GetListNoteEvent event, Emitter<HomeState> emitter) async {
    var data = await _getListNoteUseCase.execute(GetListNoteParam());
    if (data.isEmpty) {
      await createDefaultNote();
      var defaultData = await _getListNoteUseCase.execute(GetListNoteParam());
      emitter(GetListNoteState(defaultData));
    } else {
      emitter(GetListNoteState(data));
    }
  }
}
