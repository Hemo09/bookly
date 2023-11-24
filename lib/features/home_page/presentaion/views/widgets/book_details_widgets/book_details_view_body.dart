import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_details_footer.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/book_section_details.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: CustomBookDetailsAppBar(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            BookSectionDetails(),
            SizedBox(
              height: 50,
            ),
            BookDetailsFooter(),
          ],
        ),
      ),
    );
  }
}
