import 'package:flutter/material.dart';

class ProgressForDisease extends StatelessWidget {
  const ProgressForDisease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Image.asset('assets/images/progress.png'),
        ],
      ),
    );
  }
}
