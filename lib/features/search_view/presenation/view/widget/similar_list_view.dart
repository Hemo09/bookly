import 'package:bookly/features/search_view/presenation/view/widget/list_view_search.dart';
import 'package:bookly/features/search_view/presenation/view_model/cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBestSellerListView extends StatelessWidget {
  const SimilarBestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        if (state is SearchCubitSucess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomSearchBookListViewItem(
                    books: state.bookModel[i],
                  ),
                );
              },
              itemCount: state.bookModel.length);
        } else if (state is SearchCubitFailure) {
          return Text(state.errorMessage);
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
