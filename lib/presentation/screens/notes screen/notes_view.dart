import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:Health_Spot/presentation/widget/notes%20widgets/add_note_bottom_sheet.dart';
import 'package:Health_Spot/presentation/widget/notes%20widgets/custom_notes_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesView extends StatelessWidget {
   NotesView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            splashColor: AppColors.kColor3,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.kColorDark,
            )),
        title: const DefaultText(
          color: Colors.black,
          text: 'Prescription',
          fontWeight: FontWeight.bold,
          fontFamily: AppFonts.kFontsCourgette,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const CustomNotesBody(),
    );
  }
}
