
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/assets_manger.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(AssetsManger.kBook1),
        ),
        Text(
          "Catcher in the Rye",
          style: TextStyle(
            fontSize: 20,
            fontFamily: AppConstants.kFontFamily,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "J.D.Saling",
          style: TextStyle(
            fontSize: 16,
            fontFamily: AppConstants.kFontFamily,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "150\$",
          style: TextStyle(
            fontSize: 16,
            fontFamily: AppConstants.kFontFamily,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
