import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/cubits/notes_cubit/notes_cubit.dart';
import 'package:Health_Spot/models/note_model.dart';
import 'package:Health_Spot/presentation/widget/notes%20widgets/view_note_view.dart';
import 'package:sizer/sizer.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ViewNoteView(image: note.photo)));
      },
      child: Container(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 5.w, vertical: 5.w),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(fontSize: 20.sp, color: Colors.black,fontFamily: AppFonts.kKalam),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 12.sp, color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<NotesCubit>(context)
                          .deleteDocument(note.title);
                    },
                    icon: Icon(
                      Icons.delete_rounded,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                  // SizedBox(height: 2.h,),
                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => EditNoteView(note: note),
                  //         ));
                  //   },
                  //   icon: Icon(
                  //     Icons.edit,
                  //     size: 20.sp,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ],
              ),
              contentPadding: EdgeInsetsDirectional.zero,
            ),
            Hero(
                tag: "Sprains",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(note.photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 2.h,
            ),
            Text(
              note.date,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
