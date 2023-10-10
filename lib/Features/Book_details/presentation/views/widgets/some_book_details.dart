
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class SomeBookDetailsWidget extends StatelessWidget {
  const SomeBookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Some details",
            style: TextStyle(
              fontSize: 24,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Page count : 155",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Published Date : 2004",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Category : Computers",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Rating count : 2004",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Language : EN",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
