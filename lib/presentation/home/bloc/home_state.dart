part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class GetListNoteState extends HomeState{
  final List<Note> listData;

  const GetListNoteState(this.listData);

  @override
  List<Object?> get props => listData;
}