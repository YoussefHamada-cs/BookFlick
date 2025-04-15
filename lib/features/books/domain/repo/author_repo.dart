import 'package:bookflick/core/data/error/failure.dart';
import 'package:bookflick/features/books/domain/entities/author.dart';
import 'package:dartz/dartz.dart';

abstract class AuthorRepo {
  Future<Either<Failure, List<Author>>> getAuthorWithName(String name);
}
