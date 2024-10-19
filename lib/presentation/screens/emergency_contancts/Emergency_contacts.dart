import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/cubit/emergency_contact_cubit/emergency_contact_cubit.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class EmergencyContacts extends StatelessWidget {
  EmergencyContacts({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff1791B1),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        title: const Text(
          'Emergency',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: AppFonts.kKalam,
            fontSize: 35,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Padding(padding: EdgeInsets.symmetric(vertical: 60)),
              Text('  Emergency Contact',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFonts.kKalam,
                    fontSize: 30,
                  ))
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: AppColors.Litepurple, letterSpacing: 15),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    BlocProvider.of<EmergencyContactCubit>(context).emergencyContact =value;
                    print(BlocProvider.of<EmergencyContactCubit>(context).emergencyContact);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Phone  number',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          DefaultButton(
            onPressed: () async {
              // emergency.add({
              //   'emergencyContact': BlocProvider.of<EmergencyContactCubit>(context).emergencyContact,
              // });
              SharedPreferences pref =await SharedPreferences.getInstance();
              pref.setString('phone', BlocProvider.of<EmergencyContactCubit>(context).emergencyContact);
              Navigator.pop(context);
            },
            textWidget: const DefaultText(
              text: 'Save',
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
