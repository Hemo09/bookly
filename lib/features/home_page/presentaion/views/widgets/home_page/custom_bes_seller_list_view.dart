import 'package:bookly/features/home_page/presentaion/views/widgets/custom_item_details.dart';
import 'package:flutter/material.dart';

class CustomLitsViewBestSeller extends StatelessWidget {
  const CustomLitsViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: CustomBookListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
