import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_details_button_action.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/book_rating.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookSectionDetails extends StatelessWidget {
  const BookSectionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .17),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.normal,
            color: const Color(0xff8a8796),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingApp),
          child: BooksAction(),
        ),
      ],
    );
  }
}
