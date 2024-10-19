import 'package:flutter/material.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/reminder.dart';
import 'package:Health_Spot/presentation/view/drug_card2.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';

class DrugsForDisease extends StatefulWidget {
  DrugsForDisease(
      {Key? key,
      this.drugName = 'panadol',
      this.quantity = '20',
      this.type = 'capsol',
      this.time = '20:00',
      this.timesfordrug = '19:00'})
      : super(key: key);

  String? drugName, time, type, quantity, timesfordrug;
  List<Widget> drugItem = [];

  @override
  State<DrugsForDisease> createState() => _DrugsForDiseaseState();
}

class _DrugsForDiseaseState extends State<DrugsForDisease> {
  @override
  void initState() {
    widget.drugItem.add(DrugCard(
      drugName: widget.drugName!,
      type: widget.type!,
      time: widget.time!,
      quantity: widget.quantity!,
      timefordrug: widget.timesfordrug!,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DefaultButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReminderScreen()));
          },
          // height: 5,
          width: 40,
          textWidget: const DefaultText(
            text: 'Add Drug',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => widget.drugItem[index],
          itemCount: widget.drugItem.length,
        ),
      ),
    );
  }
}
