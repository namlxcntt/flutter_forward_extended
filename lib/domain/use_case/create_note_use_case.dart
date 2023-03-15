import 'package:flutter_forward_extend/data/repository/note_repository.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/domain/use_case/use_case.dart';

class CreateNoteUseCase extends UseCase<Note, int> {
  final NoteRepository _noteRepository;

  CreateNoteUseCase(this._noteRepository);

  @override
  Future<int> execute(Note input) async {
    var entityData = Note.mapToEntity(input);
    return await _noteRepository.insertNewNote(entityData);
  }
}
