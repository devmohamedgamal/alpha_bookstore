
import 'package:alpha_bookstore/core/constants.dart';
import 'package:flutter/material.dart';

class BookItemDesc extends StatelessWidget {
  const BookItemDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          "J.D. Salinger was an American writer, best known for his 1951 novel The Catcher in the Rye. Before its publi cation, Salinger published several short stories in Story magazine",
          style: TextStyle(
            fontFamily: AppConstants.kFontFamily,
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
