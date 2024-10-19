import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/fonts.dart';

class Drug2 extends StatelessWidget {
  const Drug2({Key? key}) : super(key: key);

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
          'Ketofan Side Effects',
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
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  child: const Text(
                '''
Using this medicine with any of the following medicines is usually not recommended, but may be required in some cases. If both medicines are prescribed together, your doctor may change the dose or how often you use one or both of the medicines.
 
 . Amifampridine 
 
 . Bupropion 
 
 . Donepezil 
 
 . Pitolisant
  ''',
                maxLines: 20,
                style: TextStyle(
                    fontSize: 23.0,
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
