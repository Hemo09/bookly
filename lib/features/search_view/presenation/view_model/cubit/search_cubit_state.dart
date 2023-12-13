part of 'search_cubit_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchCubitLoading extends SearchCubitState {}

final class SearchCubitFailure extends SearchCubitState {
  final String errorMessage;

  const SearchCubitFailure(this.errorMessage);
}

final class SearchCubitSucess extends SearchCubitState {
  final List<BookModel> bookModel;

  const SearchCubitSucess(this.bookModel);
}
