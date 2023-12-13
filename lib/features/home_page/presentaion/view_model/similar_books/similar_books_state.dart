part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksSucess extends SimilarBooksState {
  final List<BookModel> bookModel;

  const SimilarBooksSucess(this.bookModel);
}

final class SimilarBooksFailuer extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksFailuer(this.errorMessage);
}

final class SimilarBooksLoading extends SimilarBooksState {}
