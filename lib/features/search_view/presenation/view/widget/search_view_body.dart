import 'package:bookly/features/search_view/presenation/view/widget/search_text_field.dart';
import 'package:bookly/features/search_view/presenation/view/widget/similar_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SearchTextField(),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: SimilarBestSellerListView(),
        )),
      ],
    );
  }
}
