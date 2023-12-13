import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            tap: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await launchUrl(uri)) {
                canLaunchUrl(uri);
              }
            },
            text: "Free Preview",
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
}
