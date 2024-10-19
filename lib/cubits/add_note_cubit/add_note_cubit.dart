import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:Health_Spot/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  PlatformFile? pickedFile ;
  UploadTask? uploadTask ;
  var urlDownload;
  XFile? file;

  AddNoteCubit() : super(AddNoteInitial());

  Color color=const Color(0xfff9b4ab);

  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNoteLoading());
   try {
     var noteBox = Hive.box<NoteModel>(kNoteBox);
       await noteBox.add(note);
       emit(AddNoteSuccess());
   } on Exception catch (e) {
     emit(AddNoteFailure(errMessage: e.toString()));
   }
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
      pickedFile = result.files.first;
      emit(AddPhotoSuccess());
  }

  Future captureImage() async {
     file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      emit(AddPhotoSuccess());
      return file!.path;
    } else {
      return '';
    }
  }

  Future uploadFile() async {
      final path = 'file/${pickedFile!.name}';
      final file =File(pickedFile!.path!);
      final ref=FirebaseStorage.instance.ref().child(path);
      uploadTask= ref.putFile(file);
      final snapshot =await uploadTask!.whenComplete(() => null);
       urlDownload =await snapshot.ref.getDownloadURL();
       return urlDownload;
  }
}
