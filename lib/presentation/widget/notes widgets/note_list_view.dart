import 'package:Health_Spot/cubits/notes_cubit/notes_cubit.dart';
import 'package:Health_Spot/presentation/widget/notes%20widgets/custom_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../../models/note_model.dart';

class NotesListView extends StatefulWidget {
  static String id = 'ChatPage';

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  List<NoteModel> noteList = [];
  String? accessToken;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).getNotes();

    setState((){});
  }

  final _controller = ScrollController();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<NotesCubit, NotesState>(
              listener: (context, state) {
                if (state is NotesSuccess) {
                  noteList = state.messages;
                }
              },
              builder: (context, state) {
                return ListView.builder(
                    controller: _controller,
                    itemCount: noteList.length,
                    itemBuilder: (context, index) {
                      return
                        BlocProvider.of<NotesCubit>(context).accessToken==noteList[index].token ?Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: CustomNoteItem(
                          note: noteList[index],
                        ),
                      ): SizedBox();
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
