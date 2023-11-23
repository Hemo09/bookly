import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        Text(
          "(1263)",
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
