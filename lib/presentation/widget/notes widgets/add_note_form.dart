import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/colors.dart';
import '../../../cubits/add_note_cubit/add_note_cubit.dart';
import 'colors_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key, });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  bool visible = true;
  String? accessToken;
  CollectionReference addPrescription =
      FirebaseFirestore.instance.collection('AddPrescription');

  @override

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddPhotoSuccess) {
          visible = true;
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                hint: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              if (BlocProvider.of<AddNoteCubit>(context).pickedFile != null ||
                  BlocProvider.of<AddNoteCubit>(context).file != null)
                Column(
                  children: [
                    if (BlocProvider.of<AddNoteCubit>(context).pickedFile !=
                        null)
                      Hero(
                          tag: "Sprains",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.file(
                              File(BlocProvider.of<AddNoteCubit>(context)
                                  .pickedFile!
                                  .path!),
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ))
                    else if (BlocProvider.of<AddNoteCubit>(context).file !=
                        null)
                      Hero(
                          tag: "Sprains",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.file(
                              File(BlocProvider.of<AddNoteCubit>(context)
                                  .file!
                                  .path),
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          )),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 30.sp,
                        color: AppColors.kColora,
                        onPressed: () {
                          BlocProvider.of<AddNoteCubit>(context).captureImage();
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 30.sp,
                        color: AppColors.kColora,
                        onPressed: () {
                          BlocProvider.of<AddNoteCubit>(context).selectFile();
                        },
                        icon: const Icon(
                          Icons.photo,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                hint: 'Description',
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              const ColorsListView(),
              SizedBox(
                height: 2.h,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomButton(
                    isLoading: state is AddNoteLoading ? true : false,
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var currentDate = DateTime.now();
                        var formattedCurrentDate =
                            DateFormat.yMMMMd().format(currentDate);
                        SharedPreferences pref = await SharedPreferences.getInstance();
                        accessToken = pref.getString(kAccessToken);
                        addPrescription.doc(title).set({
                          'title': title,
                          'subTitle': subTitle,
                          'date': formattedCurrentDate,
                          'color': BlocProvider.of<AddNoteCubit>(context)
                              .color
                              .value,
                          'photo': await BlocProvider.of<AddNoteCubit>(context)
                              .uploadFile(),
                          'token': accessToken,
                        });
                        Navigator.pop(context);
                      } else {
                        autoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
