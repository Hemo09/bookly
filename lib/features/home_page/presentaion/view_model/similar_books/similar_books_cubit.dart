import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchNewestSellerBooks();
    result.fold((failure) {
      emit(SimilarBooksFailuer(failure.message));
    }, (books) {
      emit(SimilarBooksSucess(books));
    });
  }
}
