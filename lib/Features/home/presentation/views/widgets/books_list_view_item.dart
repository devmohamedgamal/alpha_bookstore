import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/assets_manger.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 135,
            height: 220,
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
        SizedBox(
          width: 130,
          child: Text(
            bookModel.volumeInfo!.title!,
            style: TextStyle(
              fontSize: 20,
              fontFamily: AppConstants.kFontFamily,
            ),
            maxLines: 2,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 100,
          child: Text(
            bookModel.volumeInfo!.authors!.first,
            style: TextStyle(
              fontSize: 16,
              fontFamily: AppConstants.kFontFamily,
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          bookModel.saleInfo!.listPrice?.amount.toString() ?? "Free",
          style: TextStyle(
            fontSize: 16,
            fontFamily: AppConstants.kFontFamily,
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
