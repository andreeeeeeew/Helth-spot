part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesDelete extends NotesState {}

class NotesSuccess extends NotesState {
  List<NoteModel> messages;
  NotesSuccess({required this.messages});
}
