import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ViewNoteView extends StatelessWidget {
  const ViewNoteView({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: Image.network(image),
            ),
          ],
        ),
      ),
    );
  }
}
