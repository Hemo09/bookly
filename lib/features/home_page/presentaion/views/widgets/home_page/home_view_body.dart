import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_app-bar.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_bes_seller_list_view.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/list_view_book.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 36, bottom: 30.0, left: 10, right: 10),
              child: CustomAppBar(),
            ),
            CustomListBooks(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPaddingApp),
              child: Text(
                "Best Seller",
                style: Styles.textStyle20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(left: kPaddingApp),
          child: CustomListViewBestSeller(),
        ),
      ),
    ]);
  }
}
