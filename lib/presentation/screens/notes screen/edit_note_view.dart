import 'package:flutter/material.dart';
import 'package:Health_Spot/models/note_model.dart';
import 'package:Health_Spot/presentation/widget/notes%20widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditViewBody(note: note,),
    );
  }
}
