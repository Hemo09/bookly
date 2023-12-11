import 'package:bookly/features/home_page/presentaion/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/custom_item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewBestSeller extends StatelessWidget {
  const CustomListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CustomBookListViewItem(
                  books: state.books[i],
                ),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return Expanded(child: Center(child: Text(state.errorMessage)));
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
