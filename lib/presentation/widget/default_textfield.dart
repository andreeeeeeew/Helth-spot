import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';

class DefaultTextFormField extends StatelessWidget {
  DefaultTextFormField({
    Key? key,
    this.controller,
    required this.hText,
    this.labelText = '',
    this.prefixIcon,
    this.onChanged,
    this.onFieldSubmitted,
    this.keyboardType, this.maxLength
  }) : super(key: key);

  final String hText;
  final int? maxLength;
  final String labelText;
  TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  Icon? prefixIcon;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kColor3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.kColor2),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hText,
        floatingLabelStyle: const TextStyle(color: AppColors.kColor3),
        label: Text(labelText),
      ),
    );
  }
}
