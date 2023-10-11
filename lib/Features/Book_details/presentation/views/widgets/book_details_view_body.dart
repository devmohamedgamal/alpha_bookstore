import 'package:alpha_bookstore/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/assets_manger.dart';
import 'book_details_item.dart';
import 'custom_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                const CustomDetailsAppBar(),
                const SizedBox(
                  height: 10,
                ),
                BookDetailsItem(
                  bookModel: bookModel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
