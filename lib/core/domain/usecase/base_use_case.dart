import 'package:bookflick/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

class NoParameters {}
