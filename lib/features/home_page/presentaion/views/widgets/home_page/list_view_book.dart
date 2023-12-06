import 'package:bookly/features/home_page/presentaion/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListBooks extends StatelessWidget {
  const CustomListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks!.thumbnail,
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.erorrMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
