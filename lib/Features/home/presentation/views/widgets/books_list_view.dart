import 'package:alpha_bookstore/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:alpha_bookstore/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indecator.dart';
import 'books_list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: 260.h,
          child: Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetialsView,
                          extra: state.books[index]);
                    },
                    child: BooksListViewItem(
                      bookModel: state.books[index],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errMessage: state.errorMessage);
      } else {
        return const CustomLoadingIndecator();
      }
    });
  }
}
