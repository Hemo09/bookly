import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
