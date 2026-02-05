import 'package:bloc_clean_architecture_template/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef ResultStream<T> = Stream<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;
