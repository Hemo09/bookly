import 'package:bookly/constant.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarListViewBook extends StatelessWidget {
  const SimilarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPaddingApp),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: 20,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 8,
              );
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomBookImage();
            }),
      ),
    );
  }
}
