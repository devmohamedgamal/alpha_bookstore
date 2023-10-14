
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/function/launch_url.dart';
import '../../../../../core/widgets/custom_btn.dart';

class BookDetailsItemBtn extends StatefulWidget {
  const BookDetailsItemBtn({super.key, required this.previewLink});
  final String previewLink;

  @override
  State<BookDetailsItemBtn> createState() => _BookDetailsItemBtnState();
}

class _BookDetailsItemBtnState extends State<BookDetailsItemBtn> {
  int selctedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomBtn(
        text: selctedIndex == 1 ? "Remove from cart" : "Add To Cart",
        backgroundColor: AppConstants.kPrimaryColor,
        onPressed: () {
          if (selctedIndex == 0) {
            setState(() {
              selctedIndex = 1;
            });
          } else {
            setState(() {
              selctedIndex = 0;
            });
          }
        },
      ),
      const SizedBox(height: 4),
      CustomBtn(
        text: "Free Preview",
        backgroundColor: Colors.white,
        textColor: Colors.black,
        onPressed: () {
          customLaunchUrl(context, widget.previewLink);
        },
      ),
    ]);
  }
}
