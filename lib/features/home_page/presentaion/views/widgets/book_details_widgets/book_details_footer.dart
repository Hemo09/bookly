import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/similar_list_view_book.dart';
import 'package:flutter/material.dart';

class BookDetailsFooter extends StatelessWidget {
  const BookDetailsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingApp),
          child: Text(
            "You can also Like",
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SimilarListViewBook(),
      ],
    );
  }
}
