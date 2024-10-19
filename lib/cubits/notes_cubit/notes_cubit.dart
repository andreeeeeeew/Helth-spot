import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/models/note_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection('AddPrescription');
  String? accessToken;

  // List<NoteModel>? notes;
  void getNotes() {
    messages.orderBy('date', descending: true).snapshots().listen((event) async {
      List<NoteModel> noteList = [];
      SharedPreferences pref =await SharedPreferences.getInstance() ;
      accessToken = pref.getString(kAccessToken);
      for (var doc in event.docs) {
        noteList.add(NoteModel.fromMap(doc));
      }
      emit(NotesSuccess(messages: noteList));
    });
  }

  void deleteDocument(String documentId) async {
    // Get a reference to the document to delete
    try {
      messages.doc(documentId).delete();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

}
