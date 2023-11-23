import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomListBooks extends StatelessWidget {
  const CustomListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 16,
            );
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage();
          }),
    );
  }
}
