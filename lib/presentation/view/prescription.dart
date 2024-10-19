import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';

class Prescription extends StatelessWidget {
  const Prescription({
    Key? key,
    required this.PrescriptionName,
  }) : super(key: key);

  final String PrescriptionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.h),
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.kColor1,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(2, 4),
            // spreadRadius: 20,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text: PrescriptionName,
              color: Colors.black,
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/prescription.jpg'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
