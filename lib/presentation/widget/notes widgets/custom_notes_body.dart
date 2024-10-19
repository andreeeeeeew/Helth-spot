import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/cubits/notes_cubit/notes_cubit.dart';
import 'package:sizer/sizer.dart';

import 'note_list_view.dart';

class CustomNotesBody extends StatefulWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  State<CustomNotesBody> createState() => _CustomNotesBodyState();
}

class _CustomNotesBodyState extends State<CustomNotesBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [Expanded(child: NotesListView())],
      ),
    );
  }
}
