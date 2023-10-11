import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../home/data/models/book_model/book_model.dart';

class SomeBookDetailsWidget extends StatelessWidget {
  const SomeBookDetailsWidget({super.key, required this.bookModel});
  final BookModel bookModel;

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
          Text(
            "Page count : ${bookModel.volumeInfo!.pageCount}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Published Date : ${bookModel.volumeInfo!.publishedDate}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Category : ${bookModel.volumeInfo!.categories ?? 'Unknown'}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Rating count : ${bookModel.volumeInfo!.ratingsCount ?? 0}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Language : ${bookModel.volumeInfo!.language}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
