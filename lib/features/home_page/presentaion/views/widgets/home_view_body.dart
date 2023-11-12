import 'package:bookly/core/utlis/assets_data.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_app-bar.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_list_item.dart';
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

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetData.testImage),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Text(
                "Harry Potter and the Goblet of Fire",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20,
              ),
            )
          ],
        )
      ],
    );
  }
}
