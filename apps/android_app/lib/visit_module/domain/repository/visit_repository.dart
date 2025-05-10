import 'dart:io';

import 'package:android_app/visit_module/data/repository_impl/update_visit_repository_impl.dart';
import 'package:android_app/visit_module/data/repository_impl/visit_list_repository_impl.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class VisitRepository {
  Future<Either<ApiException, VisitDomain?>> getVisitList({
    required DateTime date,
  });

  Future<Either<ApiException, VisitDomain?>> createVisit({
    required DateTime date,
    required String customerId,
    required List<Value> previousVisitData,
  });

  Future<Either<ApiException, VisitDomain?>> updateVisit({
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  });
}

final getVisitListRepositoryProvider = Provider<VisitRepository>(
  (ref) => GetVisitListRepositoryImpl(),
);

final updateVisitRepositoryProvider = Provider<VisitRepository>(
  (ref) => UpdateVisitRepositoryImpl(),
);
