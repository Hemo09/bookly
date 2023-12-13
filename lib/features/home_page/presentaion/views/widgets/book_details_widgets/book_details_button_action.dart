import 'package:bookly/core/utlis/helper_function/url_lancher.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: "199.9\$",
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            tap: () {
              customLancherUrl(context, bookModel.volumeInfo.previewLink!);
            },
            text: getText(bookModel),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "NOT AVILABLE";
    } else {
      return "Preview";
    }
  }
}
