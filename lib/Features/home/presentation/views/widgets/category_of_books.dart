
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class CategoryOfBooksWidget extends StatefulWidget {
  const CategoryOfBooksWidget({super.key});

  @override
  State<CategoryOfBooksWidget> createState() => _CategoryOfBooksWidgetState();
}

class _CategoryOfBooksWidgetState extends State<CategoryOfBooksWidget> {
  int selctedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selctedIndex = 1;
            });
          },
          child: Text(
            "Novel",
            style: TextStyle(
              color: selctedIndex == 1 ? Colors.black : Colors.grey,
              fontSize: 20,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selctedIndex = 2;
            });
          },
          child: Text(
            "Self-love",
            style: TextStyle(
              color: selctedIndex == 2 ? Colors.black : Colors.grey,
              fontSize: 20,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selctedIndex = 3;
            });
          },
          child: Text(
            "Science",
            style: TextStyle(
              color: selctedIndex == 3 ? Colors.black : Colors.grey,
              fontSize: 20,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selctedIndex = 4;
            });
          },
          child: Text(
            "Romance",
            style: TextStyle(
              color: selctedIndex == 4 ? Colors.black : Colors.grey,
              fontSize: 20,
              fontFamily: AppConstants.kFontFamily,
            ),
          ),
        ),
      ],
    );
  }
}
