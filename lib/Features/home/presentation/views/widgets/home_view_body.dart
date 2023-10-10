import 'package:alpha_bookstore/core/constants.dart';
import 'package:alpha_bookstore/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import 'books_list_view.dart';
import 'books_list_view_item.dart';
import 'category_of_books.dart';
import 'custom_app_bar.dart';
import 'custom_search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: CustomAppBar(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Hello, Tricia👋",
                  style: TextStyle(
                    color: AppConstants.kPrimaryColor,
                    fontSize: 35,
                    fontFamily: AppConstants.kFontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "What do you want to read today?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: AppConstants.kFontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomSearchTextField(),
              ),
              const SizedBox(height: 26),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CategoryOfBooksWidget(),
              ),
              const SizedBox(height: 26),
              const BooksListView(),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "New Arrivals",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: AppConstants.kFontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const BooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
