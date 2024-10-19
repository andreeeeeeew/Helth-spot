import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:sizer/sizer.dart';

class DrugName extends StatelessWidget {
  const DrugName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            //  color:  Color(0xff044252),
            // color:  Color(0xffD9ECF2),
            color: Color(0xff1791B1),

            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pandol Night',
          style: TextStyle(
              fontSize: 28,
              color: Color(0xff080742),
              fontFamily: AppFonts.kOleoscript),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  child: Text(
                '''
Generic name: acetaminophen Serious side effects Note: This document contains side effect information about acetaminophen. Some dosage forms listed on this page may not apply to the brand name Panadol. Applies to acetaminophen: capsule, capsule liquid filled, elixir, liquid, powder, solution, suppository, suspension, tablet, tablet chewable, tablet disintegrating, tablet extended release. Other dosage forms
  ''',
                maxLines: 20,
                textScaleFactor: 1.3,
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: AppFonts.kFontsCourgette),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
