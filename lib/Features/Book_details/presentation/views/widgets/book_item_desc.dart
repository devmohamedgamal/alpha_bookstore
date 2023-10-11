import 'package:alpha_bookstore/core/constants.dart';
import 'package:flutter/material.dart';

class BookItemDesc extends StatelessWidget {
  const BookItemDesc({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: TextStyle(
              fontSize: 24,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            desc,
            style: TextStyle(
              fontFamily: AppConstants.kFontFamily,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
