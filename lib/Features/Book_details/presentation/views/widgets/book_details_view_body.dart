import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/assets_manger.dart';
import 'book_details_item.dart';
import 'custom_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                CustomDetailsAppBar(),
                SizedBox(
                  height: 10,
                ),
                BookDetailsItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
