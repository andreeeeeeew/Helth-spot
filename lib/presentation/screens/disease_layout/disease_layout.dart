import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/drugs.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/progress_for_disease.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';

import '../notes screen/notes_view.dart';

class DiseaseLayoutScreens extends StatefulWidget {
  @override
  _DiseaseLayoutScreensState createState() => _DiseaseLayoutScreensState();
}

class _DiseaseLayoutScreensState extends State<DiseaseLayoutScreens> {
  int _page = 0;
  final screen = [
    const DrugsPage(),
    // const ProgressForDisease(),
    NotesView(),
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const [
            Icon(Icons.medical_services, size: 30, color: Colors.white,),
            // Icon(Icons.bar_chart, size: 30, color: Colors.white,),
            Icon(Icons.description, size: 30, color: Colors.white,),
          ],
          color: AppColors.kColor2,
          buttonBackgroundColor: AppColors.kColord,
          backgroundColor: _page==1?Colors.white: Colors.grey.shade100,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screen[_page],
      ),
    );
  }
}
