import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged})
      : super(key: key);
  final String hint;
  final void Function(String?)? onSaved;
  final int maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if(value?.isEmpty??true)
          {
            return 'Field is required';
          }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        // hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(color: Colors.black45,fontFamily: AppFonts.kKalam,
            fontSize: 16.sp),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.black));
  }
}
