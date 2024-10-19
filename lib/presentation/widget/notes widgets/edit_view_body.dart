import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_colors_list.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          CustomAppBar(
            title: 'Edit Prescription',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              // widget.note.save();
              Navigator.pop(context);
              // BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          SizedBox(
            height: 2.h,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 2.h,
          ),
          CustomTextField(
              hint: widget.note.subTitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              }),
          SizedBox(
            height: 2.h,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
