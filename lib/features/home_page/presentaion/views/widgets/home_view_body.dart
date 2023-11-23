import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_app-bar.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_item_details.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/list_view_book.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListBooks(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 20,
          ),
          CustomBookListViewItem(),
        ],
      ),
    );
  }
}
