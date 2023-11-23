import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
