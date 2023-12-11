import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestSellerBooks() async {
    try {
      var data = await apiServices.getData(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:computer science&Sorting=newest");
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.getData(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
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
