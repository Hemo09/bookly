import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchData(String title);
}
