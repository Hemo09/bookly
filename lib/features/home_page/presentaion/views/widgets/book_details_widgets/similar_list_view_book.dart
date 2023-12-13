import 'package:bookly/constant.dart';
import 'package:bookly/features/home_page/presentaion/view_model/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home_page/presentaion/views/widgets/home_page/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utlis/app_routes.dart';

class SimilarListViewBook extends StatelessWidget {
  const SimilarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPaddingApp),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSucess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.bookModel.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 8,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        GoRouter.of(context).push(NamedRouteScreen.kBookDetails,
                            extra: state.bookModel[index]);
                      },
                      child: CustomBookImage(
                        imageUrl: state.bookModel[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            noImage,
                      ),
                    );
                  }),
            );
          } else if (state is SimilarBooksFailuer) {
            return Text(state.errorMessage);
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }
        },
      ),
    );
  }
}
