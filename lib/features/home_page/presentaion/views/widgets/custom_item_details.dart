import 'package:bookly/core/utlis/app_routes.dart';
import 'package:bookly/core/utlis/assets_data.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NamedRouteScreen.kBookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.6 / 4,
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Hello",
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      "19.99\$",
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRating()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
