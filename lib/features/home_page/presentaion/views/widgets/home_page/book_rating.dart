import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(1263)",
          style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070), fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}