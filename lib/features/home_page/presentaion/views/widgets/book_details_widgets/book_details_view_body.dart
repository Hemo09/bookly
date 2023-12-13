import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_details_footer.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_section_details.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 60),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: CustomBookDetailsAppBar(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            BookSectionDetails(
              bookModel: bookModel,
            ),
            const SizedBox(
              height: 50,
            ),
            const BookDetailsFooter(),
          ],
        ),
      ),
    );
  }
}
