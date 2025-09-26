

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 16),
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border:borderBuilder() ,
        focusedBorder: borderBuilder(),
        enabledBorder: borderBuilder(),
        disabledBorder: borderBuilder(),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xFFFAFAFA),
        )
      );
  }
}
