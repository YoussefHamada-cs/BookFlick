import 'package:bookflick/core/data/error/failure.dart';
import 'package:bookflick/core/domain/usecase/base_use_case.dart';
import 'package:bookflick/features/books/domain/entities/book.dart';
import 'package:bookflick/features/books/domain/repo/books_repo.dart';
import 'package:dartz/dartz.dart';

class GetAllPopularBooksUseCase extends BaseUseCase<List<Book>, int> {
  final BooksRepo _booksRepo;
  GetAllPopularBooksUseCase(this._booksRepo);

  @override
  Future<Either<Failure, List<Book>>> call(int p) async {
    return await _booksRepo.getAllPopularBooks(p);
  }
}
