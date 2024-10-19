import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/widget/default_app_bar.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_icon_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:Health_Spot/presentation/widget/default_textfield.dart';

class ReminderScreen extends StatelessWidget {
  ReminderScreen({Key? key}) : super(key: key);

  String? type, quantity, time, drugName, timefordrug;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: DefaultAppbar(
          title: const DefaultText(
            text: 'Reminder',
            color: Colors.black,
            fontFamily: AppFonts.kOleoscript,
          ),
          iconbutton: DefIconButton(
            icon: Icons.arrow_back_ios,
            fun: () {
              Navigator.pop(context);
            }, // Navigator
          ),
        ),
      ),
      floatingActionButton: DefaultButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => DrugsForDisease(
            //       drugName: drugName,
            //       quantity: quantity,
            //       time: time,
            //       type: type,
            //       timesfordrug: timefordrug,
            //     ),
            //   ),
            // );

            Navigator.pop(context);
          },
          width: 40,
          textWidget: const DefaultText(
            text: 'Save',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextFormField(
              hText: 'DrugName',
              labelText: 'DrugName',
              onChanged: (data) {
                drugName = data;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextFormField(
              hText: 'Type',
              labelText: 'Type',
              onChanged: (data) {
                type = data;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextFormField(
              labelText: 'Quantity',
              hText: 'Quantity',
              onChanged: (data) {
                quantity = data;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextFormField(
              labelText: 'Time',
              hText: 'Time',
              onChanged: (data) {
                time = data;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextFormField(
              labelText: 'Time For Drug',
              hText: 'Time For Drug',
              onChanged: (data) {
                timefordrug = data;
              },
            ),
          ),
        ],
      ),
    );
  }
}
