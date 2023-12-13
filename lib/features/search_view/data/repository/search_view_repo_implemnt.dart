import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/search_view/data/repository/search_view_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchViewImplement implements SearchRepo {
  ApiServices apiServices;
  SearchViewImplement(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchData(String title) async {
    try {
      var data = await apiServices.getData(
          endPoint: "volumes/?Filtering=free-ebooks&q=$title");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
