import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/view/prescription.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:Health_Spot/presentation/widget/default_textfield.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';
import '../../../services/storage_service.dart';

class PrescriptionForDisease extends StatefulWidget {
  const PrescriptionForDisease({Key? key}) : super(key: key);

  @override
  State<PrescriptionForDisease> createState() => _PrescriptionForDiseaseState();
}

class _PrescriptionForDiseaseState extends State<PrescriptionForDisease> {
  List prescription = [];
  String addPrescription = '';
  final Storage storage = Storage();
  PlatformFile? pickedFile;
  CollectionReference diseases =
      FirebaseFirestore.instance.collection(kDiseases);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DefaultButton(
          onPressed: () {
            // print(prescription.length);
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                height: 70.h,
                child: Column(
                  children: [
                    const DefaultText(
                      text: 'Add Prescription',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: AppFonts.kFontsCourgette,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    DefaultTextFormField(
                      hText: 'Add your note',
                      labelText: 'Note',
                      onChanged: (String data) {
                        addPrescription = data;
                      },
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    if(pickedFile!=null)
                    Container(
                      height: 20.h,
                      color: Colors.blue[100],
                      child: Center(child: Text(pickedFile!.name)),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 30.sp,
                        color: AppColors.kColora,
                        onPressed: ()  {

                            selectFile();

                        },
                        icon: const Icon(
                          Icons.camera_alt,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    DefaultButton(
                      onPressed: () {
                        diseases.add({
                          'note': addPrescription,
                          kCreatedAt: DateTime.now(),

                        });
                        prescription.add(addPrescription);
                        setState(() {});
                        Navigator.of(context).pop();
                      },
                      textWidget: const DefaultText(
                        text: 'Add',
                        fontFamily: AppFonts.kFontsCourgette,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          // height: 5,
          width: 41,
          textWidget: const DefaultText(
            text: 'Add prescription',
            fontFamily: AppFonts.kFontsCourgette,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 2.h, end: 4.w, start: 4.w),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              key: Key(prescription[index]),
              child: Prescription(
                PrescriptionName: prescription[index],
              ),
            );
          },
          itemCount: prescription.length,
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }
}
