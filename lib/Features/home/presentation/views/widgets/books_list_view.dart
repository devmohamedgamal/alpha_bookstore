import 'package:alpha_bookstore/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'books_list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Expanded(
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetialsView);
                },
                child: const BooksListViewItem(),
              ),
            );
          },
        ),
      ),
    );
  }
}
