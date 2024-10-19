
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap , this.isLoading=false,}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 6.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child:isLoading? CircularProgressIndicator(
            color: Colors.white,
          ) : Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
