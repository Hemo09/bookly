import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_details_button_action.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/book_rating.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookSectionDetails extends StatelessWidget {
  const BookSectionDetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .17),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? noImage,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: Styles.textStyle30
              .copyWith(fontWeight: FontWeight.normal, fontSize: 23),
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.normal,
            color: const Color(0xff8a8796),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: 0,
          count: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingApp),
          child: BooksAction(
            bookModel: bookModel,
          ),
        ),
      ],
    );
  }
}
