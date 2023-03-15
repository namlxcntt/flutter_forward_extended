import 'package:flutter_forward_extend/data/cache/database/app_database.dart';
import 'package:flutter_forward_extend/data/repository/note_repository.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/domain/params/get_list_note_params.dart';
import 'package:flutter_forward_extend/domain/use_case/use_case.dart';

class GetListNoteUseCase extends UseCase<GetListNoteParam, List<Note>> {
  final NoteRepository _noteRepository;

  GetListNoteUseCase(this._noteRepository);

  @override
  Future<List<Note>> execute(GetListNoteParam input) async {
    List<NoteCacheEntityData> listNoteEntity = await _noteRepository.getListNote();
    return await Note.mapListNote(listNoteEntity);
  }
}
