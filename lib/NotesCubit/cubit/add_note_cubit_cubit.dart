import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/NoteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteCubitsuccess());
      await notesbox.add(note);
    } catch (e) {
      AddNoteCubitFailed(e.toString());
    }
  }
}
