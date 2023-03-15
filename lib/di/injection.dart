import 'package:flutter_forward_extend/data/cache/database/app_database.dart';
import 'package:flutter_forward_extend/data/repository/note_repository.dart';
import 'package:flutter_forward_extend/data/repository/note_repository_impl.dart';
import 'package:flutter_forward_extend/domain/use_case/create_note_use_case.dart';
import 'package:flutter_forward_extend/domain/use_case/get_list_note_use_case.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton(() => AppDatabase());
  getIt.registerFactory<NoteRepository>(() => NoteRepositoryImpl(getIt()));
  getIt.registerFactory(() => GetListNoteUseCase(getIt()));
  getIt.registerFactory(() => CreateNoteUseCase(getIt()));

}