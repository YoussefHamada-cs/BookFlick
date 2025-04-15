import 'package:bookflick/core/data/error/failure.dart';
import 'package:bookflick/core/domain/usecase/base_use_case.dart';
import 'package:bookflick/features/books/domain/entities/book.dart';
import 'package:bookflick/features/books/domain/repo/books_repo.dart';
import 'package:dartz/dartz.dart';

class GetAllTopRatedBooksUseCase extends BaseUseCase<List<Book>, int> {
  final BooksRepo _booksRepo;
  GetAllTopRatedBooksUseCase(this._booksRepo);

  @override
  Future<Either<Failure, List<Book>>> call(int p) async {
    return await _booksRepo.getAllTopRatedBooks(p);
  }
}
