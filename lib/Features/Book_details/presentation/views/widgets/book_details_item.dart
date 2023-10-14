import 'package:alpha_bookstore/Features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/function/launch_url.dart';
import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/widgets/custom_btn.dart';
import 'book_details_item_btn.dart';
import 'book_item_desc.dart';
import 'rating_widget.dart';
import 'some_book_details.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 160,
            height: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ??
                  "https://media.istockphoto.com/id/924949200/vector/404-error-page-or-file-not-found-icon.jpg?s=170667a&w=0&k=20&c=gsR5TEhp1tfg-qj1DAYdghj9NfM0ldfNEMJUfAzHGtU=",
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          bookModel.volumeInfo!.title!,
          style: TextStyle(
            fontSize: 20,
            fontFamily: AppConstants.kFontFamily,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          bookModel.volumeInfo!.authors!.first,
          style: TextStyle(
            fontSize: 16,
            fontFamily: AppConstants.kFontFamily,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        RatingWidget(
          rate: bookModel.volumeInfo!.averageRating ?? 0,
        ),
        const SizedBox(height: 20),
        BookItemDesc(
          desc:
              bookModel.volumeInfo!.description ?? " No available description",
        ),
        const SizedBox(height: 20),
        SomeBookDetailsWidget(
          bookModel: bookModel,
        ),
        const SizedBox(height: 26),
        BookDetailsItemBtn(
          previewLink: bookModel.volumeInfo!.previewLink!,
        ),
      ],
    );
  }
}
