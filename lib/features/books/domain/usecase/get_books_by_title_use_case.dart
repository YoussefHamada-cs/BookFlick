import 'package:bookflick/core/data/error/failure.dart';
import 'package:bookflick/core/domain/usecase/base_use_case.dart';
import 'package:bookflick/features/books/domain/entities/book.dart';
import 'package:bookflick/features/books/domain/repo/books_repo.dart';
import 'package:dartz/dartz.dart';

class GetBooksByTitleUseCase extends BaseUseCase<List<Book>, String> {
  final BooksRepo _booksRepo;
  GetBooksByTitleUseCase(this._booksRepo);

  @override
  Future<Either<Failure, List<Book>>> call(String p) async {
    return await _booksRepo.getBooksByTitle(p);
  }
}
