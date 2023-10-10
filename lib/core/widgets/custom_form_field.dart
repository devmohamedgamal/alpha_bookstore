import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hint, required this.icon});
  final String hint;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hint == "Password" ? true : false,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 20,
          fontFamily: AppConstants.kFontFamily,
          color: Colors.grey.withOpacity(.6),
        ),
        suffixIcon: icon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
