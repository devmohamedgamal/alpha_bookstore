import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/widgets/custom_btn.dart';
import 'book_item_desc.dart';
import 'rating_widget.dart';
import 'some_book_details.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            AssetsManger.kBook1,
            height: 300,
          ),
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
        const SizedBox(height: 18),
        const RatingWidget(),
        const SizedBox(height: 20),
        const BookItemDesc(),
        const SizedBox(height: 20),
        const SomeBookDetailsWidget(),
        const SizedBox(height: 26),
        CustomBtn(
          text: "Add To Cart",
          backgroundColor: AppConstants.kPrimaryColor,
          onPressed: () {},
        ),
        const SizedBox(height: 4),
        CustomBtn(
          text: "Free Preview",
          backgroundColor: Colors.white,
          textColor: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}
