import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/reminder.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';

class DrugCard extends StatelessWidget {
  DrugCard(
      {Key? key,
      required this.timefordrug,
      required this.drugName,
      required this.type,
      required this.time,
      required this.quantity})
      : super(key: key);
  final String drugName, time, quantity, type, timefordrug;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          // bottomLeft: Radius.circular(30),
          // bottomRight: Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: AppColors.kColorDL,
          width: 3,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  text: 'drugName = $drugName',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                DefaultText(
                  text: 'Quantity = $quantity',
                  fontSize: 12,
                  color: Colors.black,
                ),
                DefaultText(
                  text: 'Time = $time',
                  fontSize: 12,
                  color: Colors.black,
                ),
                DefaultText(
                  text: 'Type = $type',
                  fontSize: 12,
                  color: Colors.black,
                ),
                DefaultText(
                  text: 'TimeForDrug = $timefordrug',
                  fontSize: 12,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReminderScreen(),
                        ));
                  },
                  icon: const Icon(
                    Icons.alarm,
                    size: 30,
                    color: AppColors.kColorDark,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 30,
                    color: AppColors.kColorDark,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
