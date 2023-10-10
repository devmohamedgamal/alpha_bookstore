import 'package:alpha_bookstore/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor = Colors.black,
  });
  final String text;
  final Color textColor, backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        backgroundColor: backgroundColor,
        elevation: 0,
        minimumSize: Size(341.w, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:
            TextStyle(fontSize: 18, color: textColor, fontFamily: "helvetica"),
      ),
    );
  }
}
