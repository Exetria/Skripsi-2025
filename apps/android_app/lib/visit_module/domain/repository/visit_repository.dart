import 'package:android_app/visit_module/data/repository_impl/visit_repository_impl.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class VisitRepository {
  Future<Either<ApiException, VisitDomain?>> getVisitData({
    required DateTime date,
  });
}

final getVisitDataRepositoryProvider = Provider<VisitRepository>(
  (ref) => GetVisitDataRepositoryImpl(),
);
