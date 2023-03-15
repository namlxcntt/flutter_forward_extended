part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetListNoteEvent extends HomeEvent {
  @override
  List<Object?> get props => [hashCode];
}

class CreateNoteDefaultEvent extends HomeEvent {

  final List<Note> note;

  const CreateNoteDefaultEvent(this.note);

  @override
  List<Object?> get props => [note];
}
