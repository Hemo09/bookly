import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/search_view/data/repository/search_view_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchRepo) : super(SearchCubitInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchView(String title) async {
    emit(SearchCubitLoading());
    var result = await searchRepo.fetchSearchData(title);
    result.fold((failure) {
      emit(SearchCubitFailure(failure.message));
    }, (book) {
      emit(SearchCubitSucess(book));
    });
  }
}
