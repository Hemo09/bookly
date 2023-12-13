import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/app_routes.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key, this.books});
  final BookModel? books;

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
                    child: CachedNetworkImage(
                      imageUrl:
                          books!.volumeInfo.imageLinks?.thumbnail ?? noImage,
                    )),
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
                  child: Text(
                    books!.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  books!.volumeInfo.authors?[0] ?? "No name",
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      "free",
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(
                      rating: books!.volumeInfo.averageRating ?? 0,
                      count: books!.volumeInfo.ratingsCount ?? 0,
                    )
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
